.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;
.super Ljava/lang/Object;
.source "BicubicInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/BivariateGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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

    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
    .locals 33
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

    .line 52
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    array-length v0, v2

    if-eqz v0, :cond_3

    array-length v0, v3

    if-eqz v0, :cond_3

    array-length v0, v4

    if-eqz v0, :cond_3

    .line 55
    array-length v0, v2

    array-length v1, v4

    if-ne v0, v1, :cond_2

    .line 59
    invoke-static {v2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 60
    invoke-static {v3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 62
    array-length v10, v2

    .line 63
    .local v10, "xLen":I
    array-length v11, v3

    .line 66
    .local v11, "yLen":I
    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v5, 0x1

    aput v11, v1, v5

    const/4 v6, 0x0

    aput v10, v1, v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 67
    .local v1, "dFdX":[[D
    new-array v7, v0, [I

    aput v11, v7, v5

    aput v10, v7, v6

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[D

    .line 68
    .local v7, "dFdY":[[D
    new-array v0, v0, [I

    aput v11, v0, v5

    aput v10, v0, v6

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    .line 69
    .local v0, "d2FdXdY":[[D
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    add-int/lit8 v6, v10, -0x1

    if-ge v5, v6, :cond_1

    .line 70
    add-int/lit8 v6, v5, 0x1

    .line 71
    .local v6, "nI":I
    add-int/lit8 v8, v5, -0x1

    .line 73
    .local v8, "pI":I
    aget-wide v12, v2, v6

    .line 74
    .local v12, "nX":D
    aget-wide v14, v2, v8

    .line 76
    .local v14, "pX":D
    sub-double v16, v12, v14

    .line 78
    .local v16, "deltaX":D
    const/4 v9, 0x1

    .local v9, "j":I
    :goto_1
    move-object/from16 v18, v0

    .end local v0    # "d2FdXdY":[[D
    .local v18, "d2FdXdY":[[D
    add-int/lit8 v0, v11, -0x1

    if-ge v9, v0, :cond_0

    .line 79
    add-int/lit8 v0, v9, 0x1

    .line 80
    .local v0, "nJ":I
    add-int/lit8 v19, v9, -0x1

    .line 82
    .local v19, "pJ":I
    aget-wide v20, v3, v0

    .line 83
    .local v20, "nY":D
    aget-wide v22, v3, v19

    .line 85
    .local v22, "pY":D
    sub-double v24, v20, v22

    .line 87
    .local v24, "deltaY":D
    aget-object v26, v1, v5

    aget-object v27, v4, v6

    aget-wide v27, v27, v9

    aget-object v29, v4, v8

    aget-wide v29, v29, v9

    sub-double v27, v27, v29

    div-double v27, v27, v16

    aput-wide v27, v26, v9

    .line 88
    aget-object v26, v7, v5

    aget-object v27, v4, v5

    aget-wide v27, v27, v0

    aget-object v29, v4, v5

    aget-wide v29, v29, v19

    sub-double v27, v27, v29

    div-double v27, v27, v24

    aput-wide v27, v26, v9

    .line 90
    mul-double v26, v16, v24

    .line 92
    .local v26, "deltaXY":D
    aget-object v28, v18, v5

    aget-object v29, v4, v6

    aget-wide v29, v29, v0

    aget-object v31, v4, v6

    aget-wide v31, v31, v19

    sub-double v29, v29, v31

    aget-object v31, v4, v8

    aget-wide v31, v31, v0

    sub-double v29, v29, v31

    aget-object v31, v4, v8

    aget-wide v31, v31, v19

    add-double v29, v29, v31

    div-double v29, v29, v26

    aput-wide v29, v28, v9

    .line 78
    .end local v0    # "nJ":I
    .end local v19    # "pJ":I
    .end local v20    # "nY":D
    .end local v22    # "pY":D
    .end local v24    # "deltaY":D
    .end local v26    # "deltaXY":D
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v18

    goto :goto_1

    .line 69
    .end local v6    # "nI":I
    .end local v8    # "pI":I
    .end local v9    # "j":I
    .end local v12    # "nX":D
    .end local v14    # "pX":D
    .end local v16    # "deltaX":D
    :cond_0
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v18

    goto :goto_0

    .end local v18    # "d2FdXdY":[[D
    .local v0, "d2FdXdY":[[D
    :cond_1
    move-object/from16 v18, v0

    .line 97
    .end local v0    # "d2FdXdY":[[D
    .end local v5    # "i":I
    .restart local v18    # "d2FdXdY":[[D
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object v5, v1

    move-object v6, v7

    move-object/from16 v7, v18

    move-object/from16 v1, p0

    .end local v1    # "dFdX":[[D
    .end local v18    # "d2FdXdY":[[D
    .local v5, "dFdX":[[D
    .local v6, "dFdY":[[D
    .local v7, "d2FdXdY":[[D
    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;[D[D[[D[[D[[D[[D[D[D)V

    .end local v7    # "d2FdXdY":[[D
    .restart local v18    # "d2FdXdY":[[D
    return-object v0

    .line 56
    .end local v5    # "dFdX":[[D
    .end local v6    # "dFdY":[[D
    .end local v10    # "xLen":I
    .end local v11    # "yLen":I
    .end local v18    # "d2FdXdY":[[D
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v2

    array-length v3, v4

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 53
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method
