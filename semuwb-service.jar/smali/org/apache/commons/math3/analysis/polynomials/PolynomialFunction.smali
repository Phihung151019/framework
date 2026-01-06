.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
.super Ljava/lang/Object;
.source "PolynomialFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction$Parametric;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b3a15b67b0ea49fL


# instance fields
.field private final coefficients:[D


# direct methods
.method public constructor <init>([D)V
    .locals 5
    .param p1, "c"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    array-length v0, p1

    .line 71
    .local v0, "n":I
    if-eqz v0, :cond_1

    .line 74
    :goto_0
    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-wide v1, p1, v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 75
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 77
    :cond_0
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    .line 78
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-void

    .line 72
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1
.end method

.method protected static differentiate([D)[D
    .locals 8
    .param p0, "coefficients"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 259
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 260
    array-length v0, p0

    .line 261
    .local v0, "n":I
    if-eqz v0, :cond_2

    .line 264
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 265
    new-array v1, v1, [D

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    return-object v1

    .line 267
    :cond_0
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [D

    .line 268
    .local v1, "result":[D
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-lez v2, :cond_1

    .line 269
    add-int/lit8 v3, v2, -0x1

    int-to-double v4, v2

    aget-wide v6, p0, v2

    mul-double/2addr v4, v6

    aput-wide v4, v1, v3

    .line 268
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 271
    .end local v2    # "i":I
    :cond_1
    return-object v1

    .line 262
    .end local v1    # "result":[D
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1
.end method

.method protected static evaluate([DD)D
    .locals 8
    .param p0, "coefficients"    # [D
    .param p1, "argument"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 129
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 130
    array-length v0, p0

    .line 131
    .local v0, "n":I
    if-eqz v0, :cond_1

    .line 134
    add-int/lit8 v1, v0, -0x1

    aget-wide v1, p0, v1

    .line 135
    .local v1, "result":D
    add-int/lit8 v3, v0, -0x2

    .local v3, "j":I
    :goto_0
    if-ltz v3, :cond_0

    .line 136
    mul-double v4, p1, v1

    aget-wide v6, p0, v3

    add-double v1, v4, v6

    .line 135
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 138
    .end local v3    # "j":I
    :cond_0
    return-wide v1

    .line 132
    .end local v1    # "result":D
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1
.end method

.method private static toString(D)Ljava/lang/String;
    .locals 3
    .param p0, "coeff"    # D

    .line 356
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 357
    .local v0, "c":Ljava/lang/String;
    const-string v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 360
    :cond_0
    return-object v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 8
    .param p1, "p"    # Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 171
    .local v0, "lowLength":I
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    iget-object v2, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    .line 174
    .local v1, "highLength":I
    new-array v2, v1, [D

    .line 175
    .local v2, "newCoefficients":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 176
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v4, v4, v3

    iget-object v6, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v6, v6, v3

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 178
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v3, v3

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v3, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    :goto_1
    sub-int v4, v1, v0

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 184
    new-instance v3, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v3
.end method

.method public degree()I
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1

    .line 289
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->polynomialDerivative()Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 376
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 377
    return v0

    .line 379
    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 380
    return v2

    .line 382
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 383
    .local v1, "other":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    iget-object v4, v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v3

    if-nez v3, :cond_2

    .line 384
    return v2

    .line 386
    :cond_2
    return v0
.end method

.method public getCoefficients()[D
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 367
    const/16 v0, 0x1f

    .line 368
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 369
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([D)I

    move-result v3

    add-int/2addr v2, v3

    .line 370
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public multiply(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 9
    .param p1, "p"    # Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 235
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    new-array v0, v0, [D

    .line 237
    .local v0, "newCoefficients":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 238
    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 239
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v3, v3

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v2

    .line 240
    .local v2, "j":I
    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v3, v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 242
    aget-wide v3, v0, v1

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v5, v5, v2

    iget-object v7, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    sub-int v8, v1, v2

    aget-wide v7, v7, v8

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    aput-wide v3, v0, v1

    .line 241
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 237
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .end local v1    # "i":I
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v1
.end method

.method public negate()Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 4

    .line 221
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 222
    .local v0, "newCoefficients":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 223
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v2, v2, v1

    neg-double v2, v2

    aput-wide v2, v0, v1

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v1
.end method

.method public polynomialDerivative()Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 2

    .line 280
    new-instance v0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->differentiate([D)[D

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .locals 8
    .param p1, "p"    # Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 195
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    iget-object v1, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    .line 196
    .local v0, "lowLength":I
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    iget-object v2, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v1

    .line 199
    .local v1, "highLength":I
    new-array v2, v1, [D

    .line 200
    .local v2, "newCoefficients":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 201
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v4, v4, v3

    iget-object v6, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v6, v6, v3

    sub-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 200
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 203
    .end local v3    # "i":I
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v3, v3

    iget-object v4, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v4, v4

    if-ge v3, v4, :cond_2

    .line 204
    move v3, v0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 205
    iget-object v4, p1, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v4, v4, v3

    neg-double v4, v4

    aput-wide v4, v2, v3

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v3    # "i":I
    :cond_1
    goto :goto_2

    .line 208
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    sub-int v4, v1, v0

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 212
    :goto_2
    new-instance v3, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v0, "s":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    const-wide/16 v5, 0x0

    cmpl-double v1, v3, v5

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 311
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v1, v1

    if-ne v1, v3, :cond_1

    .line 312
    const-string v1, "0"

    return-object v1

    .line 315
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    :cond_1
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v2, v2

    if-ge v1, v2, :cond_7

    .line 319
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v7, v2, v1

    cmpl-double v2, v7, v5

    if-eqz v2, :cond_6

    .line 320
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 321
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v7, v2, v1

    cmpg-double v2, v7, v5

    if-gez v2, :cond_2

    .line 322
    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 324
    :cond_2
    const-string v2, " + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 327
    :cond_3
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v7, v2, v1

    cmpg-double v2, v7, v5

    if-gez v2, :cond_4

    .line 328
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    :cond_4
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v7, v2, v1

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    .line 333
    .local v7, "absAi":D
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double v9, v7, v9

    cmpl-double v2, v9, v5

    if-eqz v2, :cond_5

    .line 334
    invoke-static {v7, v8}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    :cond_5
    const-string v2, "x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    if-le v1, v3, :cond_6

    .line 340
    const/16 v2, 0x5e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 341
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    .end local v7    # "absAi":D
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 346
    .end local v1    # "i":I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public value(D)D
    .locals 2
    .param p1, "x"    # D

    .line 93
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v0, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->evaluate([DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 6
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    array-length v0, v0

    .line 151
    .local v0, "n":I
    if-eqz v0, :cond_1

    .line 154
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    .line 156
    .local v1, "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    add-int/lit8 v2, v0, -0x2

    .local v2, "j":I
    :goto_0
    if-ltz v2, :cond_0

    .line 157
    invoke-virtual {v1, p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->coefficients:[D

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    .line 156
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 159
    .end local v2    # "j":I
    :cond_0
    return-object v1

    .line 152
    .end local v1    # "result":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1
.end method
