.class public Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;
.super Ljava/lang/Object;
.source "PiecewiseBicubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final MIN_NUM_POINTS:I = 0x5


# instance fields
.field private final fval:[[D

.field private final xval:[D

.field private final yval:[D


# direct methods
.method public constructor <init>([D[D[[D)V
    .locals 5
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "f"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    if-eqz p3, :cond_4

    const/4 v0, 0x0

    aget-object v1, p3, v0

    if-eqz v1, :cond_4

    .line 78
    array-length v1, p1

    .line 79
    .local v1, "xLen":I
    array-length v2, p2

    .line 81
    .local v2, "yLen":I
    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    array-length v3, p3

    if-eqz v3, :cond_3

    aget-object v3, p3, v0

    array-length v3, v3

    if-eqz v3, :cond_3

    .line 88
    const/4 v3, 0x5

    if-lt v1, v3, :cond_2

    if-lt v2, v3, :cond_2

    array-length v4, p3

    if-lt v4, v3, :cond_2

    aget-object v4, p3, v0

    array-length v4, v4

    if-lt v4, v3, :cond_2

    .line 95
    array-length v3, p3

    if-ne v1, v3, :cond_1

    .line 99
    aget-object v3, p3, v0

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 103
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 104
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 106
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    .line 107
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    .line 108
    invoke-virtual {p3}, [[D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->fval:[[D

    .line 109
    return-void

    .line 100
    :cond_0
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v0, p3, v0

    array-length v0, v0

    invoke-direct {v3, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 96
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p3

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 92
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/InsufficientDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>()V

    throw v0

    .line 85
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 75
    .end local v1    # "xLen":I
    .end local v2    # "yLen":I
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method private searchIndex(D[DII)I
    .locals 6
    .param p1, "c"    # D
    .param p3, "val"    # [D
    .param p4, "offset"    # I
    .param p5, "count"    # I

    .line 183
    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    .line 185
    .local v0, "r":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    array-length v1, p3

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_3

    .line 189
    if-gez v0, :cond_0

    .line 193
    neg-int v1, v0

    sub-int/2addr v1, p4

    add-int/lit8 v1, v1, -0x1

    .end local v0    # "r":I
    .local v1, "r":I
    goto :goto_0

    .line 195
    .end local v1    # "r":I
    .restart local v0    # "r":I
    :cond_0
    sub-int v1, v0, p4

    .line 198
    .end local v0    # "r":I
    .restart local v1    # "r":I
    :goto_0
    if-gez v1, :cond_1

    .line 199
    const/4 v1, 0x0

    .line 202
    :cond_1
    add-int v0, v1, p5

    array-length v2, p3

    if-lt v0, v2, :cond_2

    .line 205
    array-length v0, p3

    sub-int v1, v0, p5

    .line 208
    :cond_2
    return v1

    .line 186
    .end local v1    # "r":I
    .restart local v0    # "r":I
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aget-wide v3, p3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    array-length v4, p3

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, p3, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method


# virtual methods
.method public isValidPoint(DD)Z
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 158
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmpg-double v0, p1, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double v0, p1, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v4, v0, v1

    cmpg-double v0, p3, v4

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    array-length v2, v2

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double v0, p3, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 164
    :cond_0
    return v3

    .line 162
    :cond_1
    :goto_0
    return v1
.end method

.method public value(DD)D
    .locals 17
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 117
    move-object/from16 v0, p0

    new-instance v1, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;-><init>()V

    move-object v6, v1

    .line 118
    .local v6, "interpolator":Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;
    const/4 v7, 0x2

    .line 119
    .local v7, "offset":I
    const/4 v8, 0x5

    .line 120
    .local v8, "count":I
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    const/4 v4, 0x2

    const/4 v5, 0x5

    move-wide/from16 v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->searchIndex(D[DII)I

    move-result v9

    .line 121
    .local v9, "i":I
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    move-wide/from16 v1, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->searchIndex(D[DII)I

    move-result v3

    .line 123
    .local v3, "j":I
    const/4 v1, 0x5

    new-array v2, v1, [D

    .line 124
    .local v2, "xArray":[D
    new-array v4, v1, [D

    .line 125
    .local v4, "yArray":[D
    new-array v5, v1, [D

    .line 126
    .local v5, "zArray":[D
    new-array v10, v1, [D

    .line 128
    .local v10, "interpArray":[D
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_0
    if-ge v11, v1, :cond_0

    .line 129
    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->xval:[D

    add-int v13, v9, v11

    aget-wide v12, v12, v13

    aput-wide v12, v2, v11

    .line 130
    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->yval:[D

    add-int v13, v3, v11

    aget-wide v12, v12, v13

    aput-wide v12, v4, v11

    .line 128
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 133
    .end local v11    # "index":I
    :cond_0
    const/4 v11, 0x0

    .local v11, "zIndex":I
    :goto_1
    if-ge v11, v1, :cond_2

    .line 134
    const/4 v12, 0x0

    .local v12, "index":I
    :goto_2
    if-ge v12, v1, :cond_1

    .line 135
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/PiecewiseBicubicSplineInterpolatingFunction;->fval:[[D

    add-int v14, v9, v12

    aget-object v13, v13, v14

    add-int v14, v3, v11

    aget-wide v13, v13, v14

    aput-wide v13, v5, v12

    .line 134
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 137
    .end local v12    # "index":I
    :cond_1
    invoke-virtual {v6, v2, v5}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v12

    .line 138
    .local v12, "spline":Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    move-wide/from16 v13, p1

    invoke-virtual {v12, v13, v14}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->value(D)D

    move-result-wide v15

    aput-wide v15, v10, v11

    .line 133
    .end local v12    # "spline":Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    move-wide/from16 v13, p1

    .line 141
    .end local v11    # "zIndex":I
    invoke-virtual {v6, v4, v10}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v1

    .line 143
    .local v1, "spline":Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    move-wide/from16 v11, p3

    invoke-virtual {v1, v11, v12}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->value(D)D

    move-result-wide v15

    .line 145
    .local v15, "returnValue":D
    return-wide v15
.end method
