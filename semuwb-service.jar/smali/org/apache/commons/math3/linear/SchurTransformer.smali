.class Lorg/apache/commons/math3/linear/SchurTransformer;
.super Ljava/lang/Object;
.source "SchurTransformer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;
    }
.end annotation


# static fields
.field private static final MAX_ITERATIONS:I = 0x64


# instance fields
.field private cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

.field private cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final epsilon:D

.field private final matrixP:[[D

.field private final matrixT:[[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 3
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    iput-wide v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    .line 69
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    new-instance v0, Lorg/apache/commons/math3/linear/HessenbergTransformer;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/HessenbergTransformer;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 75
    .local v0, "transformer":Lorg/apache/commons/math3/linear/HessenbergTransformer;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->getH()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    .line 76
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/HessenbergTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 78
    iput-object v1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 79
    iput-object v1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 82
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SchurTransformer;->transform()V

    .line 83
    return-void

    .line 70
    .end local v0    # "transformer":Lorg/apache/commons/math3/linear/HessenbergTransformer;
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0
.end method

.method private computeShift(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;)V
    .locals 17
    .param p1, "l"    # I
    .param p2, "idx"    # I
    .param p3, "iteration"    # I
    .param p4, "shift"    # Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;

    .line 266
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v1

    aget-wide v4, v4, v1

    iput-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 267
    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    iput-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    .line 268
    move/from16 v6, p1

    if-ge v6, v1, :cond_0

    .line 269
    iget-object v7, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v8, v1, -0x1

    aget-object v7, v7, v8

    add-int/lit8 v8, v1, -0x1

    aget-wide v7, v7, v8

    iput-wide v7, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    .line 270
    iget-object v7, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v7, v7, v1

    add-int/lit8 v8, v1, -0x1

    aget-wide v7, v7, v8

    iget-object v9, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    aget-wide v9, v9, v1

    mul-double/2addr v7, v9

    iput-wide v7, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    .line 274
    :cond_0
    const/16 v7, 0xa

    if-ne v2, v7, :cond_2

    .line 275
    iget-wide v7, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    iget-wide v9, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    add-double/2addr v7, v9

    iput-wide v7, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    .line 276
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-gt v7, v1, :cond_1

    .line 277
    iget-object v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v8, v8, v7

    aget-wide v9, v8, v7

    iget-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v9, v11

    aput-wide v9, v8, v7

    .line 276
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 279
    .end local v7    # "i":I
    :cond_1
    iget-object v7, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v7, v7, v1

    add-int/lit8 v8, v1, -0x1

    aget-wide v7, v7, v8

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    iget-object v9, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v10, v1, -0x1

    aget-object v9, v9, v10

    add-int/lit8 v10, v1, -0x2

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    .line 280
    .local v7, "s":D
    const-wide/high16 v9, 0x3fe8000000000000L    # 0.75

    mul-double v11, v7, v9

    iput-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 281
    mul-double/2addr v9, v7

    iput-wide v9, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    .line 282
    const-wide/high16 v9, -0x4024000000000000L    # -0.4375

    mul-double/2addr v9, v7

    mul-double/2addr v9, v7

    iput-wide v9, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    .line 286
    .end local v7    # "s":D
    :cond_2
    const/16 v7, 0x1e

    if-ne v2, v7, :cond_5

    .line 287
    iget-wide v7, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    iget-wide v9, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v7, v9

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    div-double/2addr v7, v9

    .line 288
    .restart local v7    # "s":D
    mul-double v11, v7, v7

    iget-wide v13, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    add-double/2addr v11, v13

    .line 289
    .end local v7    # "s":D
    .local v11, "s":D
    cmpl-double v4, v11, v4

    if-lez v4, :cond_5

    .line 290
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    .line 291
    .end local v11    # "s":D
    .local v4, "s":D
    iget-wide v7, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    iget-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    cmpg-double v7, v7, v11

    if-gez v7, :cond_3

    .line 292
    neg-double v4, v4

    .line 294
    :cond_3
    iget-wide v7, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    iget-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    iget-wide v13, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    move-wide v15, v9

    iget-wide v9, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v13, v9

    div-double/2addr v13, v15

    add-double/2addr v13, v4

    div-double/2addr v11, v13

    sub-double/2addr v7, v11

    .line 295
    .end local v4    # "s":D
    .restart local v7    # "s":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-gt v4, v1, :cond_4

    .line 296
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v4

    aget-wide v9, v5, v4

    sub-double/2addr v9, v7

    aput-wide v9, v5, v4

    .line 295
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 298
    .end local v4    # "i":I
    :cond_4
    iget-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double/2addr v4, v7

    iput-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    .line 299
    const-wide v4, 0x3feed916872b020cL    # 0.964

    iput-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    iput-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    iput-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 302
    .end local v7    # "s":D
    :cond_5
    return-void
.end method

.method private findSmallSubDiagonalElement(ID)I
    .locals 7
    .param p1, "startIdx"    # I
    .param p2, "norm"    # D

    .line 242
    move v0, p1

    .line 243
    .local v0, "l":I
    :goto_0
    if-lez v0, :cond_2

    .line 244
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    add-int/lit8 v2, v0, -0x1

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v3, v3, v0

    aget-wide v3, v3, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 245
    .local v1, "s":D
    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    .line 246
    move-wide v1, p2

    .line 248
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v3, v3, v0

    add-int/lit8 v4, v0, -0x1

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    mul-double/2addr v5, v1

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 249
    goto :goto_1

    .line 251
    :cond_1
    nop

    .end local v1    # "s":D
    add-int/lit8 v0, v0, -0x1

    .line 252
    goto :goto_0

    .line 253
    :cond_2
    :goto_1
    return v0
.end method

.method private getNorm()D
    .locals 6

    .line 224
    const-wide/16 v0, 0x0

    .line 225
    .local v0, "norm":D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 227
    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    .local v3, "j":I
    :goto_1
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 228
    iget-object v4, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v2

    aget-wide v4, v4, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v0, v4

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 225
    .end local v3    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_1
    return-wide v0
.end method

.method private initQRStep(IILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)I
    .locals 18
    .param p1, "il"    # I
    .param p2, "iu"    # I
    .param p3, "shift"    # Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;
    .param p4, "hVec"    # [D

    .line 315
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    add-int/lit8 v3, p2, -0x2

    .line 316
    .local v3, "im":I
    :goto_0
    if-lt v3, v1, :cond_2

    .line 317
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v3

    .line 318
    .local v4, "z":D
    iget-wide v6, v2, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    sub-double/2addr v6, v4

    .line 319
    .local v6, "r":D
    iget-wide v8, v2, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    sub-double/2addr v8, v4

    .line 320
    .local v8, "s":D
    mul-double v10, v6, v8

    iget-wide v12, v2, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->w:D

    sub-double/2addr v10, v12

    iget-object v12, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v13, v3, 0x1

    aget-object v12, v12, v13

    aget-wide v12, v12, v3

    div-double/2addr v10, v12

    iget-object v12, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v12, v12, v3

    add-int/lit8 v13, v3, 0x1

    aget-wide v12, v12, v13

    add-double/2addr v10, v12

    const/4 v12, 0x0

    aput-wide v10, p4, v12

    .line 321
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v11, v3, 0x1

    aget-object v10, v10, v11

    add-int/lit8 v11, v3, 0x1

    aget-wide v10, v10, v11

    sub-double/2addr v10, v4

    sub-double/2addr v10, v6

    sub-double/2addr v10, v8

    const/4 v13, 0x1

    aput-wide v10, p4, v13

    .line 322
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v11, v3, 0x2

    aget-object v10, v10, v11

    add-int/lit8 v11, v3, 0x1

    aget-wide v10, v10, v11

    const/4 v14, 0x2

    aput-wide v10, p4, v14

    .line 324
    if-ne v3, v1, :cond_0

    .line 325
    goto :goto_1

    .line 328
    :cond_0
    iget-object v10, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v10, v10, v3

    add-int/lit8 v11, v3, -0x1

    aget-wide v10, v10, v11

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    aget-wide v15, p4, v13

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    aget-wide v13, p4, v14

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    add-double/2addr v15, v13

    mul-double/2addr v10, v15

    .line 329
    .local v10, "lhs":D
    aget-wide v12, p4, v12

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    iget-object v14, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v15, v3, -0x1

    aget-object v14, v14, v15

    add-int/lit8 v15, v3, -0x1

    aget-wide v14, v14, v15

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    add-double v14, v14, v16

    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v16, v3, 0x1

    aget-object v1, v1, v16

    add-int/lit8 v16, v3, 0x1

    aget-wide v16, v1, v16

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    add-double v14, v14, v16

    mul-double/2addr v12, v14

    .line 333
    .local v12, "rhs":D
    iget-wide v14, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    mul-double/2addr v14, v12

    cmpg-double v1, v10, v14

    if-gez v1, :cond_1

    .line 334
    goto :goto_1

    .line 336
    :cond_1
    nop

    .end local v4    # "z":D
    .end local v6    # "r":D
    .end local v8    # "s":D
    .end local v10    # "lhs":D
    .end local v12    # "rhs":D
    add-int/lit8 v3, v3, -0x1

    .line 337
    move/from16 v1, p1

    goto/16 :goto_0

    .line 339
    :cond_2
    :goto_1
    return v3
.end method

.method private performDoubleQRStep(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)V
    .locals 28
    .param p1, "il"    # I
    .param p2, "im"    # I
    .param p3, "iu"    # I
    .param p4, "shift"    # Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;
    .param p5, "hVec"    # [D

    .line 354
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v4, v4

    .line 355
    .local v4, "n":I
    const/4 v5, 0x0

    aget-wide v6, p5, v5

    .line 356
    .local v6, "p":D
    const/4 v8, 0x1

    aget-wide v9, p5, v8

    .line 357
    .local v9, "q":D
    const/4 v11, 0x2

    aget-wide v11, p5, v11

    .line 359
    .local v11, "r":D
    move/from16 v13, p2

    .local v13, "k":I
    :goto_0
    add-int/lit8 v14, v2, -0x1

    const-wide/16 v15, 0x0

    if-gt v13, v14, :cond_e

    .line 360
    add-int/lit8 v14, v2, -0x1

    if-eq v13, v14, :cond_0

    move v14, v8

    goto :goto_1

    :cond_0
    move v14, v5

    .line 361
    .local v14, "notlast":Z
    :goto_1
    if-eq v13, v1, :cond_3

    .line 362
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v13

    add-int/lit8 v17, v13, -0x1

    aget-wide v5, v5, v17

    .line 363
    .end local v6    # "p":D
    .local v5, "p":D
    iget-object v7, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v17, v13, 0x1

    aget-object v7, v7, v17

    add-int/lit8 v17, v13, -0x1

    aget-wide v9, v7, v17

    .line 364
    if-eqz v14, :cond_1

    iget-object v7, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v17, v13, 0x2

    aget-object v7, v7, v17

    add-int/lit8 v17, v13, -0x1

    aget-wide v17, v7, v17

    goto :goto_2

    :cond_1
    move-wide/from16 v17, v15

    .line 365
    .end local v11    # "r":D
    .local v17, "r":D
    :goto_2
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v19

    add-double v11, v11, v19

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v19

    add-double v11, v11, v19

    iput-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 366
    iget-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    const-wide/16 v21, 0x0

    move/from16 v25, v8

    move-wide/from16 v26, v9

    .end local v9    # "q":D
    .local v26, "q":D
    iget-wide v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->epsilon:D

    move-wide/from16 v23, v8

    move-wide/from16 v19, v11

    invoke-static/range {v19 .. v24}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 367
    move/from16 v21, v4

    move-wide v6, v5

    move-wide/from16 v11, v17

    move-wide/from16 v9, v26

    goto/16 :goto_b

    .line 369
    :cond_2
    iget-wide v7, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    div-double v6, v5, v7

    .line 370
    .end local v5    # "p":D
    .restart local v6    # "p":D
    iget-wide v8, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    div-double v9, v26, v8

    .line 371
    .end local v26    # "q":D
    .restart local v9    # "q":D
    iget-wide v11, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    div-double v11, v17, v11

    .end local v17    # "r":D
    .restart local v11    # "r":D
    goto :goto_3

    .line 361
    :cond_3
    move/from16 v25, v8

    .line 373
    :goto_3
    mul-double v17, v6, v6

    mul-double v19, v9, v9

    add-double v17, v17, v19

    mul-double v19, v11, v11

    add-double v17, v17, v19

    move-wide/from16 v19, v6

    .end local v6    # "p":D
    .local v19, "p":D
    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    .line 374
    .local v5, "s":D
    cmpg-double v7, v19, v15

    if-gez v7, :cond_4

    .line 375
    neg-double v5, v5

    .line 377
    :cond_4
    cmpl-double v7, v5, v15

    if-eqz v7, :cond_d

    .line 378
    if-eq v13, v1, :cond_5

    .line 379
    iget-object v7, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v7, v7, v13

    add-int/lit8 v8, v13, -0x1

    move-object v15, v7

    move/from16 v16, v8

    neg-double v7, v5

    move-wide/from16 v17, v5

    .end local v5    # "s":D
    .local v17, "s":D
    iget-wide v5, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    mul-double/2addr v7, v5

    aput-wide v7, v15, v16

    goto :goto_4

    .line 380
    .end local v17    # "s":D
    .restart local v5    # "s":D
    :cond_5
    move-wide/from16 v17, v5

    .end local v5    # "s":D
    .restart local v17    # "s":D
    move/from16 v5, p1

    if-eq v5, v1, :cond_6

    .line 381
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v6, v6, v13

    add-int/lit8 v7, v13, -0x1

    iget-object v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v8, v8, v13

    add-int/lit8 v15, v13, -0x1

    move-object/from16 v16, v6

    aget-wide v5, v8, v15

    neg-double v5, v5

    aput-wide v5, v16, v7

    .line 383
    :cond_6
    :goto_4
    add-double v6, v19, v17

    .line 384
    .end local v19    # "p":D
    .restart local v6    # "p":D
    move-wide v15, v6

    .end local v6    # "p":D
    .local v15, "p":D
    div-double v5, v15, v17

    iput-wide v5, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    .line 385
    div-double v5, v9, v17

    iput-wide v5, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    .line 386
    div-double v5, v11, v17

    .line 387
    .local v5, "z":D
    div-double/2addr v9, v15

    .line 388
    div-double/2addr v11, v15

    .line 391
    move v7, v13

    .local v7, "j":I
    :goto_5
    if-ge v7, v4, :cond_8

    .line 392
    iget-object v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v8, v8, v13

    aget-wide v19, v8, v7

    iget-object v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v21, v13, 0x1

    aget-object v8, v8, v21

    aget-wide v21, v8, v7

    mul-double v21, v21, v9

    add-double v19, v19, v21

    .line 393
    .end local v15    # "p":D
    .restart local v19    # "p":D
    if-eqz v14, :cond_7

    .line 394
    iget-object v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v15, v13, 0x2

    aget-object v8, v8, v15

    aget-wide v15, v8, v7

    mul-double/2addr v15, v11

    add-double v19, v19, v15

    .line 395
    iget-object v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v15, v13, 0x2

    aget-object v8, v8, v15

    aget-wide v15, v8, v7

    mul-double v21, v19, v5

    sub-double v15, v15, v21

    aput-wide v15, v8, v7

    move-wide/from16 v15, v19

    goto :goto_6

    .line 393
    :cond_7
    move-wide/from16 v15, v19

    .line 397
    .end local v19    # "p":D
    .restart local v15    # "p":D
    :goto_6
    iget-object v8, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v8, v8, v13

    aget-wide v19, v8, v7

    move/from16 v21, v4

    move-wide/from16 v22, v5

    .end local v4    # "n":I
    .end local v5    # "z":D
    .local v21, "n":I
    .local v22, "z":D
    iget-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    mul-double/2addr v4, v15

    sub-double v19, v19, v4

    aput-wide v19, v8, v7

    .line 398
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v5, v13, 0x1

    aget-object v4, v4, v5

    aget-wide v5, v4, v7

    move-object v8, v4

    move-wide/from16 v19, v5

    iget-wide v4, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    mul-double/2addr v4, v15

    sub-double v5, v19, v4

    aput-wide v5, v8, v7

    .line 391
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v21

    move-wide/from16 v5, v22

    goto :goto_5

    .end local v21    # "n":I
    .end local v22    # "z":D
    .restart local v4    # "n":I
    .restart local v5    # "z":D
    :cond_8
    move/from16 v21, v4

    move-wide/from16 v22, v5

    .line 402
    .end local v4    # "n":I
    .end local v5    # "z":D
    .end local v7    # "j":I
    .restart local v21    # "n":I
    .restart local v22    # "z":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_7
    add-int/lit8 v5, v13, 0x3

    invoke-static {v2, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-gt v4, v5, :cond_a

    .line 403
    iget-wide v5, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    iget-object v7, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v13

    mul-double/2addr v5, v7

    iget-wide v7, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v1, v1, v4

    add-int/lit8 v19, v13, 0x1

    aget-wide v19, v1, v19

    mul-double v7, v7, v19

    add-double/2addr v5, v7

    .line 404
    .end local v15    # "p":D
    .local v5, "p":D
    if-eqz v14, :cond_9

    .line 405
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v1, v1, v4

    add-int/lit8 v7, v13, 0x2

    aget-wide v7, v1, v7

    mul-double v7, v7, v22

    add-double/2addr v5, v7

    .line 406
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v1, v1, v4

    add-int/lit8 v7, v13, 0x2

    aget-wide v15, v1, v7

    mul-double v19, v5, v11

    sub-double v15, v15, v19

    aput-wide v15, v1, v7

    move-wide v15, v5

    goto :goto_8

    .line 404
    :cond_9
    move-wide v15, v5

    .line 408
    .end local v5    # "p":D
    .restart local v15    # "p":D
    :goto_8
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v1, v1, v4

    aget-wide v5, v1, v13

    sub-double/2addr v5, v15

    aput-wide v5, v1, v13

    .line 409
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v1, v1, v4

    add-int/lit8 v5, v13, 0x1

    aget-wide v6, v1, v5

    mul-double v19, v15, v9

    sub-double v6, v6, v19

    aput-wide v6, v1, v5

    .line 402
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p2

    goto :goto_7

    .line 413
    .end local v4    # "i":I
    :cond_a
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .line 414
    .local v1, "high":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_9
    if-gt v4, v1, :cond_c

    .line 415
    iget-wide v5, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->x:D

    iget-object v7, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v13

    mul-double/2addr v5, v7

    iget-wide v7, v3, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->y:D

    move/from16 v19, v1

    .end local v1    # "high":I
    .local v19, "high":I
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v1, v1, v4

    add-int/lit8 v20, v13, 0x1

    aget-wide v26, v1, v20

    mul-double v7, v7, v26

    add-double/2addr v5, v7

    .line 416
    .end local v15    # "p":D
    .restart local v5    # "p":D
    if-eqz v14, :cond_b

    .line 417
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v1, v1, v4

    add-int/lit8 v7, v13, 0x2

    aget-wide v7, v1, v7

    mul-double v7, v7, v22

    add-double/2addr v5, v7

    .line 418
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v1, v1, v4

    add-int/lit8 v7, v13, 0x2

    aget-wide v15, v1, v7

    mul-double v26, v5, v11

    sub-double v15, v15, v26

    aput-wide v15, v1, v7

    move-wide v15, v5

    goto :goto_a

    .line 416
    :cond_b
    move-wide v15, v5

    .line 420
    .end local v5    # "p":D
    .restart local v15    # "p":D
    :goto_a
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v1, v1, v4

    aget-wide v5, v1, v13

    sub-double/2addr v5, v15

    aput-wide v5, v1, v13

    .line 421
    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v1, v1, v4

    add-int/lit8 v5, v13, 0x1

    aget-wide v6, v1, v5

    mul-double v26, v15, v9

    sub-double v6, v6, v26

    aput-wide v6, v1, v5

    .line 414
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v19

    goto :goto_9

    .end local v19    # "high":I
    .restart local v1    # "high":I
    :cond_c
    move/from16 v19, v1

    .end local v1    # "high":I
    .restart local v19    # "high":I
    move-wide v6, v15

    goto :goto_b

    .line 377
    .end local v15    # "p":D
    .end local v17    # "s":D
    .end local v21    # "n":I
    .end local v22    # "z":D
    .local v4, "n":I
    .local v5, "s":D
    .local v19, "p":D
    :cond_d
    move/from16 v21, v4

    move-wide/from16 v17, v5

    .end local v4    # "n":I
    .end local v5    # "s":D
    .restart local v17    # "s":D
    .restart local v21    # "n":I
    move-wide/from16 v6, v19

    .line 359
    .end local v14    # "notlast":Z
    .end local v17    # "s":D
    .end local v19    # "p":D
    .restart local v6    # "p":D
    :goto_b
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p2

    move/from16 v4, v21

    move/from16 v8, v25

    const/4 v5, 0x0

    goto/16 :goto_0

    .end local v21    # "n":I
    .restart local v4    # "n":I
    :cond_e
    move/from16 v21, v4

    .line 427
    .end local v4    # "n":I
    .end local v13    # "k":I
    .restart local v21    # "n":I
    add-int/lit8 v1, p2, 0x2

    .local v1, "i":I
    :goto_c
    if-gt v1, v2, :cond_10

    .line 428
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v1

    add-int/lit8 v5, v1, -0x2

    aput-wide v15, v4, v5

    .line 429
    add-int/lit8 v4, p2, 0x2

    if-le v1, v4, :cond_f

    .line 430
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v4, v4, v1

    add-int/lit8 v5, v1, -0x3

    aput-wide v15, v4, v5

    .line 427
    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 433
    .end local v1    # "i":I
    :cond_10
    return-void
.end method

.method private transform()V
    .locals 28

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    array-length v6, v1

    .line 135
    .local v6, "n":I
    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SchurTransformer;->getNorm()D

    move-result-wide v7

    .line 138
    .local v7, "norm":D
    new-instance v4, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;

    const/4 v1, 0x0

    invoke-direct {v4, v1}, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;-><init>(Lorg/apache/commons/math3/linear/SchurTransformer$1;)V

    .line 141
    .local v4, "shift":Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;
    const/4 v1, 0x0

    .line 142
    .local v1, "iteration":I
    add-int/lit8 v2, v6, -0x1

    move v3, v2

    .line 143
    .local v3, "iu":I
    :goto_0
    if-ltz v3, :cond_8

    .line 146
    invoke-direct {v0, v3, v7, v8}, Lorg/apache/commons/math3/linear/SchurTransformer;->findSmallSubDiagonalElement(ID)I

    move-result v2

    .line 149
    .local v2, "il":I
    if-ne v2, v3, :cond_0

    .line 151
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v3

    aget-wide v9, v5, v3

    iget-wide v11, v4, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double/2addr v9, v11

    aput-wide v9, v5, v3

    .line 152
    add-int/lit8 v3, v3, -0x1

    .line 153
    const/4 v1, 0x0

    move/from16 v21, v6

    move-wide v15, v7

    goto/16 :goto_6

    .line 154
    :cond_0
    add-int/lit8 v5, v3, -0x1

    if-ne v2, v5, :cond_6

    .line 156
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v9, v3, -0x1

    aget-object v5, v5, v9

    add-int/lit8 v9, v3, -0x1

    aget-wide v9, v5, v9

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v3

    aget-wide v11, v5, v3

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v9, v11

    .line 157
    .local v9, "p":D
    mul-double v11, v9, v9

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v3

    add-int/lit8 v13, v3, -0x1

    aget-wide v13, v5, v13

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v15, v3, -0x1

    aget-object v5, v5, v15

    aget-wide v15, v5, v3

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    .line 158
    .local v11, "q":D
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v3

    aget-wide v13, v5, v3

    move-wide v15, v7

    .end local v7    # "norm":D
    .local v15, "norm":D
    iget-wide v7, v4, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double/2addr v13, v7

    aput-wide v13, v5, v3

    .line 159
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v7, v3, -0x1

    aget-object v5, v5, v7

    add-int/lit8 v7, v3, -0x1

    aget-wide v13, v5, v7

    move/from16 v17, v7

    iget-wide v7, v4, Lorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;->exShift:D

    add-double/2addr v13, v7

    aput-wide v13, v5, v17

    .line 161
    const-wide/16 v7, 0x0

    cmpl-double v5, v11, v7

    if-ltz v5, :cond_5

    .line 162
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    .line 163
    .local v13, "z":D
    cmpl-double v5, v9, v7

    if-ltz v5, :cond_1

    .line 164
    add-double/2addr v13, v9

    goto :goto_1

    .line 166
    :cond_1
    sub-double v13, v9, v13

    .line 168
    :goto_1
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v3

    add-int/lit8 v7, v3, -0x1

    aget-wide v7, v5, v7

    .line 169
    .local v7, "x":D
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v19

    add-double v17, v17, v19

    .line 170
    .local v17, "s":D
    div-double v9, v7, v17

    .line 171
    div-double v11, v13, v17

    .line 172
    mul-double v19, v9, v9

    mul-double v21, v11, v11

    add-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v19

    .line 173
    .local v19, "r":D
    div-double v9, v9, v19

    .line 174
    div-double v11, v11, v19

    .line 177
    add-int/lit8 v5, v3, -0x1

    .local v5, "j":I
    :goto_2
    if-ge v5, v6, :cond_2

    .line 178
    move/from16 v21, v5

    .end local v5    # "j":I
    .local v21, "j":I
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v22, v3, -0x1

    aget-object v5, v5, v22

    aget-wide v13, v5, v21

    .line 179
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    add-int/lit8 v22, v3, -0x1

    aget-object v5, v5, v22

    mul-double v22, v11, v13

    move-object/from16 v24, v5

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v3

    aget-wide v25, v5, v21

    mul-double v25, v25, v9

    add-double v22, v22, v25

    aput-wide v22, v24, v21

    .line 180
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v3

    move-object/from16 v22, v5

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v3

    aget-wide v23, v5, v21

    mul-double v23, v23, v11

    mul-double v25, v9, v13

    sub-double v23, v23, v25

    aput-wide v23, v22, v21

    .line 177
    add-int/lit8 v5, v21, 0x1

    .end local v21    # "j":I
    .restart local v5    # "j":I
    goto :goto_2

    :cond_2
    move/from16 v21, v5

    .line 184
    .end local v5    # "j":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-gt v5, v3, :cond_3

    .line 185
    move/from16 v21, v5

    .end local v5    # "i":I
    .local v21, "i":I
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v21

    add-int/lit8 v22, v3, -0x1

    aget-wide v13, v5, v22

    .line 186
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v21

    add-int/lit8 v22, v3, -0x1

    mul-double v23, v11, v13

    move-object/from16 v25, v5

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v21

    aget-wide v26, v5, v3

    mul-double v26, v26, v9

    add-double v23, v23, v26

    aput-wide v23, v25, v22

    .line 187
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v21

    move-object/from16 v22, v5

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    aget-object v5, v5, v21

    aget-wide v23, v5, v3

    mul-double v23, v23, v11

    mul-double v25, v9, v13

    sub-double v23, v23, v25

    aput-wide v23, v22, v3

    .line 184
    add-int/lit8 v5, v21, 0x1

    .end local v21    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    :cond_3
    move/from16 v21, v5

    .line 191
    .end local v5    # "i":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    move/from16 v21, v6

    .end local v6    # "n":I
    .local v21, "n":I
    add-int/lit8 v6, v21, -0x1

    if-gt v5, v6, :cond_4

    .line 192
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v6, v6, v5

    add-int/lit8 v22, v3, -0x1

    aget-wide v13, v6, v22

    .line 193
    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v6, v6, v5

    add-int/lit8 v22, v3, -0x1

    mul-double v23, v11, v13

    move/from16 v25, v5

    .end local v5    # "i":I
    .local v25, "i":I
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v5, v5, v25

    aget-wide v26, v5, v3

    mul-double v26, v26, v9

    add-double v23, v23, v26

    aput-wide v23, v6, v22

    .line 194
    iget-object v5, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v5, v5, v25

    iget-object v6, v0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    aget-object v6, v6, v25

    aget-wide v22, v6, v3

    mul-double v22, v22, v11

    mul-double v26, v9, v13

    sub-double v22, v22, v26

    aput-wide v22, v5, v3

    .line 191
    add-int/lit8 v5, v25, 0x1

    move/from16 v6, v21

    .end local v25    # "i":I
    .restart local v5    # "i":I
    goto :goto_4

    :cond_4
    move/from16 v25, v5

    .end local v5    # "i":I
    .restart local v25    # "i":I
    goto :goto_5

    .line 161
    .end local v7    # "x":D
    .end local v13    # "z":D
    .end local v17    # "s":D
    .end local v19    # "r":D
    .end local v21    # "n":I
    .end local v25    # "i":I
    .restart local v6    # "n":I
    :cond_5
    move/from16 v21, v6

    .line 197
    .end local v6    # "n":I
    .restart local v21    # "n":I
    :goto_5
    add-int/lit8 v3, v3, -0x2

    .line 198
    const/4 v1, 0x0

    .line 199
    .end local v9    # "p":D
    .end local v11    # "q":D
    goto :goto_6

    .line 201
    .end local v15    # "norm":D
    .end local v21    # "n":I
    .restart local v6    # "n":I
    .local v7, "norm":D
    :cond_6
    move/from16 v21, v6

    move-wide v15, v7

    .end local v6    # "n":I
    .end local v7    # "norm":D
    .restart local v15    # "norm":D
    .restart local v21    # "n":I
    invoke-direct {v0, v2, v3, v1, v4}, Lorg/apache/commons/math3/linear/SchurTransformer;->computeShift(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;)V

    .line 204
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "iteration":I
    .local v6, "iteration":I
    const/16 v1, 0x64

    if-gt v6, v1, :cond_7

    .line 210
    const/4 v1, 0x3

    new-array v5, v1, [D

    .line 212
    .local v5, "hVec":[D
    move v1, v2

    .end local v2    # "il":I
    .local v1, "il":I
    invoke-direct {v0, v1, v3, v4, v5}, Lorg/apache/commons/math3/linear/SchurTransformer;->initQRStep(IILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)I

    move-result v2

    .line 213
    .local v2, "im":I
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/SchurTransformer;->performDoubleQRStep(IIILorg/apache/commons/math3/linear/SchurTransformer$ShiftInfo;[D)V

    move v0, v1

    move v1, v6

    .line 215
    .end local v2    # "im":I
    .end local v5    # "hVec":[D
    .end local v6    # "iteration":I
    .local v1, "iteration":I
    :goto_6
    move-object/from16 v0, p0

    move-wide v7, v15

    move/from16 v6, v21

    goto/16 :goto_0

    .line 205
    .end local v1    # "iteration":I
    .local v2, "il":I
    .restart local v6    # "iteration":I
    :cond_7
    move v0, v2

    .end local v2    # "il":I
    .local v0, "il":I
    new-instance v2, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONVERGENCE_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-direct {v2, v5, v1, v7}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v2

    .line 216
    .end local v0    # "il":I
    .end local v15    # "norm":D
    .end local v21    # "n":I
    .restart local v1    # "iteration":I
    .local v6, "n":I
    .restart local v7    # "norm":D
    :cond_8
    return-void
.end method


# virtual methods
.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 92
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixP:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 95
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedP:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getPT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SchurTransformer;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 110
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedPt:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 119
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->matrixT:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 124
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SchurTransformer;->cachedT:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method
