.class public Lorg/apache/commons/math3/dfp/Dfp;
.super Ljava/lang/Object;
.source "Dfp.java"

# interfaces
.implements Lorg/apache/commons/math3/RealFieldElement;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "Lorg/apache/commons/math3/dfp/Dfp;",
        ">;"
    }
.end annotation


# static fields
.field private static final ADD_TRAP:Ljava/lang/String; = "add"

.field private static final ALIGN_TRAP:Ljava/lang/String; = "align"

.field private static final DIVIDE_TRAP:Ljava/lang/String; = "divide"

.field public static final ERR_SCALE:I = 0x7ff8

.field public static final FINITE:B = 0x0t

.field private static final GREATER_THAN_TRAP:Ljava/lang/String; = "greaterThan"

.field public static final INFINITE:B = 0x1t

.field private static final LESS_THAN_TRAP:Ljava/lang/String; = "lessThan"

.field public static final MAX_EXP:I = 0x8000

.field public static final MIN_EXP:I = -0x7fff

.field private static final MULTIPLY_TRAP:Ljava/lang/String; = "multiply"

.field private static final NAN_STRING:Ljava/lang/String; = "NaN"

.field private static final NEG_INFINITY_STRING:Ljava/lang/String; = "-Infinity"

.field private static final NEW_INSTANCE_TRAP:Ljava/lang/String; = "newInstance"

.field private static final NEXT_AFTER_TRAP:Ljava/lang/String; = "nextAfter"

.field private static final POS_INFINITY_STRING:Ljava/lang/String; = "Infinity"

.field public static final QNAN:B = 0x3t

.field public static final RADIX:I = 0x2710

.field public static final SNAN:B = 0x2t

.field private static final SQRT_TRAP:Ljava/lang/String; = "sqrt"

.field private static final TRUNC_TRAP:Ljava/lang/String; = "trunc"


# instance fields
.field protected exp:I

.field private final field:Lorg/apache/commons/math3/dfp/DfpField;

