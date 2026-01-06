.class Lorg/apache/commons/math3/linear/BiDiagonalTransformer;
.super Ljava/lang/Object;
.source "BiDiagonalTransformer.java"


# instance fields
.field private cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final householderVectors:[[D

.field private final main:[D

.field private final secondary:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 4
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 64
    .local v0, "m":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 65
    .local v1, "n":I
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    .line 66
    .local v2, "p":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    .line 67
    new-array v3, v2, [D

    iput-object v3, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    .line 68
    add-int/lit8 v3, v2, -0x1

    new-array v3, v3, [D

    iput-object v3, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    .line 69
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 70
    iput-object v3, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 71
    iput-object v3, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 74
    if-lt v0, v1, :cond_0

    .line 75
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->transformToUpperBiDiagonal()V

    goto :goto_0

    .line 77
    :cond_0
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->transformToLowerBiDiagonal()V

    .line 80
    :goto_0
    return-void
.end method

.method private transformToLowerBiDiagonal()V
    .locals 21

    .line 322
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v1, v1

    .line 323
    .local v1, "m":I
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 324
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v3, v1, :cond_c

    .line 327
    iget-object v4, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v4, v4, v3

    .line 328
    .local v4, "hK":[D
    const-wide/16 v5, 0x0

    .line 329
    .local v5, "xNormSqr":D
    move v7, v3

    .local v7, "j":I
    :goto_1
    if-ge v7, v2, :cond_0

    .line 330
    aget-wide v8, v4, v7

    .line 331
    .local v8, "c":D
    mul-double v10, v8, v8

    add-double/2addr v5, v10

    .line 329
    .end local v8    # "c":D
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 333
    .end local v7    # "j":I
    :cond_0
    aget-wide v7, v4, v3

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    neg-double v7, v7

    goto :goto_2

    :cond_1
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    .line 334
    .local v7, "a":D
    :goto_2
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    aput-wide v7, v11, v3

    .line 335
    cmpl-double v11, v7, v9

    if-eqz v11, :cond_4

    .line 336
    aget-wide v11, v4, v3

    sub-double/2addr v11, v7

    aput-wide v11, v4, v3

    .line 337
    add-int/lit8 v11, v3, 0x1

    .local v11, "i":I
    :goto_3
    if-ge v11, v1, :cond_4

    .line 338
    iget-object v12, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v12, v12, v11

    .line 339
    .local v12, "hI":[D
    const-wide/16 v13, 0x0

    .line 340
    .local v13, "alpha":D
    move v15, v3

    .local v15, "j":I
    :goto_4
    if-ge v15, v2, :cond_2

    .line 341
    aget-wide v16, v12, v15

    aget-wide v18, v4, v15

    mul-double v16, v16, v18

    sub-double v13, v13, v16

    .line 340
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 343
    .end local v15    # "j":I
    :cond_2
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v15, v15, v3

    aget-wide v15, v15, v3

    mul-double/2addr v15, v7

    div-double/2addr v13, v15

    .line 344
    move v15, v3

    .restart local v15    # "j":I
    :goto_5
    if-ge v15, v2, :cond_3

    .line 345
    aget-wide v16, v12, v15

    aget-wide v18, v4, v15

    mul-double v18, v18, v13

    sub-double v16, v16, v18

    aput-wide v16, v12, v15

    .line 344
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 337
    .end local v12    # "hI":[D
    .end local v13    # "alpha":D
    .end local v15    # "j":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 350
    .end local v11    # "i":I
    :cond_4
    add-int/lit8 v11, v1, -0x1

    if-ge v3, v11, :cond_b

    .line 352
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    add-int/lit8 v12, v3, 0x1

    aget-object v11, v11, v12

    .line 353
    .local v11, "hKp1":[D
    const-wide/16 v5, 0x0

    .line 354
    add-int/lit8 v12, v3, 0x1

    .local v12, "i":I
    :goto_6
    if-ge v12, v1, :cond_5

    .line 355
    iget-object v13, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v13, v13, v12

    aget-wide v13, v13, v3

    .line 356
    .local v13, "c":D
    mul-double v15, v13, v13

    add-double/2addr v5, v15

    .line 354
    .end local v13    # "c":D
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 358
    .end local v12    # "i":I
    :cond_5
    aget-wide v12, v11, v3

    cmpl-double v12, v12, v9

    if-lez v12, :cond_6

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    neg-double v12, v12

    goto :goto_7

    :cond_6
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v12

    .line 359
    .local v12, "b":D
    :goto_7
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    aput-wide v12, v14, v3

    .line 360
    cmpl-double v9, v12, v9

    if-eqz v9, :cond_a

    .line 361
    aget-wide v9, v11, v3

    sub-double/2addr v9, v12

    aput-wide v9, v11, v3

    .line 362
    add-int/lit8 v9, v3, 0x1

    .local v9, "j":I
    :goto_8
    if-ge v9, v2, :cond_9

    .line 363
    const-wide/16 v14, 0x0

    .line 364
    .local v14, "beta":D
    add-int/lit8 v10, v3, 0x1

    .local v10, "i":I
    :goto_9
    if-ge v10, v1, :cond_7

    .line 365
    move/from16 v16, v2

    .end local v2    # "n":I
    .local v16, "n":I
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v2, v2, v10

    .line 366
    .local v2, "hI":[D
    aget-wide v17, v2, v9

    aget-wide v19, v2, v3

    mul-double v17, v17, v19

    sub-double v14, v14, v17

    .line 364
    .end local v2    # "hI":[D
    add-int/lit8 v10, v10, 0x1

    move/from16 v2, v16

    goto :goto_9

    .end local v16    # "n":I
    .local v2, "n":I
    :cond_7
    move/from16 v16, v2

    .line 368
    .end local v2    # "n":I
    .end local v10    # "i":I
    .restart local v16    # "n":I
    aget-wide v17, v11, v3

    mul-double v17, v17, v12

    div-double v14, v14, v17

    .line 369
    add-int/lit8 v2, v3, 0x1

    .local v2, "i":I
    :goto_a
    if-ge v2, v1, :cond_8

    .line 370
    iget-object v10, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v10, v10, v2

    .line 371
    .local v10, "hI":[D
    aget-wide v17, v10, v9

    aget-wide v19, v10, v3

    mul-double v19, v19, v14

    sub-double v17, v17, v19

    aput-wide v17, v10, v9

    .line 369
    .end local v10    # "hI":[D
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 362
    .end local v2    # "i":I
    .end local v14    # "beta":D
    :cond_8
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, v16

    goto :goto_8

    .end local v16    # "n":I
    .local v2, "n":I
    :cond_9
    move/from16 v16, v2

    .end local v2    # "n":I
    .restart local v16    # "n":I
    goto :goto_b

    .line 360
    .end local v9    # "j":I
    .end local v16    # "n":I
    .restart local v2    # "n":I
    :cond_a
    move/from16 v16, v2

    .end local v2    # "n":I
    .restart local v16    # "n":I
    goto :goto_b

    .line 350
    .end local v11    # "hKp1":[D
    .end local v12    # "b":D
    .end local v16    # "n":I
    .restart local v2    # "n":I
    :cond_b
    move/from16 v16, v2

    .line 324
    .end local v2    # "n":I
    .end local v4    # "hK":[D
    .end local v5    # "xNormSqr":D
    .end local v7    # "a":D
    .restart local v16    # "n":I
    :goto_b
    add-int/lit8 v3, v3, 0x1

    move/from16 v2, v16

    goto/16 :goto_0

    .line 378
    .end local v3    # "k":I
    .end local v16    # "n":I
    .restart local v2    # "n":I
    :cond_c
    return-void
.end method

.method private transformToUpperBiDiagonal()V
    .locals 20

    .line 258
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v1, v1

    .line 259
    .local v1, "m":I
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 260
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    if-ge v3, v2, :cond_a

    .line 263
    const-wide/16 v4, 0x0

    .line 264
    .local v4, "xNormSqr":D
    move v6, v3

    .local v6, "i":I
    :goto_1
    if-ge v6, v1, :cond_0

    .line 265
    iget-object v7, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v7, v7, v6

    aget-wide v7, v7, v3

    .line 266
    .local v7, "c":D
    mul-double v9, v7, v7

    add-double/2addr v4, v9

    .line 264
    .end local v7    # "c":D
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 268
    .end local v6    # "i":I
    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v6, v6, v3

    .line 269
    .local v6, "hK":[D
    aget-wide v7, v6, v3

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    neg-double v7, v7

    goto :goto_2

    :cond_1
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    .line 270
    .local v7, "a":D
    :goto_2
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    aput-wide v7, v11, v3

    .line 271
    cmpl-double v11, v7, v9

    if-eqz v11, :cond_4

    .line 272
    aget-wide v11, v6, v3

    sub-double/2addr v11, v7

    aput-wide v11, v6, v3

    .line 273
    add-int/lit8 v11, v3, 0x1

    .local v11, "j":I
    :goto_3
    if-ge v11, v2, :cond_4

    .line 274
    const-wide/16 v12, 0x0

    .line 275
    .local v12, "alpha":D
    move v14, v3

    .local v14, "i":I
    :goto_4
    if-ge v14, v1, :cond_2

    .line 276
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v15, v15, v14

    .line 277
    .local v15, "hI":[D
    aget-wide v16, v15, v11

    aget-wide v18, v15, v3

    mul-double v16, v16, v18

    sub-double v12, v12, v16

    .line 275
    .end local v15    # "hI":[D
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 279
    .end local v14    # "i":I
    :cond_2
    iget-object v14, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v14, v14, v3

    aget-wide v14, v14, v3

    mul-double/2addr v14, v7

    div-double/2addr v12, v14

    .line 280
    move v14, v3

    .restart local v14    # "i":I
    :goto_5
    if-ge v14, v1, :cond_3

    .line 281
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v15, v15, v14

    .line 282
    .restart local v15    # "hI":[D
    aget-wide v16, v15, v11

    aget-wide v18, v15, v3

    mul-double v18, v18, v12

    sub-double v16, v16, v18

    aput-wide v16, v15, v11

    .line 280
    .end local v15    # "hI":[D
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 273
    .end local v12    # "alpha":D
    .end local v14    # "i":I
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 287
    .end local v11    # "j":I
    :cond_4
    add-int/lit8 v11, v2, -0x1

    if-ge v3, v11, :cond_9

    .line 289
    const-wide/16 v4, 0x0

    .line 290
    add-int/lit8 v11, v3, 0x1

    .restart local v11    # "j":I
    :goto_6
    if-ge v11, v2, :cond_5

    .line 291
    aget-wide v12, v6, v11

    .line 292
    .local v12, "c":D
    mul-double v14, v12, v12

    add-double/2addr v4, v14

    .line 290
    .end local v12    # "c":D
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 294
    .end local v11    # "j":I
    :cond_5
    add-int/lit8 v11, v3, 0x1

    aget-wide v11, v6, v11

    cmpl-double v11, v11, v9

    if-lez v11, :cond_6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    neg-double v11, v11

    goto :goto_7

    :cond_6
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    .line 295
    .local v11, "b":D
    :goto_7
    iget-object v13, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    aput-wide v11, v13, v3

    .line 296
    cmpl-double v9, v11, v9

    if-eqz v9, :cond_9

    .line 297
    add-int/lit8 v9, v3, 0x1

    aget-wide v13, v6, v9

    sub-double/2addr v13, v11

    aput-wide v13, v6, v9

    .line 298
    add-int/lit8 v9, v3, 0x1

    .local v9, "i":I
    :goto_8
    if-ge v9, v1, :cond_9

    .line 299
    iget-object v10, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v10, v10, v9

    .line 300
    .local v10, "hI":[D
    const-wide/16 v13, 0x0

    .line 301
    .local v13, "beta":D
    add-int/lit8 v15, v3, 0x1

    .local v15, "j":I
    :goto_9
    if-ge v15, v2, :cond_7

    .line 302
    aget-wide v16, v10, v15

    aget-wide v18, v6, v15

    mul-double v16, v16, v18

    sub-double v13, v13, v16

    .line 301
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 304
    .end local v15    # "j":I
    :cond_7
    add-int/lit8 v15, v3, 0x1

    aget-wide v15, v6, v15

    mul-double/2addr v15, v11

    div-double/2addr v13, v15

    .line 305
    add-int/lit8 v15, v3, 0x1

    .restart local v15    # "j":I
    :goto_a
    if-ge v15, v2, :cond_8

    .line 306
    aget-wide v16, v10, v15

    aget-wide v18, v6, v15

    mul-double v18, v18, v13

    sub-double v16, v16, v18

    aput-wide v16, v10, v15

    .line 305
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 298
    .end local v10    # "hI":[D
    .end local v13    # "beta":D
    .end local v15    # "j":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 260
    .end local v4    # "xNormSqr":D
    .end local v6    # "hK":[D
    .end local v7    # "a":D
    .end local v9    # "i":I
    .end local v11    # "b":D
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 313
    .end local v3    # "k":I
    :cond_a
    return-void
.end method


# virtual methods
.method public getB()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 9

    .line 138
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_3

    .line 140
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v0, v0

    .line 141
    .local v0, "m":I
    iget-object v1, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    .line 142
    .local v1, "n":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    aput v0, v3, v2

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 143
    .local v2, "ba":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 144
    aget-object v5, v2, v3

    iget-object v6, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    aget-wide v6, v6, v3

    aput-wide v6, v5, v3

    .line 145
    if-ge v0, v1, :cond_0

    .line 146
    if-lez v3, :cond_1

    .line 147
    aget-object v5, v2, v3

    add-int/lit8 v6, v3, -0x1

    iget-object v7, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    add-int/lit8 v8, v3, -0x1

    aget-wide v7, v7, v8

    aput-wide v7, v5, v6

    goto :goto_1

    .line 150
    :cond_0
    iget-object v5, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    array-length v5, v5

    sub-int/2addr v5, v4

    if-ge v3, v5, :cond_1

    .line 151
    aget-object v5, v2, v3

    add-int/lit8 v6, v3, 0x1

    iget-object v7, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    aget-wide v7, v7, v3

    aput-wide v7, v5, v6

    .line 143
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 155
    .end local v3    # "i":I
    :cond_2
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 159
    .end local v0    # "m":I
    .end local v1    # "n":I
    .end local v2    # "ba":[[D
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedB:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method getHouseholderVectorsRef()[[D
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    return-object v0
.end method

.method getMainDiagonalRef()[D
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    return-object v0
.end method

.method getSecondaryDiagonalRef()[D
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    return-object v0
.end method

.method public getU()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 24

    .line 89
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_9

    .line 91
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v1, v1

    .line 92
    .local v1, "m":I
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 93
    .local v2, "n":I
    iget-object v4, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    array-length v4, v4

    .line 94
    .local v4, "p":I
    const/4 v5, 0x1

    if-lt v1, v2, :cond_0

    move v6, v3

    goto :goto_0

    :cond_0
    move v6, v5

    .line 95
    .local v6, "diagOffset":I
    :goto_0
    if-lt v1, v2, :cond_1

    iget-object v7, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    .line 96
    .local v7, "diagonal":[D
    :goto_1
    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v1, v8, v5

    aput v1, v8, v3

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 99
    .local v5, "ua":[[D
    add-int/lit8 v8, v1, -0x1

    .local v8, "k":I
    :goto_2
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-lt v8, v4, :cond_2

    .line 100
    aget-object v11, v5, v8

    aput-wide v9, v11, v8

    .line 99
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 104
    .end local v8    # "k":I
    :cond_2
    add-int/lit8 v8, v4, -0x1

    .restart local v8    # "k":I
    :goto_3
    if-lt v8, v6, :cond_7

    .line 105
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v11, v11, v8

    .line 106
    .local v11, "hK":[D
    aget-object v12, v5, v8

    aput-wide v9, v12, v8

    .line 107
    sub-int v12, v8, v6

    aget-wide v12, v11, v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_6

    .line 108
    move v12, v8

    .local v12, "j":I
    :goto_4
    if-ge v12, v1, :cond_5

    .line 109
    const-wide/16 v13, 0x0

    .line 110
    .local v13, "alpha":D
    move v15, v8

    .local v15, "i":I
    :goto_5
    if-ge v15, v1, :cond_3

    .line 111
    aget-object v16, v5, v15

    aget-wide v16, v16, v12

    move/from16 v18, v3

    iget-object v3, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v3, v3, v15

    sub-int v19, v8, v6

    aget-wide v19, v3, v19

    mul-double v16, v16, v19

    sub-double v13, v13, v16

    .line 110
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v18

    goto :goto_5

    :cond_3
    move/from16 v18, v3

    .line 113
    .end local v15    # "i":I
    sub-int v3, v8, v6

    aget-wide v15, v7, v3

    sub-int v3, v8, v6

    aget-wide v19, v11, v3

    mul-double v15, v15, v19

    div-double/2addr v13, v15

    .line 115
    move v3, v8

    .local v3, "i":I
    :goto_6
    if-ge v3, v1, :cond_4

    .line 116
    aget-object v15, v5, v3

    aget-wide v16, v15, v12

    move-wide/from16 v19, v9

    neg-double v9, v13

    move/from16 v21, v1

    .end local v1    # "m":I
    .local v21, "m":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    aget-object v1, v1, v3

    sub-int v22, v8, v6

    aget-wide v22, v1, v22

    mul-double v9, v9, v22

    add-double v16, v16, v9

    aput-wide v16, v15, v12

    .line 115
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v9, v19

    move/from16 v1, v21

    goto :goto_6

    .end local v21    # "m":I
    .restart local v1    # "m":I
    :cond_4
    move/from16 v21, v1

    move-wide/from16 v19, v9

    .line 108
    .end local v1    # "m":I
    .end local v3    # "i":I
    .end local v13    # "alpha":D
    .restart local v21    # "m":I
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v18

    goto :goto_4

    .end local v21    # "m":I
    .restart local v1    # "m":I
    :cond_5
    move/from16 v21, v1

    move/from16 v18, v3

    move-wide/from16 v19, v9

    .end local v1    # "m":I
    .restart local v21    # "m":I
    goto :goto_7

    .line 107
    .end local v12    # "j":I
    .end local v21    # "m":I
    .restart local v1    # "m":I
    :cond_6
    move/from16 v21, v1

    move/from16 v18, v3

    move-wide/from16 v19, v9

    .line 104
    .end local v1    # "m":I
    .end local v11    # "hK":[D
    .restart local v21    # "m":I
    :goto_7
    add-int/lit8 v8, v8, -0x1

    move/from16 v3, v18

    move-wide/from16 v9, v19

    move/from16 v1, v21

    goto :goto_3

    .end local v21    # "m":I
    .restart local v1    # "m":I
    :cond_7
    move/from16 v21, v1

    move/from16 v18, v3

    move-wide/from16 v19, v9

    .line 121
    .end local v1    # "m":I
    .end local v8    # "k":I
    .restart local v21    # "m":I
    if-lez v6, :cond_8

    .line 122
    aget-object v1, v5, v18

    aput-wide v19, v1, v18

    .line 124
    :cond_8
    invoke-static {v5}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 128
    .end local v2    # "n":I
    .end local v4    # "p":I
    .end local v5    # "ua":[[D
    .end local v6    # "diagOffset":I
    .end local v7    # "diagonal":[D
    .end local v21    # "m":I
    :cond_9
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedU:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v1
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 23

    .line 170
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_9

    .line 172
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v1, v1

    .line 173
    .local v1, "m":I
    iget-object v2, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    array-length v2, v2

    .line 174
    .local v2, "n":I
    iget-object v4, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    array-length v4, v4

    .line 175
    .local v4, "p":I
    const/4 v5, 0x1

    if-lt v1, v2, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v3

    .line 176
    .local v6, "diagOffset":I
    :goto_0
    if-lt v1, v2, :cond_1

    iget-object v7, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->secondary:[D

    goto :goto_1

    :cond_1
    iget-object v7, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->main:[D

    .line 177
    .local v7, "diagonal":[D
    :goto_1
    const/4 v8, 0x2

    new-array v8, v8, [I

    aput v2, v8, v5

    aput v2, v8, v3

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 180
    .local v5, "va":[[D
    add-int/lit8 v8, v2, -0x1

    .local v8, "k":I
    :goto_2
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-lt v8, v4, :cond_2

    .line 181
    aget-object v11, v5, v8

    aput-wide v9, v11, v8

    .line 180
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 185
    .end local v8    # "k":I
    :cond_2
    add-int/lit8 v8, v4, -0x1

    .restart local v8    # "k":I
    :goto_3
    if-lt v8, v6, :cond_7

    .line 186
    iget-object v11, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    sub-int v12, v8, v6

    aget-object v11, v11, v12

    .line 187
    .local v11, "hK":[D
    aget-object v12, v5, v8

    aput-wide v9, v12, v8

    .line 188
    aget-wide v12, v11, v8

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_6

    .line 189
    move v12, v8

    .local v12, "j":I
    :goto_4
    if-ge v12, v2, :cond_5

    .line 190
    const-wide/16 v13, 0x0

    .line 191
    .local v13, "beta":D
    move v15, v8

    .local v15, "i":I
    :goto_5
    if-ge v15, v2, :cond_3

    .line 192
    aget-object v16, v5, v15

    aget-wide v16, v16, v12

    aget-wide v18, v11, v15

    mul-double v16, v16, v18

    sub-double v13, v13, v16

    .line 191
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 194
    .end local v15    # "i":I
    :cond_3
    sub-int v15, v8, v6

    aget-wide v15, v7, v15

    aget-wide v17, v11, v8

    mul-double v15, v15, v17

    div-double/2addr v13, v15

    .line 196
    move v15, v8

    .restart local v15    # "i":I
    :goto_6
    if-ge v15, v2, :cond_4

    .line 197
    aget-object v16, v5, v15

    aget-wide v17, v16, v12

    move/from16 v19, v3

    move/from16 v20, v4

    .end local v4    # "p":I
    .local v20, "p":I
    neg-double v3, v13

    aget-wide v21, v11, v15

    mul-double v3, v3, v21

    add-double v17, v17, v3

    aput-wide v17, v16, v12

    .line 196
    add-int/lit8 v15, v15, 0x1

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_6

    .end local v20    # "p":I
    .restart local v4    # "p":I
    :cond_4
    move/from16 v19, v3

    move/from16 v20, v4

    .line 189
    .end local v4    # "p":I
    .end local v13    # "beta":D
    .end local v15    # "i":I
    .restart local v20    # "p":I
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .end local v20    # "p":I
    .restart local v4    # "p":I
    :cond_5
    move/from16 v19, v3

    move/from16 v20, v4

    .end local v4    # "p":I
    .restart local v20    # "p":I
    goto :goto_7

    .line 188
    .end local v12    # "j":I
    .end local v20    # "p":I
    .restart local v4    # "p":I
    :cond_6
    move/from16 v19, v3

    move/from16 v20, v4

    .line 185
    .end local v4    # "p":I
    .end local v11    # "hK":[D
    .restart local v20    # "p":I
    :goto_7
    add-int/lit8 v8, v8, -0x1

    move/from16 v3, v19

    move/from16 v4, v20

    goto :goto_3

    .end local v20    # "p":I
    .restart local v4    # "p":I
    :cond_7
    move/from16 v19, v3

    move/from16 v20, v4

    .line 202
    .end local v4    # "p":I
    .end local v8    # "k":I
    .restart local v20    # "p":I
    if-lez v6, :cond_8

    .line 203
    aget-object v3, v5, v19

    aput-wide v9, v3, v19

    .line 205
    :cond_8
    invoke-static {v5}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 209
    .end local v1    # "m":I
    .end local v2    # "n":I
    .end local v5    # "va":[[D
    .end local v6    # "diagOffset":I
    .end local v7    # "diagonal":[D
    .end local v20    # "p":I
    :cond_9
    iget-object v1, v0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->cachedV:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v1
.end method

.method isUpperBiDiagonal()Z
    .locals 3

    .line 248
    iget-object v0, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/BiDiagonalTransformer;->householderVectors:[[D

    const/4 v2, 0x0

    aget-object v1, v1, v2

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
