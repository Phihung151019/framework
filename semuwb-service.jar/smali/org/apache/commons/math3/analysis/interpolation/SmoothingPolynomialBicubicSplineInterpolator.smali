.class public Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;
.super Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;
.source "SmoothingPolynomialBicubicSplineInterpolator.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final xDegree:I

.field private final xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

.field private final yDegree:I

.field private final yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "degree"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p1}, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;-><init>(II)V

    .line 65
    return-void
.end method

.method public constructor <init>(II)V
    .locals 9
    .param p1, "xDegree"    # I
    .param p2, "yDegree"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;-><init>()V

    .line 76
    if-ltz p1, :cond_1

    .line 79
    if-ltz p2, :cond_0

    .line 82
    iput p1, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xDegree:I

    .line 83
    iput p2, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yDegree:I

    .line 85
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    .line 86
    .local v0, "safeFactor":D
    new-instance v2, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;

    sget-wide v3, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    mul-double/2addr v3, v5

    sget-wide v7, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    mul-double/2addr v7, v5

    invoke-direct {v2, v3, v4, v7, v8}, Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;-><init>(DD)V

    .line 89
    .local v2, "checker":Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;
    new-instance v3, Lorg/apache/commons/math3/fitting/PolynomialFitter;

    new-instance v4, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/fitting/PolynomialFitter;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V

    iput-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    .line 90
    new-instance v3, Lorg/apache/commons/math3/fitting/PolynomialFitter;

    new-instance v4, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;

    invoke-direct {v4, v5, v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/GaussNewtonOptimizer;-><init>(ZLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/fitting/PolynomialFitter;-><init>(Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;)V

    iput-object v3, p0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    .line 91
    return-void

    .line 80
    .end local v0    # "safeFactor":D
    .end local v2    # "checker":Lorg/apache/commons/math3/optim/SimpleVectorValueChecker;
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 77
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
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

    .line 39
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
    .locals 24
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "fval"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 102
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v1

    if-eqz v4, :cond_b

    array-length v4, v2

    if-eqz v4, :cond_b

    array-length v4, v3

    if-eqz v4, :cond_b

    .line 105
    array-length v4, v1

    array-length v5, v3

    if-ne v4, v5, :cond_a

    .line 109
    array-length v4, v1

    .line 110
    .local v4, "xLen":I
    array-length v5, v2

    .line 112
    .local v5, "yLen":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_1

    .line 113
    aget-object v7, v3, v6

    array-length v7, v7

    if-ne v7, v5, :cond_0

    .line 112
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 114
    :cond_0
    new-instance v7, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v8, v3, v6

    array-length v8, v8

    invoke-direct {v7, v8, v5}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v7

    .line 118
    .end local v6    # "i":I
    :cond_1
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 119
    invoke-static {v2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 123
    new-array v6, v5, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 124
    .local v6, "yPolyX":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    const/4 v8, 0x1

    if-ge v7, v5, :cond_3

    .line 125
    iget-object v9, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    invoke-virtual {v9}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->clearObservations()V

    .line 126
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    if-ge v9, v4, :cond_2

    .line 127
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    aget-wide v13, v1, v9

    aget-object v11, v3, v9

    aget-wide v15, v11, v7

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v10 .. v16}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->addObservedPoint(DDD)V

    .line 126
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 132
    .end local v9    # "i":I
    :cond_2
    new-instance v9, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    iget v11, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->xDegree:I

    add-int/2addr v11, v8

    new-array v8, v11, [D

    invoke-virtual {v10, v8}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->fit([D)[D

    move-result-object v8

    invoke-direct {v9, v8}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v9, v6, v7

    .line 124
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 137
    .end local v7    # "j":I
    :cond_3
    const/4 v7, 0x2

    new-array v9, v7, [I

    aput v5, v9, v8

    const/4 v10, 0x0

    aput v4, v9, v10

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[D

    .line 138
    .local v9, "fval_1":[[D
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3
    if-ge v11, v5, :cond_5

    .line 139
    aget-object v12, v6, v11

    .line 140
    .local v12, "f":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    if-ge v13, v4, :cond_4

    .line 141
    aget-object v14, v9, v13

    move v15, v8

    move-object/from16 v16, v9

    .end local v9    # "fval_1":[[D
    .local v16, "fval_1":[[D
    aget-wide v8, v1, v13

    invoke-virtual {v12, v8, v9}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->value(D)D

    move-result-wide v8

    aput-wide v8, v14, v11

    .line 140
    add-int/lit8 v13, v13, 0x1

    move v8, v15

    move-object/from16 v9, v16

    goto :goto_4

    .end local v16    # "fval_1":[[D
    .restart local v9    # "fval_1":[[D
    :cond_4
    move v15, v8

    move-object/from16 v16, v9

    .line 138
    .end local v9    # "fval_1":[[D
    .end local v12    # "f":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .end local v13    # "i":I
    .restart local v16    # "fval_1":[[D
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v16    # "fval_1":[[D
    .restart local v9    # "fval_1":[[D
    :cond_5
    move v15, v8

    move-object/from16 v16, v9

    .line 147
    .end local v9    # "fval_1":[[D
    .end local v11    # "j":I
    .restart local v16    # "fval_1":[[D
    new-array v8, v4, [Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    .line 148
    .local v8, "xPolyY":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_5
    if-ge v9, v4, :cond_7

    .line 149
    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    invoke-virtual {v11}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->clearObservations()V

    .line 150
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_6
    if-ge v11, v5, :cond_6

    .line 151
    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    aget-wide v20, v2, v11

    aget-object v13, v16, v9

    aget-wide v22, v13, v11

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-object/from16 v17, v12

    invoke-virtual/range {v17 .. v23}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->addObservedPoint(DDD)V

    .line 150
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 156
    .end local v11    # "j":I
    :cond_6
    new-instance v11, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yFitter:Lorg/apache/commons/math3/fitting/PolynomialFitter;

    iget v13, v0, Lorg/apache/commons/math3/analysis/interpolation/SmoothingPolynomialBicubicSplineInterpolator;->yDegree:I

    add-int/2addr v13, v15

    new-array v13, v13, [D

    invoke-virtual {v12, v13}, Lorg/apache/commons/math3/fitting/PolynomialFitter;->fit([D)[D

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;-><init>([D)V

    aput-object v11, v8, v9

    .line 148
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 161
    .end local v9    # "i":I
    :cond_7
    new-array v7, v7, [I

    aput v5, v7, v15

    aput v4, v7, v10

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 162
    .local v7, "fval_2":[[D
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_7
    if-ge v9, v4, :cond_9

    .line 163
    aget-object v10, v8, v9

    .line 164
    .local v10, "f":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_8
    if-ge v11, v5, :cond_8

    .line 165
    aget-object v12, v7, v9

    aget-wide v13, v2, v11

    invoke-virtual {v10, v13, v14}, Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;->value(D)D

    move-result-wide v13

    aput-wide v13, v12, v11

    .line 164
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 162
    .end local v10    # "f":Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .end local v11    # "j":I
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 169
    .end local v9    # "i":I
    :cond_9
    invoke-super {v0, v1, v2, v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;

    move-result-object v9

    return-object v9

    .line 106
    .end local v4    # "xLen":I
    .end local v5    # "yLen":I
    .end local v6    # "yPolyX":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .end local v7    # "fval_2":[[D
    .end local v8    # "xPolyY":[Lorg/apache/commons/math3/analysis/polynomials/PolynomialFunction;
    .end local v16    # "fval_1":[[D
    :cond_a
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v5, v1

    array-length v6, v3

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 103
    :cond_b
    new-instance v4, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v4}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v4
.end method
