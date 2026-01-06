.class public Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;
.super Ljava/lang/Object;
.source "AkimaSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# static fields
.field private static final MINIMUM_NUMBER_POINTS:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private differentiateThreePoint([D[DIIII)D
    .locals 18
    .param p1, "xvals"    # [D
    .param p2, "yvals"    # [D
    .param p3, "indexOfDifferentiation"    # I
    .param p4, "indexOfFirstSample"    # I
    .param p5, "indexOfSecondsample"    # I
    .param p6, "indexOfThirdSample"    # I

    .line 148
    aget-wide v0, p2, p4

    .line 149
    .local v0, "x0":D
    aget-wide v2, p2, p5

    .line 150
    .local v2, "x1":D
    aget-wide v4, p2, p6

    .line 152
    .local v4, "x2":D
    aget-wide v6, p1, p3

    aget-wide v8, p1, p4

    sub-double/2addr v6, v8

    .line 153
    .local v6, "t":D
    aget-wide v8, p1, p5

    aget-wide v10, p1, p4

    sub-double/2addr v8, v10

    .line 154
    .local v8, "t1":D
    aget-wide v10, p1, p6

    aget-wide v12, p1, p4

    sub-double/2addr v10, v12

    .line 156
    .local v10, "t2":D
    sub-double v12, v4, v0

    div-double v14, v10, v8

    sub-double v16, v2, v0

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    mul-double v14, v10, v10

    mul-double v16, v8, v10

    sub-double v14, v14, v16

    div-double/2addr v12, v14

    .line 157
    .local v12, "a":D
    sub-double v14, v2, v0

    mul-double v16, v12, v8

    mul-double v16, v16, v8

    sub-double v14, v14, v16

    div-double/2addr v14, v8

    .line 159
    .local v14, "b":D
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v12

    mul-double v16, v16, v6

    add-double v16, v16, v14

    return-wide v16
.end method

.method private interpolateHermiteSorted([D[D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 28
    .param p1, "xvals"    # [D
    .param p2, "yvals"    # [D
    .param p3, "firstDerivatives"    # [D

    .line 175
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    array-length v3, v0

    array-length v4, v1

    if-ne v3, v4, :cond_3

    .line 179
    array-length v3, v0

    array-length v4, v2

    if-ne v3, v4, :cond_2

    .line 184
    const/4 v3, 0x2

    .line 185
    .local v3, "minimumLength":I
    array-length v4, v0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-lt v4, v5, :cond_1

    .line 191
    array-length v4, v0

    sub-int/2addr v4, v6

    .line 192
    .local v4, "size":I
    new-array v7, v4, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 193
    .local v7, "polynomials":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v8, 0x4

    new-array v8, v8, [D

    .line 195
    .local v8, "coefficients":[D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v7

    if-ge v9, v10, :cond_0

    .line 196
    add-int/lit8 v10, v9, 0x1

    aget-wide v10, v0, v10

    aget-wide v12, v0, v9

    sub-double/2addr v10, v12

    .line 197
    .local v10, "w":D
    mul-double v12, v10, v10

    .line 199
    .local v12, "w2":D
    aget-wide v14, v1, v9

    .line 200
    .local v14, "yv":D
    add-int/lit8 v16, v9, 0x1

    aget-wide v16, v1, v16

    .line 202
    .local v16, "yvP":D
    aget-wide v18, v2, v9

    .line 203
    .local v18, "fd":D
    add-int/lit8 v20, v9, 0x1

    aget-wide v20, v2, v20

    .line 205
    .local v20, "fdP":D
    const/16 v22, 0x0

    aput-wide v14, v8, v22

    .line 206
    aget-wide v22, v2, v9

    aput-wide v22, v8, v6

    .line 207
    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    sub-double v24, v16, v14

    mul-double v24, v24, v22

    div-double v24, v24, v10

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    mul-double v26, v18, v22

    sub-double v24, v24, v26

    sub-double v24, v24, v20

    div-double v24, v24, v10

    aput-wide v24, v8, v5

    .line 208
    sub-double v24, v14, v16

    mul-double v24, v24, v22

    div-double v24, v24, v10

    add-double v24, v24, v18

    add-double v24, v24, v20

    div-double v24, v24, v12

    const/16 v22, 0x3

    aput-wide v24, v8, v22

    .line 209
    move/from16 v22, v5

    new-instance v5, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v5, v8}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v5, v7, v9

    .line 195
    .end local v10    # "w":D
    .end local v12    # "w2":D
    .end local v14    # "yv":D
    .end local v16    # "yvP":D
    .end local v18    # "fd":D
    .end local v20    # "fdP":D
    add-int/lit8 v9, v9, 0x1

    move/from16 v5, v22

    goto :goto_0

    .line 212
    .end local v9    # "i":I
    :cond_0
    new-instance v5, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    invoke-direct {v5, v0, v7}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object v5

    .line 186
    .end local v4    # "size":I
    .end local v7    # "polynomials":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .end local v8    # "coefficients":[D
    :cond_1
    move/from16 v22, v5

    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v7, v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v4, v5, v7, v8, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4

    .line 180
    .end local v3    # "minimumLength":I
    :cond_2
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, v0

    array-length v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 176
    :cond_3
    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, v0

    array-length v5, v1

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3
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

    .line 48
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 24
    .param p1, "xvals"    # [D
    .param p2, "yvals"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 71
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v1, :cond_6

    if-eqz v2, :cond_6

    .line 76
    array-length v0, v1

    array-length v3, v2

    if-ne v0, v3, :cond_5

    .line 80
    array-length v0, v1

    const/4 v3, 0x5

    const/4 v7, 0x1

    if-lt v0, v3, :cond_4

    .line 86
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 88
    array-length v0, v1

    add-int/lit8 v8, v0, -0x1

    .line 90
    .local v8, "numberOfDiffAndWeightElements":I
    new-array v9, v8, [D

    .line 91
    .local v9, "differences":[D
    new-array v10, v8, [D

    .line 93
    .local v10, "weights":[D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v9

    if-ge v0, v3, :cond_0

    .line 94
    add-int/lit8 v3, v0, 0x1

    aget-wide v3, v2, v3

    aget-wide v5, v2, v0

    sub-double/2addr v3, v5

    add-int/lit8 v5, v0, 0x1

    aget-wide v5, v1, v5

    aget-wide v11, v1, v0

    sub-double/2addr v5, v11

    div-double/2addr v3, v5

    aput-wide v3, v9, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_1
    array-length v3, v10

    if-ge v0, v3, :cond_1

    .line 98
    aget-wide v3, v9, v0

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v9, v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    aput-wide v3, v10, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 102
    .end local v0    # "i":I
    :cond_1
    array-length v0, v1

    new-array v11, v0, [D

    .line 104
    .local v11, "firstDerivatives":[D
    const/4 v0, 0x2

    .restart local v0    # "i":I
    :goto_2
    array-length v3, v11

    add-int/lit8 v3, v3, -0x2

    if-ge v0, v3, :cond_3

    .line 105
    add-int/lit8 v3, v0, 0x1

    aget-wide v3, v10, v3

    .line 106
    .local v3, "wP":D
    add-int/lit8 v5, v0, -0x1

    aget-wide v5, v10, v5

    .line 107
    .local v5, "wM":D
    const-wide/16 v12, 0x0

    invoke-static {v3, v4, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-static {v5, v6, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 109
    aget-wide v12, v1, v0

    .line 110
    .local v12, "xv":D
    add-int/lit8 v14, v0, 0x1

    aget-wide v14, v1, v14

    .line 111
    .local v14, "xvP":D
    add-int/lit8 v16, v0, -0x1

    aget-wide v16, v1, v16

    .line 112
    .local v16, "xvM":D
    sub-double v18, v14, v12

    add-int/lit8 v20, v0, -0x1

    aget-wide v20, v9, v20

    mul-double v18, v18, v20

    sub-double v20, v12, v16

    aget-wide v22, v9, v0

    mul-double v20, v20, v22

    add-double v18, v18, v20

    sub-double v20, v14, v16

    div-double v18, v18, v20

    aput-wide v18, v11, v0

    .line 113
    .end local v12    # "xv":D
    .end local v14    # "xvP":D
    .end local v16    # "xvM":D
    goto :goto_3

    .line 114
    :cond_2
    add-int/lit8 v12, v0, -0x1

    aget-wide v12, v9, v12

    mul-double/2addr v12, v3

    aget-wide v14, v9, v0

    mul-double/2addr v14, v5

    add-double/2addr v12, v14

    add-double v14, v3, v5

    div-double/2addr v12, v14

    aput-wide v12, v11, v0

    .line 104
    .end local v3    # "wP":D
    .end local v5    # "wM":D
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 118
    .end local v0    # "i":I
    :cond_3
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->differentiateThreePoint([D[DIIII)D

    move-result-wide v3

    const/4 v0, 0x0

    aput-wide v3, v11, v0

    .line 119
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->differentiateThreePoint([D[DIIII)D

    move-result-wide v3

    aput-wide v3, v11, v7

    .line 120
    array-length v0, v1

    add-int/lit8 v12, v0, -0x2

    array-length v0, v1

    add-int/lit8 v3, v0, -0x2

    array-length v0, v1

    add-int/lit8 v4, v0, -0x3

    array-length v0, v1

    add-int/lit8 v5, v0, -0x2

    array-length v0, v1

    add-int/lit8 v6, v0, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->differentiateThreePoint([D[DIIII)D

    move-result-wide v3

    aput-wide v3, v11, v12

    .line 123
    array-length v0, v1

    add-int/lit8 v12, v0, -0x1

    array-length v0, v1

    add-int/lit8 v3, v0, -0x1

    array-length v0, v1

    add-int/lit8 v4, v0, -0x3

    array-length v0, v1

    add-int/lit8 v5, v0, -0x2

    array-length v0, v1

    add-int/lit8 v6, v0, -0x1

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->differentiateThreePoint([D[DIIII)D

    move-result-wide v3

    aput-wide v3, v11, v12

    .line 127
    invoke-direct {v0, v1, v2, v11}, Lorg/apache/commons/math3/analysis/interpolation/AkimaSplineInterpolator;->interpolateHermiteSorted([D[D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v3

    return-object v3

    .line 81
    .end local v8    # "numberOfDiffAndWeightElements":I
    .end local v9    # "differences":[D
    .end local v10    # "weights":[D
    .end local v11    # "firstDerivatives":[D
    :cond_4
    move-object/from16 v0, p0

    new-instance v4, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v6, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v4, v5, v6, v3, v7}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v4

    .line 77
    :cond_5
    move-object/from16 v0, p0

    new-instance v3, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v4, v1

    array-length v5, v2

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v3

    .line 71
    :cond_6
    move-object/from16 v0, p0

    .line 73
    new-instance v3, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v3
.end method
