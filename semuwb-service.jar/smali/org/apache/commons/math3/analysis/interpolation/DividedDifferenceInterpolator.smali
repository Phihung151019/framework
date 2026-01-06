.class public Lorg/apache/commons/math3/analysis/interpolation/DividedDifferenceInterpolator;
.super Ljava/lang/Object;
.source "DividedDifferenceInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x17c50f88a3a43fdL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static computeDividedDifference([D[D)[D
    .locals 12
    .param p0, "x"    # [D
    .param p1, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 103
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    .line 105
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 107
    .local v0, "divdiff":[D
    array-length v1, p0

    .line 108
    .local v1, "n":I
    new-array v2, v1, [D

    .line 109
    .local v2, "a":[D
    const/4 v3, 0x0

    aget-wide v4, v0, v3

    aput-wide v4, v2, v3

    .line 110
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_1

    .line 111
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    sub-int v6, v1, v4

    if-ge v5, v6, :cond_0

    .line 112
    add-int v6, v5, v4

    aget-wide v6, p0, v6

    aget-wide v8, p0, v5

    sub-double/2addr v6, v8

    .line 113
    .local v6, "denominator":D
    add-int/lit8 v8, v5, 0x1

    aget-wide v8, v0, v8

    aget-wide v10, v0, v5

    sub-double/2addr v8, v10

    div-double/2addr v8, v6

    aput-wide v8, v0, v5

    .line 111
    .end local v6    # "denominator":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 115
    .end local v5    # "j":I
    :cond_0
    aget-wide v5, v0, v3

    aput-wide v5, v2, v4

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 118
    .end local v4    # "i":I
    :cond_1
    return-object v2
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D)Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 38
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/DividedDifferenceInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;
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

    .line 63
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionLagrangeForm;->verifyInterpolationArray([D[DZ)Z

    .line 73
    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v0, v1, [D

    .line 74
    .local v0, "c":[D
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    invoke-static {p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/DividedDifferenceInterpolator;->computeDividedDifference([D[D)[D

    move-result-object v1

    .line 77
    .local v1, "a":[D
    new-instance v2, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunctionNewtonForm;-><init>([D[D)V

    return-object v2
.end method
