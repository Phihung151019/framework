.class public Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;
.super Ljava/lang/Object;
.source "SplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/UnivariateInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 52
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .locals 28
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 69
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_5

    .line 73
    array-length v2, v0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-lt v2, v3, :cond_4

    .line 79
    array-length v2, v0

    sub-int/2addr v2, v4

    .line 81
    .local v2, "n":I
    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 84
    new-array v5, v2, [D

    .line 85
    .local v5, "h":[D
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_0

    .line 86
    add-int/lit8 v7, v6, 0x1

    aget-wide v7, v0, v7

    aget-wide v9, v0, v6

    sub-double/2addr v7, v9

    aput-wide v7, v5, v6

    .line 85
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 89
    .end local v6    # "i":I
    :cond_0
    new-array v6, v2, [D

    .line 90
    .local v6, "mu":[D
    add-int/lit8 v7, v2, 0x1

    new-array v7, v7, [D

    .line 91
    .local v7, "z":[D
    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    aput-wide v9, v6, v8

    .line 92
    aput-wide v9, v7, v8

    .line 93
    const-wide/16 v11, 0x0

    .line 94
    .local v11, "g":D
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_1
    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    const-wide/high16 v16, 0x4008000000000000L    # 3.0

    if-ge v13, v2, :cond_1

    .line 95
    add-int/lit8 v18, v13, 0x1

    aget-wide v18, v0, v18

    add-int/lit8 v20, v13, -0x1

    aget-wide v20, v0, v20

    sub-double v18, v18, v20

    mul-double v18, v18, v14

    add-int/lit8 v14, v13, -0x1

    aget-wide v14, v5, v14

    add-int/lit8 v20, v13, -0x1

    aget-wide v20, v6, v20

    mul-double v14, v14, v20

    sub-double v11, v18, v14

    .line 96
    aget-wide v14, v5, v13

    div-double/2addr v14, v11

    aput-wide v14, v6, v13

    .line 97
    add-int/lit8 v14, v13, 0x1

    aget-wide v14, v1, v14

    add-int/lit8 v18, v13, -0x1

    aget-wide v18, v5, v18

    mul-double v14, v14, v18

    aget-wide v18, v1, v13

    add-int/lit8 v20, v13, 0x1

    aget-wide v20, v0, v20

    add-int/lit8 v22, v13, -0x1

    aget-wide v22, v0, v22

    sub-double v20, v20, v22

    mul-double v18, v18, v20

    sub-double v14, v14, v18

    add-int/lit8 v18, v13, -0x1

    aget-wide v18, v1, v18

    aget-wide v20, v5, v13

    mul-double v18, v18, v20

    add-double v14, v14, v18

    mul-double v14, v14, v16

    add-int/lit8 v16, v13, -0x1

    aget-wide v16, v5, v16

    aget-wide v18, v5, v13

    mul-double v16, v16, v18

    div-double v14, v14, v16

    add-int/lit8 v16, v13, -0x1

    aget-wide v16, v5, v16

    add-int/lit8 v18, v13, -0x1

    aget-wide v18, v7, v18

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    div-double/2addr v14, v11

    aput-wide v14, v7, v13

    .line 94
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 102
    .end local v13    # "i":I
    :cond_1
    new-array v13, v2, [D

    .line 103
    .local v13, "b":[D
    move/from16 v18, v3

    add-int/lit8 v3, v2, 0x1

    new-array v3, v3, [D

    .line 104
    .local v3, "c":[D
    move/from16 v19, v8

    new-array v8, v2, [D

    .line 106
    .local v8, "d":[D
    aput-wide v9, v7, v2

    .line 107
    aput-wide v9, v3, v2

    .line 109
    add-int/lit8 v9, v2, -0x1

    .local v9, "j":I
    :goto_2
    if-ltz v9, :cond_2

    .line 110
    aget-wide v20, v7, v9

    aget-wide v22, v6, v9

    add-int/lit8 v10, v9, 0x1

    aget-wide v24, v3, v10

    mul-double v22, v22, v24

    sub-double v20, v20, v22

    aput-wide v20, v3, v9

    .line 111
    add-int/lit8 v10, v9, 0x1

    aget-wide v20, v1, v10

    aget-wide v22, v1, v9

    sub-double v20, v20, v22

    aget-wide v22, v5, v9

    div-double v20, v20, v22

    aget-wide v22, v5, v9

    add-int/lit8 v10, v9, 0x1

    aget-wide v24, v3, v10

    aget-wide v26, v3, v9

    mul-double v26, v26, v14

    add-double v24, v24, v26

    mul-double v22, v22, v24

    div-double v22, v22, v16

    sub-double v20, v20, v22

    aput-wide v20, v13, v9

    .line 112
    add-int/lit8 v10, v9, 0x1

    aget-wide v20, v3, v10

    aget-wide v22, v3, v9

    sub-double v20, v20, v22

    aget-wide v22, v5, v9

    mul-double v22, v22, v16

    div-double v20, v20, v22

    aput-wide v20, v8, v9

    .line 109
    add-int/lit8 v9, v9, -0x1

    goto :goto_2

    .line 115
    .end local v9    # "j":I
    :cond_2
    new-array v9, v2, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 116
    .local v9, "polynomials":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v10, 0x4

    new-array v10, v10, [D

    .line 117
    .local v10, "coefficients":[D
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    if-ge v14, v2, :cond_3

    .line 118
    aget-wide v15, v1, v14

    aput-wide v15, v10, v19

    .line 119
    aget-wide v15, v13, v14

    aput-wide v15, v10, v4

    .line 120
    const/4 v15, 0x2

    aget-wide v16, v3, v14

    aput-wide v16, v10, v15

    .line 121
    aget-wide v15, v8, v14

    aput-wide v15, v10, v18

    .line 122
    new-instance v15, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    invoke-direct {v15, v10}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v15, v9, v14

    .line 117
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 125
    .end local v14    # "i":I
    :cond_3
    new-instance v4, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    invoke-direct {v4, v0, v9}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;-><init>([D[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;)V

    return-object v4

    .line 74
    .end local v2    # "n":I
    .end local v3    # "c":[D
    .end local v5    # "h":[D
    .end local v6    # "mu":[D
    .end local v7    # "z":[D
    .end local v8    # "d":[D
    .end local v9    # "polynomials":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .end local v10    # "coefficients":[D
    .end local v11    # "g":D
    .end local v13    # "b":[D
    :cond_4
    move/from16 v18, v3

    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v2, v3, v5, v6, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 70
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v0

    array-length v4, v1

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method
