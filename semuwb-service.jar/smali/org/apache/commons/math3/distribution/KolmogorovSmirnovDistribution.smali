.class public Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;
.super Ljava/lang/Object;
.source "KolmogorovSmirnovDistribution.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x40d193cce9ad2d93L


# instance fields
.field private n:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-lez p1, :cond_0

    .line 92
    iput p1, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    .line 93
    return-void

    .line 89
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method private createH(D)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 14
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    .line 271
    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-int v1, v0

    .line 273
    .local v1, "k":I
    mul-int/lit8 v0, v1, 0x2

    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    .line 274
    .local v3, "m":I
    int-to-double v4, v1

    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v6, v0

    mul-double/2addr v6, p1

    sub-double v9, v4, v6

    .line 276
    .local v9, "hDouble":D
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v9, v4

    const/4 v6, 0x0

    if-gez v0, :cond_9

    .line 280
    const/4 v4, 0x0

    .line 283
    .local v4, "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :try_start_0
    new-instance v8, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v11, 0x3bc79ca10c924223L    # 1.0E-20

    const/16 v13, 0x2710

    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_0
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v4    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .local v8, "h":Lorg/apache/commons/math3/fraction/BigFraction;
    goto :goto_0

    .line 284
    .end local v8    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .restart local v4    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :catch_0
    move-exception v0

    move-object v5, v0

    .line 286
    .local v5, "e1":Lorg/apache/commons/math3/fraction/FractionConversionException;
    :try_start_1
    new-instance v8, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v11, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const/16 v13, 0x2710

    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_1
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    .end local v4    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .restart local v8    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    goto :goto_0

    .line 287
    .end local v8    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .restart local v4    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e2":Lorg/apache/commons/math3/fraction/FractionConversionException;
    new-instance v8, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v11, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v13, 0x2710

    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V

    .line 292
    .end local v0    # "e2":Lorg/apache/commons/math3/fraction/FractionConversionException;
    .end local v4    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v5    # "e1":Lorg/apache/commons/math3/fraction/FractionConversionException;
    .restart local v8    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :goto_0
    const/4 v0, 0x2

    new-array v4, v0, [I

    aput v3, v4, v2

    aput v3, v4, v6

    const-class v5, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lorg/apache/commons/math3/fraction/BigFraction;

    .line 297
    .local v4, "Hdata":[[Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_2

    .line 298
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    if-ge v7, v3, :cond_1

    .line 299
    sub-int v11, v5, v7

    add-int/2addr v11, v2

    if-gez v11, :cond_0

    .line 300
    aget-object v11, v4, v5

    sget-object v12, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v12, v11, v7

    goto :goto_3

    .line 302
    :cond_0
    aget-object v11, v4, v5

    sget-object v12, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v12, v11, v7

    .line 298
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 297
    .end local v7    # "j":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 311
    .end local v5    # "i":I
    :cond_2
    new-array v5, v3, [Lorg/apache/commons/math3/fraction/BigFraction;

    .line 312
    .local v5, "hPowers":[Lorg/apache/commons/math3/fraction/BigFraction;
    aput-object v8, v5, v6

    .line 313
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_4
    if-ge v7, v3, :cond_3

    .line 314
    add-int/lit8 v11, v7, -0x1

    aget-object v11, v5, v11

    invoke-virtual {v8, v11}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v11

    aput-object v11, v5, v7

    .line 313
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 320
    .end local v7    # "i":I
    :cond_3
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_5
    if-ge v7, v3, :cond_4

    .line 321
    aget-object v11, v4, v7

    aget-object v12, v4, v7

    aget-object v12, v12, v6

    aget-object v13, v5, v7

    invoke-virtual {v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v12

    aput-object v12, v11, v6

    .line 322
    add-int/lit8 v11, v3, -0x1

    aget-object v11, v4, v11

    add-int/lit8 v12, v3, -0x1

    aget-object v12, v4, v12

    aget-object v12, v12, v7

    sub-int v13, v3, v7

    sub-int/2addr v13, v2

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v12

    aput-object v12, v11, v7

    .line 320
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 330
    .end local v7    # "i":I
    :cond_4
    sget-object v7, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v8, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I

    move-result v7

    if-ne v7, v2, :cond_5

    .line 331
    add-int/lit8 v7, v3, -0x1

    aget-object v7, v4, v7

    add-int/lit8 v11, v3, -0x1

    aget-object v11, v4, v11

    aget-object v11, v11, v6

    invoke-virtual {v8, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->pow(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    invoke-virtual {v11, v0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    aput-object v0, v7, v6

    .line 345
    :cond_5
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v3, :cond_8

    .line 346
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_7
    add-int/lit8 v7, v0, 0x1

    if-ge v6, v7, :cond_7

    .line 347
    sub-int v7, v0, v6

    add-int/2addr v7, v2

    if-lez v7, :cond_6

    .line 348
    const/4 v7, 0x2

    .local v7, "g":I
    :goto_8
    sub-int v11, v0, v6

    add-int/2addr v11, v2

    if-gt v7, v11, :cond_6

    .line 349
    aget-object v11, v4, v0

    aget-object v12, v4, v0

    aget-object v12, v12, v6

    invoke-virtual {v12, v7}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v12

    aput-object v12, v11, v6

    .line 348
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 346
    .end local v7    # "g":I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 345
    .end local v6    # "j":I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 355
    .end local v0    # "i":I
    :cond_8
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField;->getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V

    return-object v0

    .line 277
    .end local v4    # "Hdata":[[Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v5    # "hPowers":[Lorg/apache/commons/math3/fraction/BigFraction;
    .end local v8    # "h":Lorg/apache/commons/math3/fraction/BigFraction;
    :cond_9
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v0, v2, v4, v6}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method private exactK(D)D
    .locals 7
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 198
    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 200
    .local v0, "k":I
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->createH(D)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 201
    .local v1, "H":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    iget v2, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->power(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v2

    .line 203
    .local v2, "Hpower":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/fraction/BigFraction;

    .line 205
    .local v3, "pFrac":Lorg/apache/commons/math3/fraction/BigFraction;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    if-gt v4, v5, :cond_0

    .line 206
    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    invoke-virtual {v5, v6}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    .line 205
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    .end local v4    # "i":I
    :cond_0
    const/16 v4, 0x14

    const/4 v5, 0x4

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->bigDecimalValue(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    return-wide v4
.end method

.method private roundedK(D)D
    .locals 12
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 230
    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v0, v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 231
    .local v0, "k":I
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->createH(D)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object v1

    .line 232
    .local v1, "HBigFraction":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<Lorg/apache/commons/math3/fraction/BigFraction;>;"
    invoke-interface {v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v2

    .line 238
    .local v2, "m":I
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v3, v2, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 240
    .local v3, "H":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 241
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 242
    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {v6}, Lorg/apache/commons/math3/fraction/BigFraction;->doubleValue()D

    move-result-wide v6

    invoke-interface {v3, v4, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 241
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 240
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 246
    .end local v4    # "i":I
    :cond_1
    iget v4, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->power(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 248
    .local v4, "Hpower":Lorg/apache/commons/math3/linear/RealMatrix;
    add-int/lit8 v5, v0, -0x1

    add-int/lit8 v6, v0, -0x1

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    .line 250
    .local v5, "pFrac":D
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_2
    iget v8, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    if-gt v7, v8, :cond_2

    .line 251
    int-to-double v8, v7

    iget v10, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v10, v10

    div-double/2addr v8, v10

    mul-double/2addr v5, v8

    .line 250
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 254
    .end local v7    # "i":I
    :cond_2
    return-wide v5
.end method


# virtual methods
.method public cdf(D)D
    .locals 2
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->cdf(DZ)D

    move-result-wide v0

    return-wide v0
.end method

.method public cdf(DZ)D
    .locals 11
    .param p1, "d"    # D
    .param p3, "exact"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 153
    iget v0, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    .line 154
    .local v0, "ninv":D
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v0

    .line 156
    .local v4, "ninvhalf":D
    cmpg-double v6, p1, v4

    if-gtz v6, :cond_0

    .line 158
    const-wide/16 v2, 0x0

    return-wide v2

    .line 160
    :cond_0
    cmpg-double v6, v4, p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    if-gez v6, :cond_2

    cmpg-double v6, p1, v0

    if-gtz v6, :cond_2

    .line 162
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 163
    .local v2, "res":D
    mul-double/2addr v7, p1

    sub-double/2addr v7, v0

    .line 166
    .local v7, "f":D
    const/4 v6, 0x1

    .local v6, "i":I
    :goto_0
    iget v9, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    if-gt v6, v9, :cond_1

    .line 167
    int-to-double v9, v6

    mul-double/2addr v9, v7

    mul-double/2addr v2, v9

    .line 166
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 170
    .end local v6    # "i":I
    :cond_1
    return-wide v2

    .line 172
    .end local v2    # "res":D
    .end local v7    # "f":D
    :cond_2
    sub-double v9, v2, v0

    cmpg-double v6, v9, p1

    if-gtz v6, :cond_3

    cmpg-double v6, p1, v2

    if-gez v6, :cond_3

    .line 174
    sub-double v9, v2, p1

    iget v6, p0, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->n:I

    invoke-static {v9, v10, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v9

    mul-double/2addr v9, v7

    sub-double/2addr v2, v9

    return-wide v2

    .line 176
    :cond_3
    cmpg-double v6, v2, p1

    if-gtz v6, :cond_4

    .line 178
    return-wide v2

    .line 181
    :cond_4
    if-eqz p3, :cond_5

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->exactK(D)D

    move-result-wide v2

    goto :goto_1

    :cond_5
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->roundedK(D)D

    move-result-wide v2

    :goto_1
    return-wide v2
.end method

.method public cdfExact(D)D
    .locals 2
    .param p1, "d"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    .line 131
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/distribution/KolmogorovSmirnovDistribution;->cdf(DZ)D

    move-result-wide v0

    return-wide v0
.end method
