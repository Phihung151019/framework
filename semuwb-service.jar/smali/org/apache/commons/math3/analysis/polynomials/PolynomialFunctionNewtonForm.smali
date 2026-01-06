.class public Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;
.super Ljava/lang/Object;
.source "PolynomialFunctionNewtonForm.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;


# instance fields
.field private final a:[D

.field private final c:[D

.field private coefficients:[D

.field private coefficientsComputed:Z


# direct methods
.method public constructor <init>([D[D)V
    .locals 3
    .param p1, "a"    # [D
    .param p2, "c"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-static {p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->verifyInputArray([D[D)V

    .line 82
    array-length v0, p1

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    .line 83
    array-length v0, p2

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    .line 84
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 85
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 86
    iput-boolean v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficientsComputed:Z

    .line 87
    return-void
.end method

.method public static evaluate([D[DD)D
    .locals 8
    .param p0, "a"    # [D
    .param p1, "c"    # [D
    .param p2, "z"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 183
    invoke-static {p0, p1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->verifyInputArray([D[D)V

    .line 185
    array-length v0, p1

    .line 186
    .local v0, "n":I
    aget-wide v1, p0, v0

    .line 187
    .local v1, "value":D
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 188
    aget-wide v4, p0, v3

    aget-wide v6, p1, v3

    sub-double v6, p2, v6

    mul-double/2addr v6, v1

    add-double v1, v4, v6

    .line 187
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 191
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method protected static verifyInputArray([D[D)V
    .locals 4
    .param p0, "a"    # [D
    .param p1, "c"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 234
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 235
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 236
    array-length v0, p0

    if-eqz v0, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 239
    array-length v0, p0

    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    return-void

    .line 240
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_SIZES_SHOULD_HAVE_DIFFERENCE_1:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v2, p0

    array-length v3, p1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v0

    .line 237
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EMPTY_POLYNOMIALS_COEFFICIENTS_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0
.end method


# virtual methods
.method protected computeCoefficients()V
    .locals 11

    .line 199
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->degree()I

    move-result v0

    .line 201
    .local v0, "n":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-gt v1, v0, :cond_0

    .line 203
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 206
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    aget-wide v2, v2, v0

    const/4 v4, 0x0

    aput-wide v2, v1, v4

    .line 207
    add-int/lit8 v1, v0, -0x1

    .restart local v1    # "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 208
    sub-int v2, v0, v1

    .local v2, "j":I
    :goto_2
    if-lez v2, :cond_1

    .line 209
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    iget-object v5, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    add-int/lit8 v6, v2, -0x1

    aget-wide v5, v5, v6

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    aget-wide v7, v7, v1

    iget-object v9, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    aget-wide v9, v9, v2

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    aput-wide v5, v3, v2

    .line 208
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 211
    .end local v2    # "j":I
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    aget-wide v5, v3, v1

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    aget-wide v7, v3, v1

    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    aget-wide v9, v3, v4

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    aput-wide v5, v2, v4

    .line 207
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 214
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficientsComputed:Z

    .line 215
    return-void
.end method

.method public degree()I
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v0, v0

    return v0
.end method

.method public getCenters()[D
    .locals 4

    .line 146
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 147
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 148
    return-object v0
.end method

.method public getCoefficients()[D
    .locals 4

    .line 159
    iget-boolean v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficientsComputed:Z

    if-nez v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->computeCoefficients()V

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 163
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->coefficients:[D

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    return-object v0
.end method

.method public getNewtonCoefficients()[D
    .locals 4

    .line 133
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 134
    .local v0, "out":[D
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    return-object v0
.end method

.method public value(D)D
    .locals 2
    .param p1, "z"    # D

    .line 96
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->evaluate([D[DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 6
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 104
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->verifyInputArray([D[D)V

    .line 106
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    array-length v0, v0

    .line 107
    .local v0, "n":I
    new-instance v1, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getFreeParameters()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    aget-wide v4, v4, v0

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    .line 108
    .local v1, "value":Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 109
    iget-object v3, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->c:[D

    aget-wide v3, v3, v2

    invoke-virtual {p1, v3, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->subtract(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->multiply(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;->a:[D

    aget-wide v4, v4, v2

    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->add(D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v1

    .line 108
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 112
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method