.field protected mant:[I

.field protected nans:B

.field protected sign:B


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/dfp/Dfp;)V
    .locals 1
    .param p1, "d"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 324
    iget-object v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 325
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 326
    iget v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 327
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 328
    iget-object v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 329
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;)V
    .locals 1
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 184
    const/4 v0, 0x1

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 186
    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 187
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 188
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;B)V
    .locals 2
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # B

    .line 195
    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    .line 196
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;BB)V
    .locals 1
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "sign"    # B
    .param p3, "nans"    # B

    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 544
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 545
    iput-byte p2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 546
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 547
    iput-byte p3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 548
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;D)V
    .locals 24
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # D

    .line 257
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 261
    const/4 v2, 0x1

    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 262
    const/4 v3, 0x0

    iput v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 263
    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 264
    iput-object v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 266
    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    .line 267
    .local v4, "bits":J
    const-wide v6, 0xfffffffffffffL

    and-long v8, v4, v6

    .line 268
    .local v8, "mantissa":J
    const-wide/high16 v10, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    and-long/2addr v10, v4

    const/16 v12, 0x34

    shr-long/2addr v10, v12

    long-to-int v10, v10

    add-int/lit16 v10, v10, -0x3ff

    .line 270
    .local v10, "exponent":I
    const/16 v11, -0x3ff

    const-wide/high16 v12, -0x8000000000000000L

    const-wide/high16 v14, 0x10000000000000L

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v6

    const/4 v6, -0x1

    const-wide/16 v20, 0x0

    if-ne v10, v11, :cond_3

    .line 272
    cmpl-double v7, p2, v16

    if-nez v7, :cond_1

    .line 274
    and-long v2, v4, v12

    cmp-long v2, v2, v20

    if-eqz v2, :cond_0

    .line 275
    iput-byte v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 277
    :cond_0
    return-void

    .line 280
    :cond_1
    add-int/lit8 v10, v10, 0x1

    .line 283
    :goto_0
    and-long v22, v8, v14

    cmp-long v7, v22, v20

    if-nez v7, :cond_2

    .line 284
    add-int/lit8 v10, v10, -0x1

    .line 285
    shl-long/2addr v8, v2

    goto :goto_0

    .line 287
    :cond_2
    and-long v8, v8, v18

    .line 290
    :cond_3
    const/16 v7, 0x400

    if-ne v10, v7, :cond_6

    .line 292
    cmpl-double v3, p2, p2

    if-eqz v3, :cond_4

    .line 293
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 294
    const/4 v2, 0x3

    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_1

    .line 295
    :cond_4
    cmpg-double v3, p2, v16

    if-gez v3, :cond_5

    .line 296
    iput-byte v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 297
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    goto :goto_1

    .line 299
    :cond_5
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 300
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 302
    :goto_1
    return-void

    .line 305
    :cond_6
    new-instance v2, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v2, v1, v8, v9}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    .line 306
    .local v2, "xdfp":Lorg/apache/commons/math3/dfp/Dfp;
    new-instance v6, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v6, v1, v14, v15}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 307
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-static {v6, v10}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 309
    and-long v6, v4, v12

    cmp-long v6, v6, v20

    if-eqz v6, :cond_7

    .line 310
    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 313
    :cond_7
    iget-object v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v7, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v11

    invoke-static {v6, v3, v7, v3, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 314
    iget-byte v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 315
    iget v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 316
    iget-byte v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 318
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;I)V
    .locals 2
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # I

    .line 203
    int-to-long v0, p2

    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    .line 204
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;J)V
    .locals 10
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "x"    # J

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 214
    const/4 v0, 0x0

    iput-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 215
    iput-object p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 217
    const/4 v1, 0x0

    .line 218
    .local v1, "isLongMin":Z
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v2, p2, v2

    if-nez v2, :cond_0

    .line 221
    const/4 v1, 0x1

    .line 222
    const-wide/16 v2, 0x1

    add-long/2addr p2, v2

    .line 226
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    const/4 v5, 0x1

    if-gez v4, :cond_1

    .line 227
    const/4 v4, -0x1

    iput-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 228
    neg-long p2, p2

    goto :goto_0

    .line 230
    :cond_1
    iput-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 233
    :goto_0
    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 234
    :goto_1
    cmp-long v0, p2, v2

    if-eqz v0, :cond_2

    .line 235
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    iget v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v4, v6

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v5

    iget v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v7, v8

    iget v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    invoke-static {v0, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 236
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v4, v5

    const-wide/16 v6, 0x2710

    rem-long v8, p2, v6

    long-to-int v8, v8

    aput v8, v0, v4

    .line 237
    div-long/2addr p2, v6

    .line 238
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v0, v5

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_1

    .line 241
    :cond_2
    if-eqz v1, :cond_4

    .line 244
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    sub-int/2addr v2, v5

    if-ge v0, v2, :cond_4

    .line 245
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v2, v0

    if-eqz v2, :cond_3

    .line 246
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v3, v2, v0

    add-int/2addr v3, v5

    aput v3, v2, v0

    .line 247
    goto :goto_3

    .line 244
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 251
    .end local v0    # "i":I
    :cond_4
    :goto_3
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V
    .locals 24
    .param p1, "field"    # Lorg/apache/commons/math3/dfp/DfpField;
    .param p2, "s"    # Ljava/lang/String;

    .line 335
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 338
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    .line 339
    const/4 v2, 0x1

    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 340
    const/4 v3, 0x0

    iput v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 341
    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 342
    move-object/from16 v4, p1

    iput-object v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    .line 344
    const/4 v5, 0x0

    .line 345
    .local v5, "decimalFound":Z
    const/4 v6, 0x4

    .line 346
    .local v6, "rsize":I
    const/4 v7, 0x4

    .line 347
    .local v7, "offset":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getRadixDigits()I

    move-result v8

    const/4 v9, 0x4

    mul-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x8

    new-array v8, v8, [C

    .line 350
    .local v8, "striped":[C
    const-string v10, "Infinity"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 351
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 352
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 353
    return-void

    .line 356
    :cond_0
    const-string v10, "-Infinity"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, -0x1

    if-eqz v10, :cond_1

    .line 357
    iput-byte v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 358
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 359
    return-void

    .line 362
    :cond_1
    const-string v10, "NaN"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v12, 0x3

    if-eqz v10, :cond_2

    .line 363
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 364
    iput-byte v12, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 365
    return-void

    .line 369
    :cond_2
    const-string v10, "e"

    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 370
    .local v10, "p":I
    if-ne v10, v11, :cond_3

    .line 371
    const-string v13, "E"

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    .line 375
    :cond_3
    const/4 v13, 0x0

    .line 376
    .local v13, "sciexp":I
    const/16 v14, 0x39

    const/16 v15, 0x30

    if-eq v10, v11, :cond_8

    .line 378
    invoke-virtual {v1, v3, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    .line 379
    .local v16, "fpdecimal":Ljava/lang/String;
    move/from16 v17, v2

    add-int/lit8 v2, v10, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "fpexp":Ljava/lang/String;
    const/16 v18, 0x0

    .line 382
    .local v18, "negative":Z
    const/16 v19, 0x0

    move/from16 v23, v19

    move/from16 v19, v3

    move/from16 v3, v23

    .local v3, "i":I
    :goto_0
    move/from16 v20, v12

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v3, v12, :cond_6

    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    move/from16 v21, v9

    const/16 v9, 0x2d

    if-ne v12, v9, :cond_4

    .line 386
    const/4 v9, 0x1

    .line 387
    .end local v18    # "negative":Z
    .local v9, "negative":Z
    move/from16 v18, v9

    goto :goto_1

    .line 389
    .end local v9    # "negative":Z
    .restart local v18    # "negative":Z
    :cond_4
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-lt v9, v15, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-gt v9, v14, :cond_5

    .line 390
    mul-int/lit8 v9, v13, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v12

    add-int/2addr v9, v12

    sub-int/2addr v9, v15

    move v13, v9

    .line 382
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    move/from16 v12, v20

    move/from16 v9, v21

    goto :goto_0

    :cond_6
    move/from16 v21, v9

    .line 394
    .end local v3    # "i":I
    if-eqz v18, :cond_7

    .line 395
    neg-int v3, v13

    move v13, v3

    .line 397
    .end local v2    # "fpexp":Ljava/lang/String;
    .end local v18    # "negative":Z
    :cond_7
    move-object/from16 v2, v16

    goto :goto_2

    .line 399
    .end local v16    # "fpdecimal":Ljava/lang/String;
    :cond_8
    move/from16 v17, v2

    move/from16 v19, v3

    move/from16 v21, v9

    move/from16 v20, v12

    move-object/from16 v16, p2

    move-object/from16 v2, v16

    .line 403
    .local v2, "fpdecimal":Ljava/lang/String;
    :goto_2
    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v11, :cond_9

    .line 404
    iput-byte v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 408
    :cond_9
    const/4 v3, 0x0

    .line 411
    .end local v10    # "p":I
    .local v3, "p":I
    const/4 v9, 0x0

    .line 413
    .local v9, "decimalPos":I
    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v12, 0x31

    move/from16 v16, v11

    const/16 v11, 0x2e

    if-lt v10, v12, :cond_a

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-gt v10, v14, :cond_a

    .line 414
    goto :goto_4

    .line 417
    :cond_a
    if-eqz v5, :cond_b

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v15, :cond_b

    .line 418
    add-int/lit8 v9, v9, -0x1

    .line 421
    :cond_b
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v11, :cond_c

    .line 422
    const/4 v5, 0x1

    .line 425
    :cond_c
    add-int/lit8 v3, v3, 0x1

    .line 427
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v3, v10, :cond_1c

    .line 428
    nop

    .line 433
    :goto_4
    const/4 v10, 0x4

    .line 434
    .local v10, "q":I
    aput-char v15, v8, v19

    .line 435
    aput-char v15, v8, v17

    .line 436
    const/4 v12, 0x2

    aput-char v15, v8, v12

    .line 437
    aput-char v15, v8, v20

    .line 438
    const/4 v12, 0x0

    .line 440
    .local v12, "significantDigits":I
    :goto_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v3, v14, :cond_d

    .line 441
    goto :goto_6

    .line 445
    :cond_d
    iget-object v14, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v14, v14

    mul-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, 0x4

    add-int/lit8 v14, v14, 0x1

    if-ne v10, v14, :cond_18

    .line 446
    nop

    .line 469
    :goto_6
    if-eqz v5, :cond_f

    move/from16 v11, v21

    if-eq v10, v11, :cond_f

    .line 471
    :goto_7
    add-int/lit8 v10, v10, -0x1

    .line 472
    if-ne v10, v11, :cond_e

    .line 473
    goto :goto_8

    .line 475
    :cond_e
    aget-char v11, v8, v10

    if-ne v11, v15, :cond_f

    .line 476
    add-int/lit8 v12, v12, -0x1

    const/4 v11, 0x4

    goto :goto_7

    .line 484
    :cond_f
    :goto_8
    if-eqz v5, :cond_10

    if-nez v12, :cond_10

    .line 485
    const/4 v9, 0x0

    .line 489
    :cond_10
    if-nez v5, :cond_11

    .line 490
    add-int/lit8 v9, v10, -0x4

    .line 494
    :cond_11
    const/4 v10, 0x4

    .line 495
    add-int/lit8 v11, v12, -0x1

    const/16 v21, 0x4

    add-int/lit8 v11, v11, 0x4

    .line 497
    .end local v3    # "p":I
    .local v11, "p":I
    :goto_9
    if-le v11, v10, :cond_13

    .line 498
    aget-char v3, v8, v11

    if-eq v3, v15, :cond_12

    .line 499
    goto :goto_a

    .line 501
    :cond_12
    add-int/lit8 v11, v11, -0x1

    goto :goto_9

    .line 505
    :cond_13
    :goto_a
    rsub-int v3, v9, 0x190

    rem-int/lit8 v14, v13, 0x4

    sub-int/2addr v3, v14

    const/4 v14, 0x4

    rem-int/2addr v3, v14

    .line 506
    .local v3, "i":I
    sub-int/2addr v10, v3

    .line 507
    add-int/2addr v9, v3

    .line 510
    :goto_b
    move/from16 v22, v15

    sub-int v15, v11, v10

    move/from16 v21, v14

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v14, v14

    mul-int/lit8 v14, v14, 0x4

    if-ge v15, v14, :cond_15

    .line 511
    const/4 v3, 0x0

    :goto_c
    move/from16 v14, v21

    if-ge v3, v14, :cond_14

    .line 512
    add-int/lit8 v11, v11, 0x1

    aput-char v22, v8, v11

    .line 511
    add-int/lit8 v3, v3, 0x1

    const/16 v21, 0x4

    goto :goto_c

    :cond_14
    move/from16 v15, v22

    const/4 v14, 0x4

    goto :goto_b

    .line 518
    :cond_15
    iget-object v14, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    .end local v3    # "i":I
    .local v14, "i":I
    :goto_d
    if-ltz v14, :cond_16

    .line 519
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget-char v15, v8, v10

    add-int/lit8 v15, v15, -0x30

    mul-int/lit16 v15, v15, 0x3e8

    add-int/lit8 v16, v10, 0x1

    aget-char v16, v8, v16

    add-int/lit8 v16, v16, -0x30

    mul-int/lit8 v16, v16, 0x64

    add-int v15, v15, v16

    add-int/lit8 v16, v10, 0x2

    aget-char v16, v8, v16

    add-int/lit8 v16, v16, -0x30

    mul-int/lit8 v16, v16, 0xa

    add-int v15, v15, v16

    add-int/lit8 v16, v10, 0x3

    aget-char v16, v8, v16

    add-int/lit8 v16, v16, -0x30

    add-int v15, v15, v16

    aput v15, v3, v14

    .line 523
    add-int/lit8 v10, v10, 0x4

    .line 518
    add-int/lit8 v14, v14, -0x1

    goto :goto_d

    .line 527
    :cond_16
    add-int v3, v9, v13

    const/16 v21, 0x4

    div-int/lit8 v3, v3, 0x4

    iput v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 529
    array-length v3, v8

    if-ge v10, v3, :cond_17

    .line 531
    aget-char v3, v8, v10

    add-int/lit8 v3, v3, -0x30

    mul-int/lit16 v3, v3, 0x3e8

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    .line 534
    :cond_17
    return-void

    .line 449
    .end local v11    # "p":I
    .end local v14    # "i":I
    .local v3, "p":I
    :cond_18
    move/from16 v22, v15

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-ne v14, v11, :cond_19

    .line 450
    const/4 v5, 0x1

    .line 451
    move v9, v12

    .line 452
    add-int/lit8 v3, v3, 0x1

    .line 453
    move/from16 v15, v22

    const/16 v14, 0x39

    goto/16 :goto_5

    .line 456
    :cond_19
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    move/from16 v15, v22

    if-lt v14, v15, :cond_1b

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v11, 0x39

    if-le v14, v11, :cond_1a

    goto :goto_e

    .line 461
    :cond_1a
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    aput-char v14, v8, v10

    .line 462
    add-int/lit8 v10, v10, 0x1

    .line 463
    add-int/lit8 v3, v3, 0x1

    .line 464
    add-int/lit8 v12, v12, 0x1

    move v14, v11

    const/16 v11, 0x2e

    goto/16 :goto_5

    .line 456
    :cond_1b
    const/16 v11, 0x39

    .line 457
    :goto_e
    add-int/lit8 v3, v3, 0x1

    .line 458
    move v14, v11

    const/16 v11, 0x2e

    goto/16 :goto_5

    .line 427
    .end local v10    # "q":I
    .end local v12    # "significantDigits":I
    :cond_1c
    move v11, v14

    move/from16 v11, v16

    goto/16 :goto_3
.end method

.method private static compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I
    .locals 4
    .param p0, "a"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "b"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 948
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_0

    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v0, :cond_0

    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v0, :cond_0

    .line 950
    return v1

    .line 953
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-eq v0, v3, :cond_2

    .line 954
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 955
    return v1

    .line 957
    :cond_1
    return v2

    .line 962
    :cond_2
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v0, v2, :cond_3

    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v0, :cond_3

    .line 963
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return v0

    .line 966
    :cond_3
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v0, :cond_4

    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v0, v2, :cond_4

    .line 967
    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int v0, v0

    return v0

    .line 970
    :cond_4
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v0, v2, :cond_5

    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v0, v2, :cond_5

    .line 971
    return v1

    .line 975
    :cond_5
    iget-object v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-eqz v0, :cond_7

    .line 976
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-ge v0, v3, :cond_6

    .line 977
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int v0, v0

    return v0

    .line 980
    :cond_6
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-le v0, v3, :cond_7

    .line 981
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return v0

    .line 986
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v0, v0

    sub-int/2addr v0, v2

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_a

    .line 987
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v3, v3, v0

    if-le v2, v3, :cond_8

    .line 988
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    return v1

    .line 991
    :cond_8
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v2, v0

    iget-object v3, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_9

    .line 992
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int v1, v1

    return v1

    .line 986
    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 996
    .end local v0    # "i":I
    :cond_a
    return v1
.end method

.method public static copysign(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p0, "x"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p1, "y"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2332
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2333
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2334
    return-object v0
.end method

.method private multiplyFast(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8
    .param p1, "x"    # I

    .line 1623
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1626
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v2, 0x3

    const-string v3, "multiply"

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    .line 1627
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1628
    return-object p0

    .line 1631
    :cond_0
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_1

    if-eqz p1, :cond_1

    .line 1632
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1633
    return-object v0

    .line 1636
    :cond_1
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_2

    if-nez p1, :cond_2

    .line 1637
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1638
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1639
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1640
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v4, v3, v1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1641
    return-object v0

    .line 1646
    :cond_2
    if-ltz p1, :cond_8

    const/16 v1, 0x2710

    if-lt p1, v1, :cond_3

    goto :goto_1

    .line 1654
    :cond_3
    const/4 v1, 0x0

    .line 1655
    .local v1, "rh":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    if-ge v2, v5, :cond_4

    .line 1656
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v5, v5, v2

    mul-int/2addr v5, p1

    add-int/2addr v5, v1

    .line 1657
    .local v5, "r":I
    div-int/lit16 v1, v5, 0x2710

    .line 1658
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    mul-int/lit16 v7, v1, 0x2710

    sub-int v7, v5, v7

    aput v7, v6, v2

    .line 1655
    .end local v5    # "r":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1661
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .line 1662
    .local v2, "lostdigit":I
    const/4 v5, 0x0

    if-eqz v1, :cond_5

    .line 1663
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v6, v5

    .line 1664
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 1665
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    aput v1, v6, v7

    .line 1668
    :cond_5
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v4

    aget v4, v6, v7

    if-nez v4, :cond_6

    .line 1669
    iput v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1672
    :cond_6
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v4

    .line 1673
    .local v4, "excp":I
    if-eqz v4, :cond_7

    .line 1674
    invoke-virtual {p0, v4, v3, v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1677
    :cond_7
    return-object v0

    .line 1647
    .end local v1    # "rh":I
    .end local v2    # "lostdigit":I
    .end local v4    # "excp":I
    :cond_8
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1648
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1649
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1650
    invoke-virtual {p0, v4, v3, v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1651
    return-object v0
.end method


# virtual methods
.method public bridge synthetic abs()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->abs()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public abs()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 865
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 866
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x1

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 867
    return-object v0
.end method

.method public bridge synthetic acos()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->acos()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public acos()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2718
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->acos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic acosh()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->acosh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public acosh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2787
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic add(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->add(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public add(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "a"    # D

    .line 2525
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 17
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 1261
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    iget-object v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v3

    const/4 v4, 0x3

    const-string v5, "add"

    const/4 v6, 0x1

    if-eq v2, v3, :cond_0

    .line 1262
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1263
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1264
    .local v2, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1265
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    return-object v3

    .line 1269
    .end local v2    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v2, :cond_1

    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v2, :cond_7

    .line 1270
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1271
    return-object v0

    .line 1274
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1275
    return-object v1

    .line 1278
    :cond_3
    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v2, v6, :cond_4

    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v2, :cond_4

    .line 1279
    return-object v0

    .line 1282
    :cond_4
    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v2, v6, :cond_5

    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v2, :cond_5

    .line 1283
    return-object v1

    .line 1286
    :cond_5
    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v2, v6, :cond_6

    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v2, v6, :cond_6

    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v2, v3, :cond_6

    .line 1287
    return-object v1

    .line 1290
    :cond_6
    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v2, v6, :cond_7

    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v2, v6, :cond_7

    iget-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-eq v2, v3, :cond_7

    .line 1291
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1292
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1293
    .restart local v2    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1294
    invoke-virtual {v0, v6, v5, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1295
    return-object v2

    .line 1300
    .end local v2    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_7
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1301
    .local v2, "a":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 1304
    .local v3, "b":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1307
    .local v4, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v7, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1308
    .local v7, "asign":B
    iget-byte v8, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1310
    .local v8, "bsign":B
    iput-byte v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1311
    iput-byte v6, v3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1314
    move v9, v8

    .line 1315
    .local v9, "rsign":B
    invoke-static {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v10

    if-lez v10, :cond_8

    .line 1316
    move v9, v7

    .line 1322
    :cond_8
    iget-object v10, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v11

    sub-int/2addr v11, v6

    aget v10, v10, v11

    if-nez v10, :cond_9

    .line 1323
    iget v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v10, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1326
    :cond_9
    iget-object v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v11

    sub-int/2addr v11, v6

    aget v10, v10, v11

    if-nez v10, :cond_a

    .line 1327
    iget v10, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v10, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1331
    :cond_a
    const/4 v10, 0x0

    .line 1332
    .local v10, "aextradigit":I
    const/4 v11, 0x0

    .line 1333
    .local v11, "bextradigit":I
    iget v12, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v13, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-ge v12, v13, :cond_b

    .line 1334
    iget v12, v3, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    invoke-virtual {v2, v12}, Lorg/apache/commons/math3/dfp/Dfp;->align(I)I

    move-result v10

    goto :goto_0

    .line 1336
    :cond_b
    iget v12, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    invoke-virtual {v3, v12}, Lorg/apache/commons/math3/dfp/Dfp;->align(I)I

    move-result v11

    .line 1340
    :goto_0
    if-eq v7, v8, :cond_d

    .line 1341
    if-ne v7, v9, :cond_c

    .line 1342
    invoke-virtual {v3, v11}, Lorg/apache/commons/math3/dfp/Dfp;->complement(I)I

    move-result v11

    goto :goto_1

    .line 1344
    :cond_c
    invoke-virtual {v2, v10}, Lorg/apache/commons/math3/dfp/Dfp;->complement(I)I

    move-result v10

    .line 1349
    :cond_d
    :goto_1
    const/4 v12, 0x0

    .line 1350
    .local v12, "rh":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    iget-object v14, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v14, v14

    if-ge v13, v14, :cond_e

    .line 1351
    iget-object v14, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v14, v14, v13

    iget-object v15, v3, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v15, v15, v13

    add-int/2addr v14, v15

    add-int/2addr v14, v12

    .line 1352
    .local v14, "r":I
    div-int/lit16 v12, v14, 0x2710

    .line 1353
    iget-object v15, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move/from16 v16, v6

    mul-int/lit16 v6, v12, 0x2710

    sub-int v6, v14, v6

    aput v6, v15, v13

    .line 1350
    .end local v14    # "r":I
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v16

    goto :goto_2

    :cond_e
    move/from16 v16, v6

    .line 1355
    .end local v13    # "i":I
    iget v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1356
    iput-byte v9, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1361
    const/4 v6, 0x0

    if-eqz v12, :cond_f

    if-ne v7, v8, :cond_f

    .line 1362
    iget-object v13, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v13, v13, v6

    .line 1363
    .local v13, "lostdigit":I
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 1364
    iget-object v14, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    aput v12, v14, v15

    .line 1365
    invoke-virtual {v4, v13}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v14

    .line 1366
    .local v14, "excp":I
    if-eqz v14, :cond_f

    .line 1367
    invoke-virtual {v0, v14, v5, v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1372
    .end local v13    # "lostdigit":I
    .end local v14    # "excp":I
    :cond_f
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_3
    iget-object v14, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v14, v14

    if-ge v13, v14, :cond_12

    .line 1373
    iget-object v14, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    aget v14, v14, v15

    if-eqz v14, :cond_10

    .line 1374
    goto :goto_4

    .line 1376
    :cond_10
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    .line 1377
    if-nez v13, :cond_11

    .line 1378
    iget-object v14, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    add-int v15, v10, v11

    aput v15, v14, v6

    .line 1379
    const/4 v10, 0x0

    .line 1380
    const/4 v11, 0x0

    .line 1372
    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1385
    .end local v13    # "i":I
    :cond_12
    :goto_4
    iget-object v13, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v14, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    aget v13, v13, v14

    if-nez v13, :cond_13

    .line 1386
    iput v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1388
    if-eq v7, v8, :cond_13

    .line 1390
    move/from16 v6, v16

    iput-byte v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1395
    :cond_13
    add-int v6, v10, v11

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v6

    .line 1396
    .local v6, "excp":I
    if-eqz v6, :cond_14

    .line 1397
    invoke-virtual {v0, v6, v5, v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1400
    :cond_14
    return-object v4
.end method

.method protected align(I)I
    .locals 9
    .param p1, "e"    # I

    .line 698
    const/4 v0, 0x0

    .line 699
    .local v0, "lostdigit":I
    const/4 v1, 0x0

    .line 701
    .local v1, "inexact":Z
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v2, p1

    .line 703
    .local v2, "diff":I
    move v3, v2

    .line 704
    .local v3, "adiff":I
    if-gez v3, :cond_0

    .line 705
    neg-int v3, v3

    .line 708
    :cond_0
    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 709
    return v4

    .line 712
    :cond_1
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    const-string v6, "align"

    const/16 v7, 0x10

    if-le v3, v5, :cond_2

    .line 714
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    invoke-static {v5, v4}, Ljava/util/Arrays;->fill([II)V

    .line 715
    iput p1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 717
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v5, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 718
    invoke-virtual {p0, v7, v6, p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 720
    return v4

    .line 723
    :cond_2
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_5

    .line 724
    if-gez v2, :cond_4

    .line 729
    if-eqz v0, :cond_3

    .line 730
    const/4 v1, 0x1

    .line 733
    :cond_3
    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v0, v8, v4

    .line 735
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    goto :goto_1

    .line 737
    :cond_4
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    .line 723
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 741
    .end local v5    # "i":I
    :cond_5
    if-eqz v1, :cond_6

    .line 742
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v4, v7}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 743
    invoke-virtual {p0, v7, v6, p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 746
    :cond_6
    return v0
.end method

.method public bridge synthetic asin()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->asin()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public asin()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2725
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->asin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asinh()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->asinh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public asinh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2794
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atan()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public atan()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2732
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->atan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic atan2(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->atan2(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public atan2(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2742
    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2744
    .local v0, "r":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v1, :cond_0

    .line 2747
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 2752
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->atan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2753
    .local v1, "tmp":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gtz v2, :cond_1

    const-wide v2, -0x3ff6de04abbbd2e8L    # -3.141592653589793

    goto :goto_0

    :cond_1
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    :goto_0
    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 2754
    .local v2, "pmPi":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic atanh()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->atanh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public atanh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2801
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cbrt()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cbrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public cbrt()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2613
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->rootN(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ceil()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->ceil()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public ceil()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1025
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_CEIL:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public classify()I
    .locals 1

    .line 2322
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    return v0
.end method

.method protected complement(I)I
    .locals 5
    .param p1, "extra"    # I

    .line 1238
    rsub-int p1, p1, 0x2710

    .line 1239
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1240
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v2, v0

    rsub-int v2, v2, 0x2710

    add-int/lit8 v2, v2, -0x1

    aput v2, v1, v0

    .line 1239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1243
    .end local v0    # "i":I
    :cond_0
    div-int/lit16 v0, p1, 0x2710

    .line 1244
    .local v0, "rh":I
    mul-int/lit16 v1, v0, 0x2710

    sub-int/2addr p1, v1

    .line 1245
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 1246
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v2, v2, v1

    add-int/2addr v2, v0

    .line 1247
    .local v2, "r":I
    div-int/lit16 v0, v2, 0x2710

    .line 1248
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    mul-int/lit16 v4, v0, 0x2710

    sub-int v4, v2, v4

    aput v4, v3, v1

    .line 1245
    .end local v2    # "r":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1251
    .end local v1    # "i":I
    :cond_1
    return p1
.end method

.method public bridge synthetic copySign(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->copySign(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic copySign(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->copySign(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public copySign(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5
    .param p1, "s"    # D

    .line 2588
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    .line 2589
    .local v0, "sb":J
    iget-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const-wide/16 v3, 0x0

    if-ltz v2, :cond_0

    cmp-long v2, v0, v3

    if-gez v2, :cond_1

    :cond_0
    iget-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v2, :cond_2

    cmp-long v2, v0, v3

    if-gez v2, :cond_2

    .line 2590
    :cond_1
    return-object p0

    .line 2592
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2
.end method

.method public copySign(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "s"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2578
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_0

    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_1

    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_2

    iget-byte v0, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_2

    .line 2579
    :cond_1
    return-object p0

    .line 2581
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cos()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cos()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public cos()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2697
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->cos(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic cosh()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->cosh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public cosh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2764
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method protected dfp2sci()Ljava/lang/String;
    .locals 12

    .line 2087
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [C

    .line 2088
    .local v0, "rawdigits":[C
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x14

    new-array v1, v1, [C

    .line 2096
    .local v1, "outputbuffer":[C
    const/4 v2, 0x0

    .line 2097
    .local v2, "p":I
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x30

    if-ltz v3, :cond_0

    .line 2098
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "p":I
    .local v5, "p":I
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v6, v6, v3

    div-int/lit16 v6, v6, 0x3e8

    add-int/2addr v6, v4

    int-to-char v6, v6

    aput-char v6, v0, v2

    .line 2099
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "p":I
    .restart local v2    # "p":I
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v6, v6, v3

    div-int/lit8 v6, v6, 0x64

    rem-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v4

    int-to-char v6, v6

    aput-char v6, v0, v5

    .line 2100
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "p":I
    .restart local v5    # "p":I
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v6, v6, v3

    div-int/lit8 v6, v6, 0xa

    rem-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v4

    int-to-char v6, v6

    aput-char v6, v0, v2

    .line 2101
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "p":I
    .restart local v2    # "p":I
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v6, v6, v3

    rem-int/lit8 v6, v6, 0xa

    add-int/2addr v6, v4

    int-to-char v4, v6

    aput-char v4, v0, v5

    .line 2097
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 2105
    .end local v3    # "i":I
    :cond_0
    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2106
    aget-char v3, v0, v2

    if-eq v3, v4, :cond_1

    .line 2107
    goto :goto_2

    .line 2105
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2110
    :cond_2
    :goto_2
    move v3, v2

    .line 2113
    .local v3, "shf":I
    const/4 v5, 0x0

    .line 2114
    .local v5, "q":I
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/16 v7, 0x2d

    const/4 v8, -0x1

    if-ne v6, v8, :cond_3

    .line 2115
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "q":I
    .local v6, "q":I
    aput-char v7, v1, v5

    move v5, v6

    .line 2118
    .end local v6    # "q":I
    .restart local v5    # "q":I
    :cond_3
    array-length v6, v0

    const/4 v8, 0x0

    const/16 v9, 0x65

    const/16 v10, 0x2e

    if-eq v2, v6, :cond_9

    .line 2120
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "q":I
    .restart local v6    # "q":I
    add-int/lit8 v11, v2, 0x1

    .end local v2    # "p":I
    .local v11, "p":I
    aget-char v2, v0, v2

    aput-char v2, v1, v5

    .line 2121
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "q":I
    .local v2, "q":I
    aput-char v10, v1, v6

    .line 2123
    :goto_3
    array-length v5, v0

    if-ge v11, v5, :cond_4

    .line 2124
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "q":I
    .restart local v5    # "q":I
    add-int/lit8 v6, v11, 0x1

    .end local v11    # "p":I
    .local v6, "p":I
    aget-char v10, v0, v11

    aput-char v10, v1, v2

    move v2, v5

    move v11, v6

    goto :goto_3

    .line 2135
    .end local v5    # "q":I
    .end local v6    # "p":I
    .restart local v2    # "q":I
    .restart local v11    # "p":I
    :cond_4
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "q":I
    .restart local v5    # "q":I
    aput-char v9, v1, v2

    .line 2139
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v2, v2, 0x4

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    .line 2140
    .local v2, "e":I
    move v6, v2

    .line 2141
    .local v6, "ae":I
    if-gez v2, :cond_5

    .line 2142
    neg-int v6, v2

    .line 2146
    :cond_5
    const v9, 0x3b9aca00

    .end local v11    # "p":I
    .local v9, "p":I
    :goto_4
    if-le v9, v6, :cond_6

    div-int/lit8 v9, v9, 0xa

    goto :goto_4

    .line 2150
    :cond_6
    if-gez v2, :cond_7

    .line 2151
    add-int/lit8 v10, v5, 0x1

    .end local v5    # "q":I
    .local v10, "q":I
    aput-char v7, v1, v5

    move v5, v10

    .line 2154
    .end local v10    # "q":I
    .restart local v5    # "q":I
    :cond_7
    :goto_5
    if-lez v9, :cond_8

    .line 2155
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "q":I
    .local v7, "q":I
    div-int v10, v6, v9

    add-int/2addr v10, v4

    int-to-char v10, v10

    aput-char v10, v1, v5

    .line 2156
    rem-int/2addr v6, v9

    .line 2157
    div-int/lit8 v9, v9, 0xa

    move v5, v7

    goto :goto_5

    .line 2160
    .end local v7    # "q":I
    .restart local v5    # "q":I
    :cond_8
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1, v8, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v4

    .line 2127
    .end local v6    # "ae":I
    .end local v9    # "p":I
    .local v2, "p":I
    :cond_9
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "q":I
    .local v6, "q":I
    aput-char v4, v1, v5

    .line 2128
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "q":I
    .restart local v5    # "q":I
    aput-char v10, v1, v6

    .line 2129
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "q":I
    .restart local v6    # "q":I
    aput-char v4, v1, v5

    .line 2130
    add-int/lit8 v5, v6, 0x1

    .end local v6    # "q":I
    .restart local v5    # "q":I
    aput-char v9, v1, v6

    .line 2131
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "q":I
    .restart local v6    # "q":I
    aput-char v4, v1, v5

    .line 2132
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x5

    invoke-direct {v4, v1, v8, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method protected dfp2string()Ljava/lang/String;
    .locals 9

    .line 2168
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x14

    new-array v0, v0, [C

    .line 2169
    .local v0, "buffer":[C
    const/4 v1, 0x1

    .line 2171
    .local v1, "p":I
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2172
    .local v2, "e":I
    const/4 v3, 0x0

    .line 2174
    .local v3, "pointInserted":Z
    const/4 v4, 0x0

    const/16 v5, 0x20

    aput-char v5, v0, v4

    .line 2176
    const/16 v4, 0x2e

    const/16 v5, 0x30

    if-gtz v2, :cond_0

    .line 2177
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "p":I
    .local v6, "p":I
    aput-char v5, v0, v1

    .line 2178
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "p":I
    .restart local v1    # "p":I
    aput-char v4, v0, v6

    .line 2179
    const/4 v3, 0x1

    .line 2182
    :cond_0
    :goto_0
    if-gez v2, :cond_1

    .line 2183
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "p":I
    .restart local v6    # "p":I
    aput-char v5, v0, v1

    .line 2184
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "p":I
    .restart local v1    # "p":I
    aput-char v5, v0, v6

    .line 2185
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "p":I
    .restart local v6    # "p":I
    aput-char v5, v0, v1

    .line 2186
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "p":I
    .restart local v1    # "p":I
    aput-char v5, v0, v6

    .line 2187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2190
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_1
    if-ltz v6, :cond_3

    .line 2191
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "p":I
    .local v7, "p":I
    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v8, v6

    div-int/lit16 v8, v8, 0x3e8

    add-int/2addr v8, v5

    int-to-char v8, v8

    aput-char v8, v0, v1

    .line 2192
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "p":I
    .restart local v1    # "p":I
    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v8, v6

    div-int/lit8 v8, v8, 0x64

    rem-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v5

    int-to-char v8, v8

    aput-char v8, v0, v7

    .line 2193
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "p":I
    .restart local v7    # "p":I
    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v8, v6

    div-int/lit8 v8, v8, 0xa

    rem-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v5

    int-to-char v8, v8

    aput-char v8, v0, v1

    .line 2194
    add-int/lit8 v1, v7, 0x1

    .end local v7    # "p":I
    .restart local v1    # "p":I
    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v8, v6

    rem-int/lit8 v8, v8, 0xa

    add-int/2addr v8, v5

    int-to-char v8, v8

    aput-char v8, v0, v7

    .line 2195
    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_2

    .line 2196
    add-int/lit8 v7, v1, 0x1

    .end local v1    # "p":I
    .restart local v7    # "p":I
    aput-char v4, v0, v1

    .line 2197
    const/4 v1, 0x1

    move v3, v1

    move v1, v7

    .line 2190
    .end local v7    # "p":I
    .restart local v1    # "p":I
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 2201
    .end local v6    # "i":I
    :cond_3
    :goto_2
    if-lez v2, :cond_4

    .line 2202
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "p":I
    .local v6, "p":I
    aput-char v5, v0, v1

    .line 2203
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "p":I
    .restart local v1    # "p":I
    aput-char v5, v0, v6

    .line 2204
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "p":I
    .restart local v6    # "p":I
    aput-char v5, v0, v1

    .line 2205
    add-int/lit8 v1, v6, 0x1

    .end local v6    # "p":I
    .restart local v1    # "p":I
    aput-char v5, v0, v6

    .line 2206
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 2209
    :cond_4
    if-nez v3, :cond_5

    .line 2211
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "p":I
    .restart local v6    # "p":I
    aput-char v4, v0, v1

    move v1, v6

    .line 2215
    .end local v6    # "p":I
    .restart local v1    # "p":I
    :cond_5
    const/4 v6, 0x1

    .line 2216
    .local v6, "q":I
    :goto_3
    aget-char v7, v0, v6

    if-ne v7, v5, :cond_6

    .line 2217
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2219
    :cond_6
    aget-char v7, v0, v6

    if-ne v7, v4, :cond_7

    .line 2220
    add-int/lit8 v6, v6, -0x1

    .line 2224
    :cond_7
    :goto_4
    add-int/lit8 v4, v1, -0x1

    aget-char v4, v0, v4

    if-ne v4, v5, :cond_8

    .line 2225
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 2229
    :cond_8
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v4, :cond_9

    .line 2230
    add-int/lit8 v6, v6, -0x1

    const/16 v4, 0x2d

    aput-char v4, v0, v6

    .line 2233
    :cond_9
    new-instance v4, Ljava/lang/String;

    sub-int v5, v1, v6

    invoke-direct {v4, v0, v6, v5}, Ljava/lang/String;-><init>([CII)V

    return-object v4
.end method

.method public bridge synthetic divide(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->divide(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic divide(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public divide(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "a"    # D

    .line 2546
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public divide(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 8
    .param p1, "divisor"    # I

    .line 1902
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1903
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1904
    return-object p0

    .line 1907
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v0, v1, :cond_1

    .line 1908
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 1913
    :cond_1
    const-string v0, "divide"

    if-nez p1, :cond_2

    .line 1914
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1915
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1916
    .local v2, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1917
    iput-byte v1, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1918
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v3, v0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1919
    .end local v2    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    return-object v0

    .line 1923
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_2
    if-ltz p1, :cond_7

    const/16 v2, 0x2710

    if-lt p1, v2, :cond_3

    goto :goto_1

    .line 1931
    :cond_3
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1933
    .restart local v2    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v3, 0x0

    .line 1934
    .local v3, "rl":I
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v4, v1

    .local v4, "i":I
    :goto_0
    if-ltz v4, :cond_4

    .line 1935
    mul-int/lit16 v5, v3, 0x2710

    iget-object v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v6, v6, v4

    add-int/2addr v5, v6

    .line 1936
    .local v5, "r":I
    div-int v6, v5, p1

    .line 1937
    .local v6, "rh":I
    mul-int v7, v6, p1

    sub-int v3, v5, v7

    .line 1938
    iget-object v7, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aput v6, v7, v4

    .line 1934
    .end local v5    # "r":I
    .end local v6    # "rh":I
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 1941
    .end local v4    # "i":I
    :cond_4
    iget-object v4, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v1

    aget v1, v4, v5

    if-nez v1, :cond_5

    .line 1943
    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/Dfp;->shiftLeft()V

    .line 1944
    mul-int/lit16 v1, v3, 0x2710

    .line 1945
    .local v1, "r":I
    div-int v4, v1, p1

    .line 1946
    .local v4, "rh":I
    mul-int v5, v4, p1

    sub-int v3, v1, v5

    .line 1947
    iget-object v5, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v6, 0x0

    aput v4, v5, v6

    .line 1950
    .end local v1    # "r":I
    .end local v4    # "rh":I
    :cond_5
    mul-int/lit16 v1, v3, 0x2710

    div-int/2addr v1, p1

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v1

    .line 1951
    .local v1, "excp":I
    if-eqz v1, :cond_6

    .line 1952
    invoke-virtual {p0, v1, v0, v2, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1955
    :cond_6
    return-object v2

    .line 1924
    .end local v1    # "excp":I
    .end local v2    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v3    # "rl":I
    :cond_7
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1925
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1926
    .restart local v2    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v3, 0x3

    iput-byte v3, v2, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1927
    invoke-virtual {p0, v1, v0, v2, v2}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1928
    .end local v2    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    return-object v0
.end method

.method public divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 24
    .param p1, "divisor"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 1690
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 1693
    .local v2, "trial":I
    const/4 v3, 0x0

    .line 1697
    .local v3, "md":I
    iget-object v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v4

    iget-object v5, v1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v5}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v5

    const/4 v6, 0x3

    const-string v7, "divide"

    const/4 v8, 0x1

    if-eq v4, v5, :cond_0

    .line 1698
    iget-object v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v4, v8}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1699
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1700
    .local v4, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iput-byte v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1701
    invoke-virtual {v0, v8, v7, v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    return-object v5

    .line 1704
    .end local v4    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1707
    .restart local v4    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v5, :cond_1

    iget-byte v5, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v5, :cond_6

    .line 1708
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1709
    return-object v0

    .line 1712
    :cond_2
    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1713
    return-object v1

    .line 1716
    :cond_3
    iget-byte v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v8, :cond_4

    iget-byte v5, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v5, :cond_4

    .line 1717
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1718
    iget-byte v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v6, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v5, v6

    int-to-byte v5, v5

    iput-byte v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1719
    return-object v4

    .line 1722
    :cond_4
    iget-byte v5, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v8, :cond_5

    iget-byte v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v5, :cond_5

    .line 1723
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1724
    iget-byte v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v6, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v5, v6

    int-to-byte v5, v5

    iput-byte v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1725
    return-object v4

    .line 1728
    :cond_5
    iget-byte v5, v1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v8, :cond_6

    iget-byte v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v5, v8, :cond_6

    .line 1729
    iget-object v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1730
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1731
    iput-byte v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1732
    invoke-virtual {v0, v8, v7, v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1733
    return-object v4

    .line 1738
    :cond_6
    iget-object v5, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    sub-int/2addr v6, v8

    aget v5, v5, v6

    const/4 v6, 0x2

    if-nez v5, :cond_7

    .line 1739
    iget-object v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1740
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1741
    iget-byte v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v9, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v5, v9

    int-to-byte v5, v5

    iput-byte v5, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1742
    iput-byte v8, v4, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1743
    invoke-virtual {v0, v6, v7, v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1744
    return-object v4

    .line 1747
    :cond_7
    iget-object v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    add-int/2addr v5, v8

    new-array v5, v5, [I

    .line 1748
    .local v5, "dividend":[I
    iget-object v9, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v9, v9

    add-int/2addr v9, v6

    new-array v9, v9, [I

    .line 1749
    .local v9, "quotient":[I
    iget-object v10, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v10, v10

    add-int/2addr v10, v8

    new-array v10, v10, [I

    .line 1753
    .local v10, "remainder":[I
    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v11

    const/4 v12, 0x0

    aput v12, v5, v11

    .line 1754
    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v11

    aput v12, v9, v11

    .line 1755
    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v11

    add-int/2addr v11, v8

    aput v12, v9, v11

    .line 1756
    iget-object v11, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v11, v11

    aput v12, v10, v11

    .line 1761
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    iget-object v13, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v13, v13

    if-ge v11, v13, :cond_8

    .line 1762
    iget-object v13, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v13, v13, v11

    aput v13, v5, v11

    .line 1763
    aput v12, v9, v11

    .line 1764
    aput v12, v10, v11

    .line 1761
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1768
    .end local v11    # "i":I
    :cond_8
    const/4 v11, 0x0

    .line 1769
    .local v11, "nsqd":I
    iget-object v13, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v13, v13

    add-int/2addr v13, v8

    .local v13, "qd":I
    :goto_1
    if-ltz v13, :cond_19

    .line 1773
    iget-object v14, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v14, v14

    aget v14, v5, v14

    mul-int/lit16 v14, v14, 0x2710

    iget-object v15, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v15, v15

    sub-int/2addr v15, v8

    aget v15, v5, v15

    add-int/2addr v14, v15

    .line 1774
    .local v14, "divMsb":I
    iget-object v15, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move/from16 v16, v8

    iget-object v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v8, v15, v8

    add-int/lit8 v8, v8, 0x1

    div-int v8, v14, v8

    .line 1775
    .local v8, "min":I
    add-int/lit8 v15, v14, 0x1

    move/from16 v17, v12

    iget-object v12, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move/from16 v18, v6

    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget v6, v12, v6

    div-int/2addr v15, v6

    .line 1777
    .local v15, "max":I
    const/4 v6, 0x0

    .line 1778
    .local v6, "trialgood":Z
    :goto_2
    if-nez v6, :cond_13

    .line 1780
    add-int v12, v8, v15

    div-int/lit8 v2, v12, 0x2

    .line 1783
    const/4 v12, 0x0

    .line 1784
    .local v12, "rh":I
    const/16 v19, 0x0

    move/from16 v23, v19

    move/from16 v19, v2

    move/from16 v2, v23

    .local v2, "i":I
    .local v19, "trial":I
    :goto_3
    move/from16 v20, v3

    .end local v3    # "md":I
    .local v20, "md":I
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_a

    .line 1785
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    if-ge v2, v3, :cond_9

    iget-object v3, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v3, v3, v2

    goto :goto_4

    :cond_9
    move/from16 v3, v17

    .line 1786
    .local v3, "dm":I
    :goto_4
    mul-int v21, v3, v19

    move/from16 v22, v2

    .end local v2    # "i":I
    .local v22, "i":I
    add-int v2, v21, v12

    .line 1787
    .local v2, "r":I
    div-int/lit16 v12, v2, 0x2710

    .line 1788
    move/from16 v21, v2

    .end local v2    # "r":I
    .local v21, "r":I
    mul-int/lit16 v2, v12, 0x2710

    sub-int v2, v21, v2

    aput v2, v10, v22

    .line 1784
    .end local v3    # "dm":I
    .end local v21    # "r":I
    add-int/lit8 v2, v22, 0x1

    move/from16 v3, v20

    .end local v22    # "i":I
    .local v2, "i":I
    goto :goto_3

    :cond_a
    move/from16 v22, v2

    .line 1792
    .end local v2    # "i":I
    const/4 v2, 0x1

    .line 1793
    .end local v12    # "rh":I
    .local v2, "rh":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_5
    iget-object v12, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v12, v12

    add-int/lit8 v12, v12, 0x1

    if-ge v3, v12, :cond_b

    .line 1794
    aget v12, v10, v3

    rsub-int v12, v12, 0x270f

    aget v21, v5, v3

    add-int v12, v12, v21

    add-int/2addr v12, v2

    .line 1795
    .local v12, "r":I
    div-int/lit16 v2, v12, 0x2710

    .line 1796
    move/from16 v21, v3

    .end local v3    # "i":I
    .local v21, "i":I
    mul-int/lit16 v3, v2, 0x2710

    sub-int v3, v12, v3

    aput v3, v10, v21

    .line 1793
    .end local v12    # "r":I
    add-int/lit8 v3, v21, 0x1

    .end local v21    # "i":I
    .restart local v3    # "i":I
    goto :goto_5

    :cond_b
    move/from16 v21, v3

    .line 1800
    .end local v3    # "i":I
    if-nez v2, :cond_c

    .line 1802
    add-int/lit8 v15, v19, -0x1

    .line 1803
    move/from16 v2, v19

    move/from16 v3, v20

    goto :goto_2

    .line 1807
    :cond_c
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    aget v3, v10, v3

    mul-int/lit16 v3, v3, 0x2710

    iget-object v12, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget v12, v10, v12

    add-int/2addr v3, v12

    .line 1808
    .local v3, "minadj":I
    iget-object v12, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    move/from16 v21, v2

    .end local v2    # "rh":I
    .local v21, "rh":I
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v2, v12, v2

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v3, v2

    .line 1810
    move/from16 v12, v18

    if-lt v3, v12, :cond_d

    .line 1811
    add-int v8, v19, v3

    .line 1812
    move/from16 v18, v12

    move/from16 v2, v19

    move/from16 v3, v20

    goto/16 :goto_2

    .line 1817
    :cond_d
    const/4 v2, 0x0

    .line 1818
    .end local v6    # "trialgood":Z
    .local v2, "trialgood":Z
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    .local v6, "i":I
    :goto_6
    if-ltz v6, :cond_10

    .line 1819
    iget-object v12, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v12, v12, v6

    move/from16 v22, v2

    .end local v2    # "trialgood":Z
    .local v22, "trialgood":Z
    aget v2, v10, v6

    if-le v12, v2, :cond_e

    .line 1820
    const/4 v2, 0x1

    .end local v22    # "trialgood":Z
    .restart local v2    # "trialgood":Z
    goto :goto_7

    .line 1819
    .end local v2    # "trialgood":Z
    .restart local v22    # "trialgood":Z
    :cond_e
    move/from16 v2, v22

    .line 1822
    .end local v22    # "trialgood":Z
    .restart local v2    # "trialgood":Z
    :goto_7
    iget-object v12, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v12, v12, v6

    move/from16 v22, v2

    .end local v2    # "trialgood":Z
    .restart local v22    # "trialgood":Z
    aget v2, v10, v6

    if-ge v12, v2, :cond_f

    .line 1823
    move/from16 v2, v22

    goto :goto_8

    .line 1818
    :cond_f
    add-int/lit8 v6, v6, -0x1

    move/from16 v2, v22

    const/4 v12, 0x2

    goto :goto_6

    .end local v22    # "trialgood":Z
    .restart local v2    # "trialgood":Z
    :cond_10
    move/from16 v22, v2

    .line 1827
    .end local v6    # "i":I
    :goto_8
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    aget v6, v10, v6

    if-eqz v6, :cond_11

    .line 1828
    const/4 v2, 0x0

    move v6, v2

    goto :goto_9

    .line 1827
    :cond_11
    move v6, v2

    .line 1831
    .end local v2    # "trialgood":Z
    .local v6, "trialgood":Z
    :goto_9
    if-nez v6, :cond_12

    .line 1832
    add-int/lit8 v2, v19, 0x1

    move v8, v2

    .line 1834
    .end local v21    # "rh":I
    :cond_12
    move/from16 v2, v19

    move/from16 v3, v20

    const/16 v18, 0x2

    goto/16 :goto_2

    .line 1837
    .end local v19    # "trial":I
    .end local v20    # "md":I
    .local v2, "trial":I
    .local v3, "md":I
    :cond_13
    move/from16 v20, v3

    .end local v3    # "md":I
    .restart local v20    # "md":I
    aput v2, v9, v13

    .line 1838
    if-nez v2, :cond_14

    if-eqz v11, :cond_15

    .line 1839
    :cond_14
    add-int/lit8 v11, v11, 0x1

    .line 1842
    :cond_15
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v3

    sget-object v12, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_DOWN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    if-ne v3, v12, :cond_16

    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    if-ne v11, v3, :cond_16

    .line 1844
    goto :goto_b

    .line 1847
    :cond_16
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    if-le v11, v3, :cond_17

    .line 1849
    goto :goto_b

    .line 1853
    :cond_17
    aput v17, v5, v17

    .line 1854
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_a
    iget-object v12, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v12, v12

    if-ge v3, v12, :cond_18

    .line 1855
    add-int/lit8 v12, v3, 0x1

    aget v19, v10, v3

    aput v19, v5, v12

    .line 1854
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1769
    .end local v3    # "i":I
    .end local v8    # "min":I
    .end local v14    # "divMsb":I
    .end local v15    # "max":I
    :cond_18
    add-int/lit8 v13, v13, -0x1

    move/from16 v8, v16

    move/from16 v12, v17

    move/from16 v3, v20

    const/4 v6, 0x2

    goto/16 :goto_1

    .end local v6    # "trialgood":Z
    .end local v20    # "md":I
    .local v3, "md":I
    :cond_19
    move/from16 v20, v3

    move/from16 v16, v8

    move/from16 v17, v12

    .line 1860
    .end local v3    # "md":I
    .restart local v20    # "md":I
    :goto_b
    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    .line 1861
    .end local v20    # "md":I
    .restart local v3    # "md":I
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    .local v6, "i":I
    :goto_c
    if-ltz v6, :cond_1b

    .line 1862
    aget v8, v9, v6

    if-eqz v8, :cond_1a

    .line 1863
    move v3, v6

    .line 1864
    goto :goto_d

    .line 1861
    :cond_1a
    add-int/lit8 v6, v6, -0x1

    goto :goto_c

    .line 1869
    .end local v6    # "i":I
    :cond_1b
    :goto_d
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_e
    iget-object v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v8

    if-ge v6, v8, :cond_1c

    .line 1870
    iget-object v8, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v12, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v12, v12

    sub-int/2addr v12, v6

    add-int/lit8 v12, v12, -0x1

    sub-int v14, v3, v6

    aget v14, v9, v14

    aput v14, v8, v12

    .line 1869
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 1874
    .end local v6    # "i":I
    :cond_1c
    iget v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v8, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v6, v8

    add-int/2addr v6, v3

    iget-object v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v8

    sub-int/2addr v6, v8

    iput v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1875
    iget-byte v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v8, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v6, v8, :cond_1d

    move/from16 v6, v16

    goto :goto_f

    :cond_1d
    const/4 v6, -0x1

    :goto_f
    int-to-byte v6, v6

    iput-byte v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1877
    iget-object v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v8, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v6, v6, v8

    if-nez v6, :cond_1e

    .line 1878
    move/from16 v6, v17

    iput v6, v4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1881
    :cond_1e
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-le v3, v6, :cond_1f

    .line 1882
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    sub-int v6, v3, v6

    aget v6, v9, v6

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v6

    .local v6, "excp":I
    goto :goto_10

    .line 1884
    .end local v6    # "excp":I
    :cond_1f
    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v6

    .line 1887
    .restart local v6    # "excp":I
    :goto_10
    if-eqz v6, :cond_20

    .line 1888
    invoke-virtual {v0, v6, v7, v1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 1891
    :cond_20
    return-object v4
.end method

.method public dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7
    .param p1, "type"    # I
    .param p2, "what"    # Ljava/lang/String;
    .param p3, "oper"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "result"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2245
    move-object v0, p4

    .line 2247
    .local v0, "def":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x3

    const/4 v2, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 2296
    move-object v0, p4

    move-object v5, v0

    goto/16 :goto_2

    .line 2280
    :sswitch_0
    iget v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    add-int/2addr v1, v2

    const/16 v2, -0x7fff

    if-ge v1, v2, :cond_0

    .line 2281
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2282
    iget-byte v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    goto :goto_0

    .line 2284
    :cond_0
    invoke-virtual {p0, p4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2286
    :goto_0
    iget v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit16 v1, v1, 0x7ff8

    iput v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2287
    move-object v5, v0

    goto/16 :goto_2

    .line 2290
    :sswitch_1
    iget v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit16 v1, v1, -0x7ff8

    iput v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2291
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2292
    iget-byte v1, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2293
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2294
    move-object v5, v0

    goto/16 :goto_2

    .line 2255
    :sswitch_2
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v3, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v4, v2

    aget v3, v3, v4

    if-eqz v3, :cond_1

    .line 2257
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2258
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v4, p3, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2259
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2262
    :cond_1
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int/2addr v4, v2

    aget v3, v3, v4

    if-nez v3, :cond_2

    .line 2264
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2265
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2268
    :cond_2
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eq v3, v2, :cond_3

    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v3, v1, :cond_4

    .line 2269
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2270
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2273
    :cond_4
    iget-byte v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eq v3, v2, :cond_6

    iget-byte v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    goto :goto_1

    :cond_5
    move-object v5, v0

    goto :goto_2

    .line 2274
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2275
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    move-object v5, v0

    goto :goto_2

    .line 2249
    :sswitch_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2250
    iget-byte v2, p4, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2251
    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2252
    move-object v5, v0

    .line 2299
    .end local v0    # "def":Lorg/apache/commons/math3/dfp/Dfp;
    .local v5, "def":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_2
    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .end local p1    # "type":I
    .end local p2    # "what":Ljava/lang/String;
    .end local p3    # "oper":Lorg/apache/commons/math3/dfp/Dfp;
    .end local p4    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    .local v2, "type":I
    .local v3, "what":Ljava/lang/String;
    .local v4, "oper":Lorg/apache/commons/math3/dfp/Dfp;
    .local v6, "result":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/dfp/Dfp;->trap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x2 -> :sswitch_2
        0x4 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 906
    instance-of v0, p1, Lorg/apache/commons/math3/dfp/Dfp;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 907
    move-object v0, p1

    check-cast v0, Lorg/apache/commons/math3/dfp/Dfp;

    .line 908
    .local v0, "x":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    iget-object v3, v0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 912
    :cond_0
    invoke-static {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 909
    :cond_2
    :goto_0
    return v1

    .line 915
    .end local v0    # "x":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_3
    return v1
.end method

.method public bridge synthetic exp()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->exp()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public exp()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2650
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic expm1()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->expm1()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public expm1()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2657
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic floor()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->floor()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public floor()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1016
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_FLOOR:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getField()Lorg/apache/commons/math3/Field;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v0

    return-object v0
.end method

.method public getField()Lorg/apache/commons/math3/dfp/DfpField;
    .locals 1

    .line 636
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 657
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getRadixDigits()I
    .locals 1

    .line 643
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    return v0
.end method

.method public getReal()D
    .locals 2

    .line 2518
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public getTwo()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 664
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 650
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 5
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 782
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "greaterThan"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 783
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 784
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 785
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x3

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 786
    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 787
    return v3

    .line 791
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 797
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v0

    if-lez v0, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 792
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 793
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 794
    return v3
.end method

.method public hashCode()I
    .locals 2

    .line 925
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    shl-int/lit8 v0, v0, 0x8

    :goto_0
    add-int/lit8 v0, v0, 0x11

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic hypot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->hypot(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public hypot(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "y"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2606
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public intLog10()I
    .locals 2

    .line 1189
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 1190
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 1192
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 1193
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x2

    return v0

    .line 1195
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    const/16 v1, 0xa

    if-le v0, v1, :cond_2

    .line 1196
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x3

    return v0

    .line 1198
    :cond_2
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, -0x4

    return v0
.end method

.method public intValue()I
    .locals 5

    .line 1142
    const/4 v0, 0x0

    .line 1144
    .local v0, "result":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 1146
    .local v1, "rounded":Lorg/apache/commons/math3/dfp/Dfp;
    const v2, 0x7fffffff

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1147
    return v2

    .line 1150
    :cond_0
    const/high16 v2, -0x80000000

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1151
    return v2

    .line 1154
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    iget v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_2

    .line 1155
    mul-int/lit16 v3, v0, 0x2710

    iget-object v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v4, v4, v2

    add-int v0, v3, v4

    .line 1154
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1158
    .end local v2    # "i":I
    :cond_2
    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1159
    neg-int v0, v0

    .line 1162
    :cond_3
    return v0
.end method

.method public isInfinite()Z
    .locals 2

    .line 874
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isNaN()Z
    .locals 2

    .line 881
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

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

.method public isZero()Z
    .locals 4

    .line 889
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 891
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 892
    return v1

    .line 895
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    return v1
.end method

.method public lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 5
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 757
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "lessThan"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 758
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 759
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 760
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x3

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 761
    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 762
    return v3

    .line 766
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 772
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v0

    if-gez v0, :cond_2

    move v3, v4

    :cond_2
    return v3

    .line 767
    :cond_3
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 768
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v4, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 769
    return v3
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 97
    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 97
    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v6, p6

    check-cast v6, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v9, p9

    check-cast v9, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v0, p0

    move-wide v1, p1

    move-wide v4, p4

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;DLjava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 97
    move-object/from16 v3, p3

    check-cast v3, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v6, p6

    check-cast v6, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v9, p9

    check-cast v9, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v12, p12

    check-cast v12, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v0, p0

    move-wide v1, p1

    move-wide/from16 v4, p4

    move-wide/from16 v7, p7

    move-wide/from16 v10, p10

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p3, Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p4, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 97
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v4, p4

    check-cast v4, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v5, p5

    check-cast v5, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 97
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v3, p3

    check-cast v3, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v4, p4

    check-cast v4, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v5, p5

    check-cast v5, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v6, p6

    check-cast v6, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v7, p7

    check-cast v7, Lorg/apache/commons/math3/dfp/Dfp;

    move-object/from16 v8, p8

    check-cast v8, Lorg/apache/commons/math3/dfp/Dfp;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination([D[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 97
    check-cast p2, [Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination([D[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic linearCombination([Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 97
    check-cast p1, [Lorg/apache/commons/math3/dfp/Dfp;

    check-cast p2, [Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->linearCombination([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2845
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p7, "a3"    # D
    .param p9, "b3"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2863
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p9, p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;DLorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "a1"    # D
    .param p3, "b1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "a2"    # D
    .param p6, "b2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p7, "a3"    # D
    .param p9, "b3"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p10, "a4"    # D
    .param p12, "b4"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2879
    invoke-virtual {p3, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p6, p4, p5}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p9, p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p12, p10, p11}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "a1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "b1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p3, "a2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "b2"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2838
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "a1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "b1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p3, "a2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "b2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p5, "a3"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p6, "b3"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2854
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p5, p6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "a1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "b1"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p3, "a2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "b2"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p5, "a3"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p6, "b3"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p7, "a4"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p8, "b4"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2871
    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p3, p4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p5, p6}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p7, p8}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public linearCombination([D[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 5
    .param p1, "a"    # [D
    .param p2, "b"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2824
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 2827
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2828
    .local v0, "r":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2829
    aget-object v2, p2, v1

    aget-wide v3, p1, v1

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2828
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2831
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 2825
    .end local v0    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public linearCombination([Lorg/apache/commons/math3/dfp/Dfp;[Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4
    .param p1, "a"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .param p2, "b"    # [Lorg/apache/commons/math3/dfp/Dfp;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2809
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 2812
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2813
    .local v0, "r":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 2814
    aget-object v2, p1, v1

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2813
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2816
    .end local v1    # "i":I
    :cond_0
    return-object v0

    .line 2810
    .end local v0    # "r":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public bridge synthetic log()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public log()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2664
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public log10()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2682
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->intLog10()I

    move-result v0

    return v0
.end method

.method public log10K()I
    .locals 1

    .line 1171
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic log1p()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->log1p()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public log1p()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2671
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/dfp/DfpMath;->log(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic multiply(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic multiply(I)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

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

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public multiply(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "a"    # D

    .line 2539
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public multiply(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "x"    # I

    .line 1610
    if-ltz p1, :cond_0

    const/16 v0, 0x2710

    if-ge p1, v0, :cond_0

    .line 1611
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiplyFast(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 1613
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 10
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 1506
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const/4 v2, 0x3

    const-string v3, "multiply"

    const/4 v4, 0x1

    if-eq v0, v1, :cond_0

    .line 1507
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1508
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1509
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1510
    invoke-virtual {p0, v4, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1513
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1516
    .restart local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_1

    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v1, :cond_9

    .line 1517
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1518
    return-object p0

    .line 1521
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1522
    return-object p1

    .line 1525
    :cond_3
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_4

    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_4

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    aget v1, v1, v5

    if-eqz v1, :cond_4

    .line 1526
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1527
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1528
    return-object v0

    .line 1531
    :cond_4
    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_5

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    aget v1, v1, v5

    if-eqz v1, :cond_5

    .line 1532
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1533
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1534
    return-object v0

    .line 1537
    :cond_5
    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_6

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_6

    .line 1538
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1539
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    mul-int/2addr v1, v2

    int-to-byte v1, v1

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1540
    return-object v0

    .line 1543
    :cond_6
    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_7

    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_7

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    aget v1, v1, v5

    if-eqz v1, :cond_8

    :cond_7
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v1, v4, :cond_9

    iget-byte v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-nez v1, :cond_9

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    aget v1, v1, v5

    if-nez v1, :cond_9

    .line 1545
    :cond_8
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1546
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1547
    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 1548
    invoke-virtual {p0, v4, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1549
    return-object v0

    .line 1553
    :cond_9
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    .line 1555
    .local v1, "product":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    if-ge v2, v5, :cond_b

    .line 1556
    const/4 v5, 0x0

    .line 1557
    .local v5, "rh":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    if-ge v6, v7, :cond_a

    .line 1558
    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v7, v7, v2

    iget-object v8, p1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v8, v8, v6

    mul-int/2addr v7, v8

    .line 1559
    .local v7, "r":I
    add-int v8, v2, v6

    aget v8, v1, v8

    add-int/2addr v8, v5

    add-int/2addr v7, v8

    .line 1561
    div-int/lit16 v5, v7, 0x2710

    .line 1562
    add-int v8, v2, v6

    mul-int/lit16 v9, v5, 0x2710

    sub-int v9, v7, v9

    aput v9, v1, v8

    .line 1557
    .end local v7    # "r":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1564
    .end local v6    # "j":I
    :cond_a
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    add-int/2addr v6, v2

    aput v5, v1, v6

    .line 1555
    .end local v5    # "rh":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1568
    .end local v2    # "i":I
    :cond_b
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v2, v4

    .line 1569
    .local v2, "md":I
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v4

    .local v5, "i":I
    :goto_2
    if-ltz v5, :cond_d

    .line 1570
    aget v6, v1, v5

    if-eqz v6, :cond_c

    .line 1571
    move v2, v5

    .line 1572
    goto :goto_3

    .line 1569
    :cond_c
    add-int/lit8 v5, v5, -0x1

    goto :goto_2

    .line 1577
    .end local v5    # "i":I
    :cond_d
    :goto_3
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    if-ge v5, v6, :cond_e

    .line 1578
    iget-object v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v5

    sub-int/2addr v7, v4

    sub-int v8, v2, v5

    aget v8, v1, v8

    aput v8, v6, v7

    .line 1577
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 1582
    .end local v5    # "i":I
    :cond_e
    iget v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget v6, p1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    add-int/2addr v5, v4

    iput v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1583
    iget-byte v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iget-byte v6, p1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v5, v6, :cond_f

    move v5, v4

    goto :goto_5

    :cond_f
    const/4 v5, -0x1

    :goto_5
    int-to-byte v5, v5

    iput-byte v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1585
    iget-object v5, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    sub-int/2addr v6, v4

    aget v5, v5, v6

    const/4 v6, 0x0

    if-nez v5, :cond_10

    .line 1587
    iput v6, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1591
    :cond_10
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    if-le v2, v5, :cond_11

    .line 1592
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    sub-int v4, v2, v4

    aget v4, v1, v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v4

    .local v4, "excp":I
    goto :goto_6

    .line 1594
    .end local v4    # "excp":I
    :cond_11
    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/dfp/Dfp;->round(I)I

    move-result v4

    .line 1597
    .restart local v4    # "excp":I
    :goto_6
    if-eqz v4, :cond_12

    .line 1598
    invoke-virtual {p0, v4, v3, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1601
    :cond_12
    return-object v0
.end method

.method public bridge synthetic negate()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public negate()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 1407
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1408
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    neg-int v1, v1

    int-to-byte v1, v1

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1409
    return-object v0
.end method

.method public negativeOrNull()Z
    .locals 4

    .line 805
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 807
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 808
    return v1

    .line 811
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public newInstance()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 555
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;)V

    return-object v0
.end method

.method public newInstance(B)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "x"    # B

    .line 563
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;B)V

    return-object v0
.end method

.method public newInstance(BB)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "sig"    # B
    .param p2, "code"    # B

    .line 625
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/dfp/DfpField;->newDfp(BB)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "x"    # D

    .line 587
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;D)V

    return-object v0
.end method

.method public newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "x"    # I

    .line 571
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;I)V

    return-object v0
.end method

.method public newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "x"    # J

    .line 579
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getField()Lorg/apache/commons/math3/dfp/DfpField;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;J)V

    return-object v0
.end method

.method public newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .line 615
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-direct {v0, v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/DfpField;Ljava/lang/String;)V

    return-object v0
.end method

.method public newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3
    .param p1, "d"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 598
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 599
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 600
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 601
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v2, 0x3

    iput-byte v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 602
    const-string v2, "newInstance"

    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 605
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;-><init>(Lorg/apache/commons/math3/dfp/Dfp;)V

    return-object v0
.end method

.method public nextAfter(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 7
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2345
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v1, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v1

    const-string v2, "nextAfter"

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 2346
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2347
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2348
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v1, 0x3

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2349
    invoke-virtual {p0, v3, v2, p1, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 2353
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_0
    const/4 v0, 0x0

    .line 2354
    .local v0, "up":Z
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2355
    const/4 v0, 0x1

    .line 2358
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v1

    if-nez v1, :cond_2

    .line 2359
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 2362
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2363
    xor-int/lit8 v1, v0, 0x1

    move v0, v1

    .line 2368
    :cond_3
    if-eqz v0, :cond_5

    .line 2369
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2370
    .local v1, "inc":Lorg/apache/commons/math3/dfp/Dfp;
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    iput v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2371
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2373
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2374
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    rsub-int v4, v4, -0x7fff

    iput v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2377
    :cond_4
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .local v4, "result":Lorg/apache/commons/math3/dfp/Dfp;
    goto :goto_1

    .line 2379
    .end local v1    # "inc":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v4    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_5
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2380
    .restart local v1    # "inc":Lorg/apache/commons/math3/dfp/Dfp;
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iput v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2381
    iget-byte v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2383
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2384
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v4, v5

    iput v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_0

    .line 2386
    :cond_6
    iget v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    iput v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2389
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2390
    iget-object v4, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v4, v4

    rsub-int v4, v4, -0x7fff

    iput v4, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2393
    :cond_7
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2396
    .restart local v4    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_1
    invoke-virtual {v4}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v5

    const/16 v6, 0x10

    if-ne v5, v3, :cond_8

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->classify()I

    move-result v5

    if-eq v5, v3, :cond_8

    .line 2397
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2398
    invoke-virtual {p0, v6, v2, p1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2401
    :cond_8
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 2402
    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v3, v6}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2403
    invoke-virtual {p0, v6, v2, p1, v4}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2406
    :cond_9
    return-object v4
.end method

.method public positiveOrNull()Z
    .locals 4

    .line 835
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 837
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 838
    return v1

    .line 841
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public bridge synthetic pow(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->pow(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pow(I)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->pow(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic pow(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->pow(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public pow(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "p"    # D

    .line 2629
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "n"    # I

    .line 2636
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public pow(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "e"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2643
    invoke-static {p0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public power10(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "e"    # I

    .line 1206
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1208
    .local v0, "d":Lorg/apache/commons/math3/dfp/Dfp;
    if-ltz p1, :cond_0

    .line 1209
    div-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    goto :goto_0

    .line 1211
    :cond_0
    add-int/lit8 v1, p1, 0x1

    div-int/lit8 v1, v1, 0x4

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1214
    :goto_0
    rem-int/lit8 v1, p1, 0x4

    add-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    packed-switch v1, :pswitch_data_0

    .line 1224
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_1

    .line 1221
    :pswitch_0
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1222
    goto :goto_1

    .line 1218
    :pswitch_1
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1219
    goto :goto_1

    .line 1216
    :pswitch_2
    nop

    .line 1227
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public power10K(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "e"    # I

    .line 1179
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1180
    .local v0, "d":Lorg/apache/commons/math3/dfp/Dfp;
    add-int/lit8 v1, p1, 0x1

    iput v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 1181
    return-object v0
.end method

.method public bridge synthetic reciprocal()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->reciprocal()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public reciprocal()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1961
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic remainder(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic remainder(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public remainder(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "a"    # D

    .line 2553
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public remainder(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 3
    .param p1, "d"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 1035
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1038
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    iget-object v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    if-nez v1, :cond_0

    .line 1039
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v1, v0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1042
    :cond_0
    return-object v0
.end method

.method public bridge synthetic rint()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public rint()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 1007
    sget-object v0, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ROUND_HALF_EVEN:Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rootN(I)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->rootN(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public rootN(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2
    .param p1, "n"    # I

    .line 2620
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method protected round(I)I
    .locals 8
    .param p1, "n"    # I

    .line 1425
    const/4 v0, 0x0

    .line 1426
    .local v0, "inc":Z
    sget-object v1, Lorg/apache/commons/math3/dfp/Dfp$1;->$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode:[I

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRoundingMode()Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/16 v2, 0x1388

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v1, :pswitch_data_0

    .line 1457
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    if-eqz p1, :cond_8

    move v1, v4

    goto/16 :goto_8

    .line 1448
    :pswitch_0
    if-gt p1, v2, :cond_1

    if-ne p1, v2, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v1, v1, v3

    and-int/2addr v1, v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v4

    .line 1449
    .end local v0    # "inc":Z
    .local v1, "inc":Z
    :goto_1
    goto :goto_8

    .line 1440
    .end local v1    # "inc":Z
    .restart local v0    # "inc":Z
    :pswitch_1
    if-le p1, v2, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v3

    .line 1441
    .end local v0    # "inc":Z
    .restart local v1    # "inc":Z
    :goto_2
    goto :goto_8

    .line 1436
    .end local v1    # "inc":Z
    .restart local v0    # "inc":Z
    :pswitch_2
    if-lt p1, v2, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v3

    .line 1437
    .end local v0    # "inc":Z
    .restart local v1    # "inc":Z
    :goto_3
    goto :goto_8

    .line 1432
    .end local v1    # "inc":Z
    .restart local v0    # "inc":Z
    :pswitch_3
    if-eqz p1, :cond_4

    move v1, v4

    goto :goto_4

    :cond_4
    move v1, v3

    .line 1433
    .end local v0    # "inc":Z
    .restart local v1    # "inc":Z
    :goto_4
    goto :goto_8

    .line 1428
    .end local v1    # "inc":Z
    .restart local v0    # "inc":Z
    :pswitch_4
    const/4 v1, 0x0

    .line 1429
    .end local v0    # "inc":Z
    .restart local v1    # "inc":Z
    goto :goto_8

    .line 1444
    .end local v1    # "inc":Z
    .restart local v0    # "inc":Z
    :pswitch_5
    if-gt p1, v2, :cond_6

    if-ne p1, v2, :cond_5

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v1, v1, v3

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_5

    goto :goto_5

    :cond_5
    move v1, v3

    goto :goto_6

    :cond_6
    :goto_5
    move v1, v4

    .line 1445
    .end local v0    # "inc":Z
    .restart local v1    # "inc":Z
    :goto_6
    goto :goto_8

    .line 1452
    .end local v1    # "inc":Z
    .restart local v0    # "inc":Z
    :pswitch_6
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v1, v4, :cond_7

    if-eqz p1, :cond_7

    move v1, v4

    goto :goto_7

    :cond_7
    move v1, v3

    .line 1453
    .end local v0    # "inc":Z
    .restart local v1    # "inc":Z
    :goto_7
    goto :goto_8

    .line 1457
    .end local v1    # "inc":Z
    .restart local v0    # "inc":Z
    :cond_8
    move v1, v3

    .line 1461
    .end local v0    # "inc":Z
    .restart local v1    # "inc":Z
    :goto_8
    if-eqz v1, :cond_a

    .line 1463
    const/4 v0, 0x1

    .line 1464
    .local v0, "rh":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    if-ge v2, v5, :cond_9

    .line 1465
    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v5, v5, v2

    add-int/2addr v5, v0

    .line 1466
    .local v5, "r":I
    div-int/lit16 v0, v5, 0x2710

    .line 1467
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    mul-int/lit16 v7, v0, 0x2710

    sub-int v7, v5, v7

    aput v7, v6, v2

    .line 1464
    .end local v5    # "r":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 1470
    .end local v2    # "i":I
    :cond_9
    if-eqz v0, :cond_a

    .line 1471
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->shiftRight()V

    .line 1472
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    sub-int/2addr v5, v4

    aput v0, v2, v5

    .line 1477
    .end local v0    # "rh":I
    :cond_a
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const/16 v2, -0x7fff

    if-ge v0, v2, :cond_b

    .line 1479
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1480
    return v2

    .line 1483
    :cond_b
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const v2, 0x8000

    if-le v0, v2, :cond_c

    .line 1485
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1486
    return v2

    .line 1489
    :cond_c
    if-eqz p1, :cond_d

    .line 1491
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1492
    return v2

    .line 1495
    :cond_d
    return v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public round()J
    .locals 2

    .line 2560
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->round(D)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic scalb(I)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->scalb(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public scalb(I)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "n"    # I

    .line 2599
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method protected shiftLeft()V
    .locals 4

    .line 670
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 671
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 670
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 673
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 674
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 675
    return-void
.end method

.method protected shiftRight()V
    .locals 4

    .line 682
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 683
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    add-int/lit8 v3, v0, 0x1

    aget v2, v2, v3

    aput v2, v1, v0

    .line 682
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 685
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 686
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 687
    return-void
.end method

.method public bridge synthetic signum()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->signum()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public signum()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2567
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isZero()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2570
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 2568
    :cond_2
    :goto_1
    return-object p0
.end method

.method public bridge synthetic sin()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sin()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public sin()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2704
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->sin(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sinh()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sinh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public sinh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 2

    .line 2771
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic sqrt()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->sqrt()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 9

    .line 1971
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v2, v2

    sub-int/2addr v2, v1

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 1973
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 1976
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v2, 0x0

    const-string v3, "sqrt"

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eqz v0, :cond_3

    .line 1977
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v0, v1, :cond_1

    .line 1979
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 1982
    :cond_1
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v0, v4, :cond_2

    .line 1983
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0

    .line 1986
    :cond_2
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-ne v0, v5, :cond_3

    .line 1989
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1990
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1991
    .local v0, "result":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0, v1, v3, v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 1992
    return-object v0

    .line 1996
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_3
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v6, -0x1

    if-ne v0, v6, :cond_4

    .line 2000
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 2001
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2002
    .restart local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    iput-byte v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    .line 2003
    invoke-virtual {p0, v1, v3, v2, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2004
    return-object v0

    .line 2007
    .end local v0    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_4
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2010
    .local v0, "x":Lorg/apache/commons/math3/dfp/Dfp;
    iget v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-lt v2, v6, :cond_5

    iget v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-le v2, v1, :cond_6

    .line 2011
    :cond_5
    iget v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    div-int/2addr v2, v5

    iput v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    .line 2015
    :cond_6
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    aget v2, v2, v3

    div-int/lit16 v2, v2, 0x7d0

    packed-switch v2, :pswitch_data_0

    .line 2026
    :pswitch_0
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0xbb8

    aput v4, v2, v3

    goto :goto_0

    .line 2023
    :pswitch_1
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0x898

    aput v4, v2, v3

    .line 2024
    goto :goto_0

    .line 2020
    :pswitch_2
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    const/16 v4, 0x5dc

    aput v4, v2, v3

    .line 2021
    goto :goto_0

    .line 2017
    :pswitch_3
    iget-object v2, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v1

    iget-object v4, v0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v7, v7

    sub-int/2addr v7, v1

    aget v4, v4, v7

    div-int/2addr v4, v5

    add-int/2addr v4, v1

    aput v4, v2, v3

    .line 2018
    nop

    .line 2029
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 2034
    .local v2, "dx":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    .line 2035
    .local v3, "px":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v4

    .line 2036
    .local v4, "ppx":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_7
    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 2037
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 2038
    iput-byte v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 2039
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {v2, v7}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 2040
    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/dfp/Dfp;->divide(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 2041
    move-object v4, v3

    .line 2042
    move-object v3, v0

    .line 2043
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2045
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2047
    goto :goto_1

    .line 2052
    :cond_8
    iget-object v7, v2, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v8

    sub-int/2addr v8, v1

    aget v7, v7, v8

    if-nez v7, :cond_7

    .line 2053
    nop

    .line 2057
    :cond_9
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public strictlyNegative()Z
    .locals 4

    .line 820
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 821
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 822
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 823
    return v1

    .line 826
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public strictlyPositive()Z
    .locals 4

    .line 850
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 852
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    const-string v3, "lessThan"

    invoke-virtual {p0, v2, v3, p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    .line 853
    return v1

    .line 856
    :cond_0
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-lez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    aget v0, v0, v3

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    return v1
.end method

.method public bridge synthetic subtract(D)Ljava/lang/Object;
    .locals 0

    .line 97
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subtract(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 97
    check-cast p1, Lorg/apache/commons/math3/dfp/Dfp;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object p1

    return-object p1
.end method

.method public subtract(D)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "a"    # D

    .line 2532
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 1417
    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tan()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->tan()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public tan()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 1

    .line 2711
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->tan(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tanh()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->tanh()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    return-object v0
.end method

.method public tanh()Lorg/apache/commons/math3/dfp/Dfp;
    .locals 4

    .line 2778
    invoke-static {p0}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2779
    .local v0, "ePlus":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/dfp/DfpMath;->exp(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 2780
    .local v1, "eMinus":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    return-object v2
.end method

.method public toDouble()D
    .locals 14

    .line 2416
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isInfinite()Z

    move-result v0

    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    if-eqz v0, :cond_1

    .line 2417
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2418
    return-wide v1

    .line 2420
    :cond_0
    return-wide v3

    .line 2424
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2425
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 2428
    :cond_2
    move-object v0, p0

    .line 2429
    .local v0, "y":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v5, 0x0

    .line 2430
    .local v5, "negate":Z
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    invoke-static {p0, v6}, Lorg/apache/commons/math3/dfp/Dfp;->compare(Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)I

    move-result v6

    .line 2431
    .local v6, "cmp0":I
    const-wide/16 v7, 0x0

    if-nez v6, :cond_4

    .line 2432
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v1, :cond_3

    const-wide/high16 v7, -0x8000000000000000L

    :cond_3
    return-wide v7

    .line 2433
    :cond_4
    if-gez v6, :cond_5

    .line 2434
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->negate()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2435
    const/4 v5, 0x1

    .line 2440
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->intLog10()I

    move-result v9

    int-to-double v9, v9

    const-wide v11, 0x400a8f5c28f5c28fL    # 3.32

    mul-double/2addr v9, v11

    double-to-int v9, v9

    .line 2441
    .local v9, "exponent":I
    if-gez v9, :cond_6

    .line 2442
    add-int/lit8 v9, v9, -0x1

    .line 2445
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    invoke-static {v10, v9}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 2446
    .local v10, "tempDfp":Lorg/apache/commons/math3/dfp/Dfp;
    :goto_0
    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v11

    if-nez v11, :cond_10

    invoke-virtual {v10, v0}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_3

    .line 2450
    :cond_7
    add-int/lit8 v9, v9, -0x1

    .line 2454
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getTwo()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    invoke-static {v11, v9}, Lorg/apache/commons/math3/dfp/DfpMath;->pow(Lorg/apache/commons/math3/dfp/Dfp;I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v11

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/dfp/Dfp;->divide(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2455
    const/16 v11, -0x3ff

    if-le v9, v11, :cond_8

    .line 2456
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v12

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2459
    :cond_8
    const/16 v12, -0x432

    if-ge v9, v12, :cond_9

    .line 2460
    return-wide v7

    .line 2463
    :cond_9
    const/16 v7, 0x3ff

    if-le v9, v7, :cond_b

    .line 2464
    if-eqz v5, :cond_a

    goto :goto_1

    :cond_a
    move-wide v1, v3

    :goto_1
    return-wide v1

    .line 2468
    :cond_b
    const-wide/high16 v1, 0x10000000000000L

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(J)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->rint()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v0

    .line 2469
    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/Dfp;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2470
    .local v3, "str":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    const/4 v8, 0x0

    invoke-virtual {v3, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 2471
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    .line 2473
    .local v12, "mantissa":J
    cmp-long v1, v12, v1

    if-nez v1, :cond_c

    .line 2475
    const-wide/16 v12, 0x0

    .line 2476
    add-int/lit8 v9, v9, 0x1

    .line 2480
    :cond_c
    if-gt v9, v11, :cond_d

    .line 2481
    add-int/lit8 v9, v9, -0x1

    .line 2484
    :cond_d
    :goto_2
    if-ge v9, v11, :cond_e

    .line 2485
    add-int/lit8 v9, v9, 0x1

    .line 2486
    ushr-long/2addr v12, v7

    goto :goto_2

    .line 2489
    :cond_e
    int-to-long v1, v9

    const-wide/16 v7, 0x3ff

    add-long/2addr v1, v7

    const/16 v4, 0x34

    shl-long/2addr v1, v4

    or-long/2addr v1, v12

    .line 2490
    .local v1, "bits":J
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v7

    .line 2492
    .local v7, "x":D
    if-eqz v5, :cond_f

    .line 2493
    neg-double v7, v7

    .line 2496
    :cond_f
    return-wide v7

    .line 2447
    .end local v1    # "bits":J
    .end local v3    # "str":Ljava/lang/String;
    .end local v7    # "x":D
    .end local v12    # "mantissa":J
    :cond_10
    :goto_3
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Lorg/apache/commons/math3/dfp/Dfp;->multiply(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v10

    .line 2448
    add-int/lit8 v9, v9, 0x1

    goto :goto_0
.end method

.method public toSplitDouble()[D
    .locals 6

    .line 2505
    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 2506
    .local v0, "split":[D
    const-wide/32 v1, -0x40000000

    .line 2508
    .local v1, "mask":J
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    and-long/2addr v3, v1

    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v3

    const/4 v5, 0x0

    aput-wide v3, v0, v5

    .line 2509
    aget-wide v3, v0, v5

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(D)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/dfp/Dfp;->toDouble()D

    move-result-wide v3

    const/4 v5, 0x1

    aput-wide v3, v0, v5

    .line 2511
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 2066
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    if-eqz v0, :cond_2

    .line 2068
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2069
    iget-byte v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-gez v0, :cond_0

    const-string v0, "-Infinity"

    goto :goto_0

    :cond_0
    const-string v0, "Infinity"

    :goto_0
    return-object v0

    .line 2071
    :cond_1
    const-string v0, "NaN"

    return-object v0

    .line 2075
    :cond_2
    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v1, v1

    if-gt v0, v1, :cond_4

    iget v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const/4 v1, -0x1

    if-ge v0, v1, :cond_3

    goto :goto_1

    .line 2079
    :cond_3
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->dfp2string()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2076
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->dfp2sci()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected trap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 0
    .param p1, "type"    # I
    .param p2, "what"    # Ljava/lang/String;
    .param p3, "oper"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p4, "def"    # Lorg/apache/commons/math3/dfp/Dfp;
    .param p5, "result"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 2315
    return-object p4
.end method

.method protected trunc(Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;)Lorg/apache/commons/math3/dfp/Dfp;
    .locals 10
    .param p1, "rmode"    # Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;

    .line 1051
    const/4 v0, 0x0

    .line 1053
    .local v0, "changed":Z
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1054
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1057
    :cond_0
    iget-byte v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->nans:B

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1058
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1061
    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v3, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v3, v3

    sub-int/2addr v3, v2

    aget v1, v1, v3

    if-nez v1, :cond_2

    .line 1063
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1068
    :cond_2
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    const-string v3, "trunc"

    const/16 v4, 0x10

    if-gez v1, :cond_3

    .line 1069
    iget-object v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1070
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getZero()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 1071
    .local v1, "result":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0, v4, v3, p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 1072
    return-object v1

    .line 1079
    .end local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_3
    iget v1, p0, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    iget-object v5, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v5, v5

    if-lt v1, v5, :cond_4

    .line 1080
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    return-object v1

    .line 1086
    :cond_4
    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 1087
    .restart local v1    # "result":Lorg/apache/commons/math3/dfp/Dfp;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v6, v6

    iget v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_6

    .line 1088
    iget-object v6, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aget v6, v6, v5

    const/4 v7, 0x0

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_1

    :cond_5
    move v6, v7

    :goto_1
    or-int/2addr v0, v6

    .line 1089
    iget-object v6, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    aput v7, v6, v5

    .line 1087
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1092
    .end local v5    # "i":I
    :cond_6
    if-eqz v0, :cond_9

    .line 1093
    sget-object v5, Lorg/apache/commons/math3/dfp/Dfp$1;->$SwitchMap$org$apache$commons$math3$dfp$DfpField$RoundingMode:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/DfpField$RoundingMode;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1110
    const-string v5, "0.5"

    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Ljava/lang/String;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v5

    .line 1111
    .local v5, "half":Lorg/apache/commons/math3/dfp/Dfp;
    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->subtract(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 1112
    .local v6, "a":Lorg/apache/commons/math3/dfp/Dfp;
    iput-byte v2, v6, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1113
    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1114
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v6

    .line 1115
    iget-byte v7, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v7, v6, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1116
    invoke-virtual {v1, v6}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    goto :goto_2

    .line 1102
    .end local v5    # "half":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v6    # "a":Lorg/apache/commons/math3/dfp/Dfp;
    :pswitch_0
    iget-byte v5, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    if-ne v5, v2, :cond_8

    .line 1104
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    goto :goto_3

    .line 1095
    :pswitch_1
    iget-byte v2, v1, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    const/4 v5, -0x1

    if-ne v2, v5, :cond_8

    .line 1097
    invoke-virtual {p0, v5}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(I)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    goto :goto_3

    .line 1120
    .restart local v5    # "half":Lorg/apache/commons/math3/dfp/Dfp;
    .restart local v6    # "a":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_7
    :goto_2
    invoke-virtual {v6, v5}, Lorg/apache/commons/math3/dfp/Dfp;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    if-lez v7, :cond_8

    iget-object v7, v1, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    iget-object v8, p0, Lorg/apache/commons/math3/dfp/Dfp;->mant:[I

    array-length v8, v8

    iget v9, v1, Lorg/apache/commons/math3/dfp/Dfp;->exp:I

    sub-int/2addr v8, v9

    aget v7, v7, v8

    and-int/2addr v2, v7

    if-eqz v2, :cond_8

    .line 1121
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->getOne()Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/dfp/Dfp;->newInstance(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v2

    .line 1122
    .end local v6    # "a":Lorg/apache/commons/math3/dfp/Dfp;
    .local v2, "a":Lorg/apache/commons/math3/dfp/Dfp;
    iget-byte v6, p0, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    iput-byte v6, v2, Lorg/apache/commons/math3/dfp/Dfp;->sign:B

    .line 1123
    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/dfp/Dfp;->add(Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 1128
    .end local v2    # "a":Lorg/apache/commons/math3/dfp/Dfp;
    .end local v5    # "half":Lorg/apache/commons/math3/dfp/Dfp;
    :cond_8
    :goto_3
    iget-object v2, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/dfp/DfpField;->setIEEEFlagsBits(I)V

    .line 1129
    invoke-virtual {p0, v4, v3, p0, v1}, Lorg/apache/commons/math3/dfp/Dfp;->dotrap(ILjava/lang/String;Lorg/apache/commons/math3/dfp/Dfp;Lorg/apache/commons/math3/dfp/Dfp;)Lorg/apache/commons/math3/dfp/Dfp;

    move-result-object v1

    .line 1130
    return-object v1

    .line 1133
    :cond_9
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public unequal(Lorg/apache/commons/math3/dfp/Dfp;)Z
    .locals 3
    .param p1, "x"    # Lorg/apache/commons/math3/dfp/Dfp;

    .line 933
    invoke-virtual {p0}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lorg/apache/commons/math3/dfp/Dfp;->isNaN()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v0}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v0

    iget-object v2, p1, Lorg/apache/commons/math3/dfp/Dfp;->field:Lorg/apache/commons/math3/dfp/DfpField;

    invoke-virtual {v2}, Lorg/apache/commons/math3/dfp/DfpField;->getRadixDigits()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 937
    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->greaterThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/dfp/Dfp;->lessThan(Lorg/apache/commons/math3/dfp/Dfp;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1

    .line 934
    :cond_3
    :goto_0
    return v1
.end method
