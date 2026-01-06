.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/BivariateGridInterpolator;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final initializeDerivatives:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>(Z)V

    .line 48
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "initializeDerivatives"    # Z

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-boolean p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->initializeDerivatives:Z

    .line 60
    return-void
.end method

.method private nextIndex(II)I
    .locals 2
    .param p1, "i"    # I
    .param p2, "max"    # I

    .line 161
    add-int/lit8 v0, p1, 0x1

    .line 162
    .local v0, "index":I
    if-ge v0, p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    :goto_0
    return v1
.end method

.method private previousIndex(I)I
    .locals 2
    .param p1, "i"    # I

    .line 173
    add-int/lit8 v0, p1, -0x1

    .line 174
    .local v0, "index":I
    if-ltz v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/BivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 34
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .locals 27
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "fval"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 70
    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    array-length v1, v2

    if-eqz v1, :cond_c

    array-length v1, v3

    if-eqz v1, :cond_c

    array-length v1, v4

    if-eqz v1, :cond_c

    .line 73
    array-length v1, v2

    array-length v5, v4

    if-ne v1, v5, :cond_b

    .line 77
    invoke-static {v2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 78
    invoke-static {v3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 80
    array-length v9, v2

    .line 81
    .local v9, "xLen":I
    array-length v10, v3

    .line 87
    .local v10, "yLen":I
    const/4 v1, 0x2

    new-array v5, v1, [I

    const/4 v6, 0x1

    aput v9, v5, v6

    const/4 v7, 0x0

    aput v10, v5, v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, [[D

    .line 88
    .local v11, "fX":[[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v9, :cond_2

    .line 89
    aget-object v8, v4, v5

    array-length v8, v8

    if-ne v8, v10, :cond_1

    .line 93
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v10, :cond_0

    .line 94
    aget-object v12, v11, v8

    aget-object v13, v4, v5

    aget-wide v13, v13, v8

    aput-wide v13, v12, v5

    .line 93
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 88
    .end local v8    # "j":I
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 90
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v6, v4, v5

    array-length v6, v6

    invoke-direct {v1, v6, v10}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 98
    .end local v5    # "i":I
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;-><init>()V

    move-object v12, v5

    .line 102
    .local v12, "spInterpolator":Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;
    new-array v13, v10, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    .line 103
    .local v13, "ySplineX":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_2
    if-ge v5, v10, :cond_3

    .line 104
    aget-object v8, v11, v5

    invoke-virtual {v12, v2, v8}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v8

    aput-object v8, v13, v5

    .line 103
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 109
    .end local v5    # "j":I
    :cond_3
    new-array v14, v9, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    .line 110
    .local v14, "xSplineY":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    if-ge v5, v9, :cond_4

    .line 111
    aget-object v8, v4, v5

    invoke-virtual {v12, v3, v8}, Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;->interpolate([D[D)Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;

    move-result-object v8

    aput-object v8, v14, v5

    .line 110
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 115
    .end local v5    # "i":I
    :cond_4
    new-array v5, v1, [I

    aput v10, v5, v6

    aput v9, v5, v7

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 116
    .local v5, "dFdX":[[D
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_4
    if-ge v8, v10, :cond_6

    .line 117
    aget-object v15, v13, v8

    invoke-virtual {v15}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v15

    .line 118
    .local v15, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    const/16 v16, 0x0

    move/from16 v17, v6

    move/from16 v6, v16

    .local v6, "i":I
    :goto_5
    if-ge v6, v9, :cond_5

    .line 119
    aget-object v16, v5, v6

    move/from16 v18, v7

    move/from16 v19, v8

    .end local v8    # "j":I
    .local v19, "j":I
    aget-wide v7, v2, v6

    invoke-interface {v15, v7, v8}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v7

    aput-wide v7, v16, v19

    .line 118
    add-int/lit8 v6, v6, 0x1

    move/from16 v7, v18

    move/from16 v8, v19

    goto :goto_5

    .end local v19    # "j":I
    .restart local v8    # "j":I
    :cond_5
    move/from16 v18, v7

    move/from16 v19, v8

    .line 116
    .end local v6    # "i":I
    .end local v8    # "j":I
    .end local v15    # "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .restart local v19    # "j":I
    add-int/lit8 v8, v19, 0x1

    move/from16 v6, v17

    .end local v19    # "j":I
    .restart local v8    # "j":I
    goto :goto_4

    :cond_6
    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v8

    .line 124
    .end local v8    # "j":I
    new-array v6, v1, [I

    aput v10, v6, v17

    aput v9, v6, v18

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[D

    .line 125
    .local v6, "dFdY":[[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_6
    if-ge v7, v9, :cond_8

    .line 126
    aget-object v8, v14, v7

    invoke-virtual {v8}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v8

    .line 127
    .local v8, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_7
    if-ge v15, v10, :cond_7

    .line 128
    aget-object v16, v6, v7

    aget-wide v1, v3, v15

    invoke-interface {v8, v1, v2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v1

    aput-wide v1, v16, v15

    .line 127
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v2, p1

    const/4 v1, 0x2

    goto :goto_7

    .line 125
    .end local v8    # "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local v15    # "j":I
    :cond_7
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p1

    const/4 v1, 0x2

    goto :goto_6

    .line 133
    .end local v7    # "i":I
    :cond_8
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v10, v1, v17

    aput v9, v1, v18

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[D

    .line 134
    .local v7, "d2FdXdY":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    if-ge v1, v9, :cond_a

    .line 135
    invoke-direct {v0, v1, v9}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->nextIndex(II)I

    move-result v2

    .line 136
    .local v2, "nI":I
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->previousIndex(I)I

    move-result v8

    .line 137
    .local v8, "pI":I
    const/4 v15, 0x0

    .restart local v15    # "j":I
    :goto_9
    if-ge v15, v10, :cond_9

    .line 138
    invoke-direct {v0, v15, v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->nextIndex(II)I

    move-result v16

    .line 139
    .local v16, "nJ":I
    invoke-direct {v0, v15}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->previousIndex(I)I

    move-result v17

    .line 140
    .local v17, "pJ":I
    aget-object v18, v7, v1

    aget-object v19, v4, v2

    aget-wide v19, v19, v16

    aget-object v21, v4, v2

    aget-wide v21, v21, v17

    sub-double v19, v19, v21

    aget-object v21, v4, v8

    aget-wide v21, v21, v16

    sub-double v19, v19, v21

    aget-object v21, v4, v8

    aget-wide v21, v21, v17

    add-double v19, v19, v21

    aget-wide v21, p1, v2

    aget-wide v23, p1, v8

    sub-double v21, v21, v23

    aget-wide v23, v3, v16

    aget-wide v25, v3, v17

    sub-double v23, v23, v25

    mul-double v21, v21, v23

    div-double v19, v19, v21

    aput-wide v19, v18, v15

    .line 137
    .end local v16    # "nJ":I
    .end local v17    # "pJ":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 134
    .end local v2    # "nI":I
    .end local v8    # "pI":I
    .end local v15    # "j":I
    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 147
    .end local v1    # "i":I
    :cond_a
    new-instance v1, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    iget-boolean v8, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->initializeDerivatives:Z

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;-><init>([D[D[[D[[D[[D[[DZ)V

    return-object v1

    .line 74
    .end local v5    # "dFdX":[[D
    .end local v6    # "dFdY":[[D
    .end local v7    # "d2FdXdY":[[D
    .end local v9    # "xLen":I
    .end local v10    # "yLen":I
    .end local v11    # "fX":[[D
    .end local v12    # "spInterpolator":Lorg/apache/commons/math3/analysis/interpolation/SplineInterpolator;
    .end local v13    # "ySplineX":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    .end local v14    # "xSplineY":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialSplineFunction;
    :cond_b
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, v2

    array-length v5, v4

    invoke-direct {v1, v3, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 71
    :cond_c
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1
.end method
