.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;
.super Ljava/lang/Object;
.source "PolynomialFunctionLagrangeForm.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/UnivariateFunction;


# instance fields
.field private coefficients:[D

.field private coefficientsComputed:Z

.field private final x:[D

.field private final y:[D


# direct methods
.method public constructor <init>([D[D)V
    .locals 3
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    .line 74
    array-length v0, p2

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    .line 75
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 77
    iput-boolean v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficientsComputed:Z

    .line 79
    invoke-static {p1, p2, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    filled-new-array {v1}, [[D

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    .line 82
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    .line 84
    :cond_0
    return-void
.end method

.method public static evaluate([D[DD)D
    .locals 5
    .param p0, "x"    # [D
    .param p1, "y"    # [D
    .param p2, "z"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 174
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->evaluateInternal([D[DD)D

    move-result-wide v0

    return-wide v0

    .line 179
    :cond_0
    array-length v1, p0

    new-array v1, v1, [D

    .line 180
    .local v1, "xNew":[D
    array-length v2, p1

    new-array v2, v2, [D

    .line 181
    .local v2, "yNew":[D
    array-length v3, p0

    invoke-static {p0, v0, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    array-length v3, p1

    invoke-static {p1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    filled-new-array {v2}, [[D

    move-result-object v0

    invoke-static {v1, v0}, Lorg/apache/commons/math3/util/MathArrays;->sortInPlace([D[[D)V

    .line 186
    const/4 v0, 0x1

    invoke-static {v1, v2, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    .line 187
    invoke-static {v1, v2, p2, p3}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->evaluateInternal([D[DD)D

    move-result-wide v3

    return-wide v3
.end method

.method private static evaluateInternal([D[DD)D
    .locals 21
    .param p0, "x"    # [D
    .param p1, "y"    # [D
    .param p2, "z"    # D

    .line 207
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 208
    .local v1, "nearest":I
    array-length v2, v0

    .line 209
    .local v2, "n":I
    new-array v3, v2, [D

    .line 210
    .local v3, "c":[D
    new-array v4, v2, [D

    .line 211
    .local v4, "d":[D
    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 212
    .local v5, "min_dist":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_1

    .line 214
    aget-wide v8, p1, v7

    aput-wide v8, v3, v7

    .line 215
    aget-wide v8, p1, v7

    aput-wide v8, v4, v7

    .line 217
    aget-wide v8, v0, v7

    sub-double v8, p2, v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    .line 218
    .local v8, "dist":D
    cmpg-double v10, v8, v5

    if-gez v10, :cond_0

    .line 219
    move v1, v7

    .line 220
    move-wide v5, v8

    .line 212
    .end local v8    # "dist":D
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 225
    .end local v7    # "i":I
    :cond_1
    aget-wide v7, p1, v1

    .line 227
    .local v7, "value":D
    const/4 v9, 0x1

    .local v9, "i":I
    :goto_1
    if-ge v9, v2, :cond_4

    .line 228
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_2
    sub-int v11, v2, v9

    if-ge v10, v11, :cond_2

    .line 229
    aget-wide v11, v0, v10

    sub-double v11, v11, p2

    .line 230
    .local v11, "tc":D
    add-int v13, v9, v10

    aget-wide v13, v0, v13

    sub-double v13, v13, p2

    .line 231
    .local v13, "td":D
    aget-wide v15, v0, v10

    add-int v17, v9, v10

    aget-wide v17, v0, v17

    sub-double v15, v15, v17

    .line 233
    .local v15, "divider":D
    add-int/lit8 v17, v10, 0x1

    aget-wide v17, v3, v17

    aget-wide v19, v4, v10

    sub-double v17, v17, v19

    div-double v17, v17, v15

    .line 234
    .local v17, "w":D
    mul-double v19, v11, v17

    aput-wide v19, v3, v10

    .line 235
    mul-double v19, v13, v17

    aput-wide v19, v4, v10

    .line 228
    .end local v11    # "tc":D
    .end local v13    # "td":D
    .end local v15    # "divider":D
    .end local v17    # "w":D
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 238
    .end local v10    # "j":I
    :cond_2
    int-to-double v10, v1

    sub-int v12, v2, v9

    add-int/lit8 v12, v12, 0x1

    int-to-double v12, v12

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gez v10, :cond_3

    .line 239
    aget-wide v10, v3, v1

    add-double/2addr v7, v10

    goto :goto_3

    .line 241
    :cond_3
    add-int/lit8 v1, v1, -0x1

    .line 242
    aget-wide v10, v4, v1

    add-double/2addr v7, v10

    .line 227
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 246
    .end local v9    # "i":I
    :cond_4
    return-wide v7
.end method

.method public static verifyInterpolationArray([D[DZ)Z
    .locals 5
    .param p0, "x"    # [D
    .param p1, "y"    # [D
    .param p2, "abort"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 317
    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_1

    .line 320
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    .line 324
    sget-object v0, Lorg/apache/commons/math3/util/MathArrays$OrderDirection;->INCREASING:Lorg/apache/commons/math3/util/MathArrays$OrderDirection;

    invoke-static {p0, v0, v1, p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([DLorg/apache/commons/math3/util/MathArrays$OrderDirection;ZZ)Z

    move-result v0

    return v0

    .line 321
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->WRONG_NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    array-length v4, p0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v3, v2, v4, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0

    .line 318
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p0

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method protected computeCoefficients()V
    .locals 17

    .line 256
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->degree()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 257
    .local v1, "n":I
    new-array v3, v1, [D

    iput-object v3, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    .line 258
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 259
    iget-object v4, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    const-wide/16 v5, 0x0

    aput-wide v5, v4, v3

    .line 258
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 263
    .end local v3    # "i":I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [D

    .line 264
    .local v3, "c":[D
    const/4 v4, 0x0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    aput-wide v5, v3, v4

    .line 265
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v1, :cond_2

    .line 266
    move v8, v7

    .local v8, "j":I
    :goto_2
    if-lez v8, :cond_1

    .line 267
    add-int/lit8 v9, v8, -0x1

    aget-wide v9, v3, v9

    aget-wide v11, v3, v8

    iget-object v13, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v13, v13, v7

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    aput-wide v9, v3, v8

    .line 266
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    .line 269
    .end local v8    # "j":I
    :cond_1
    aget-wide v8, v3, v4

    iget-object v10, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v10, v10, v7

    neg-double v10, v10

    mul-double/2addr v8, v10

    aput-wide v8, v3, v4

    .line 270
    add-int/lit8 v8, v7, 0x1

    aput-wide v5, v3, v8

    .line 265
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 273
    .end local v7    # "i":I
    :cond_2
    new-array v4, v1, [D

    .line 274
    .local v4, "tc":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v1, :cond_6

    .line 276
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 277
    .local v6, "d":D
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_4
    if-ge v8, v1, :cond_4

    .line 278
    if-eq v5, v8, :cond_3

    .line 279
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v9, v9, v5

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v11, v11, v8

    sub-double/2addr v9, v11

    mul-double/2addr v6, v9

    .line 277
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 282
    .end local v8    # "j":I
    :cond_4
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    aget-wide v8, v8, v5

    div-double/2addr v8, v6

    .line 286
    .local v8, "t":D
    add-int/lit8 v10, v1, -0x1

    aget-wide v11, v3, v1

    aput-wide v11, v4, v10

    .line 287
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    add-int/lit8 v11, v1, -0x1

    aget-wide v12, v10, v11

    add-int/lit8 v14, v1, -0x1

    aget-wide v14, v4, v14

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    aput-wide v12, v10, v11

    .line 288
    add-int/lit8 v10, v1, -0x2

    .local v10, "j":I
    :goto_5
    if-ltz v10, :cond_5

    .line 289
    add-int/lit8 v11, v10, 0x1

    aget-wide v11, v3, v11

    add-int/lit8 v13, v10, 0x1

    aget-wide v13, v4, v13

    iget-object v15, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    aget-wide v15, v15, v5

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    aput-wide v11, v4, v10

    .line 290
    iget-object v11, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    aget-wide v12, v11, v10

    aget-wide v14, v4, v10

    mul-double/2addr v14, v8

    add-double/2addr v12, v14

    aput-wide v12, v11, v10

    .line 288
    add-int/lit8 v10, v10, -0x1

    goto :goto_5

    .line 274
    .end local v6    # "d":D
    .end local v8    # "t":D
    .end local v10    # "j":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 294
    .end local v5    # "i":I
    :cond_6
    iput-boolean v2, v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficientsComputed:Z

    .line 295
    return-void
.end method

.method public degree()I
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getCoefficients()[D
    .locals 4

    .line 148
    iget-boolean v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficientsComputed:Z

    if-nez v0, :cond_0

    .line 149
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->computeCoefficients()V

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 152
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->coefficients:[D

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    return-object v0
.end method

.method public getInterpolatingPoints()[D
    .locals 4

    .line 119
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 120
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 121
    return-object v0
.end method

.method public getInterpolatingValues()[D
    .locals 4

    .line 132
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 133
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    return-object v0
.end method

.method public value(D)D
    .locals 2
    .param p1, "z"    # D

    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->x:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->y:[D

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->evaluateInternal([D[DD)D

    move-result-wide v0

    return-wide v0
.end method
