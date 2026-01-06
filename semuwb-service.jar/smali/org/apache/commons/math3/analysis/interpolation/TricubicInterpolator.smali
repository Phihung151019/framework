.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;
.super Ljava/lang/Object;
.source "TricubicInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/interpolation/TrivariateGridInterpolator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/TrivariateFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 30
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;

    move-result-object p1

    return-object p1
.end method

.method public interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;
    .locals 54
    .param p1, "xval"    # [D
    .param p2, "yval"    # [D
    .param p3, "zval"    # [D
    .param p4, "fval"    # [[[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 41
    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    array-length v0, v2

    if-eqz v0, :cond_6

    array-length v0, v3

    if-eqz v0, :cond_6

    array-length v0, v4

    if-eqz v0, :cond_6

    array-length v0, v5

    if-eqz v0, :cond_6

    .line 44
    array-length v0, v2

    array-length v1, v5

    if-ne v0, v1, :cond_5

    .line 48
    invoke-static {v2}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 49
    invoke-static {v3}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 50
    invoke-static {v4}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 52
    array-length v0, v2

    .line 53
    .local v0, "xLen":I
    array-length v1, v3

    .line 54
    .local v1, "yLen":I
    array-length v6, v4

    .line 57
    .local v6, "zLen":I
    const/4 v7, 0x3

    new-array v8, v7, [I

    const/4 v9, 0x2

    aput v6, v8, v9

    const/4 v10, 0x1

    aput v1, v8, v10

    const/4 v11, 0x0

    aput v0, v8, v11

    sget-object v12, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v12, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[[D

    .line 58
    .local v8, "dFdX":[[[D
    new-array v12, v7, [I

    aput v6, v12, v9

    aput v1, v12, v10

    aput v0, v12, v11

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v12}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [[[D

    .line 59
    .local v12, "dFdY":[[[D
    new-array v13, v7, [I

    aput v6, v13, v9

    aput v1, v13, v10

    aput v0, v13, v11

    sget-object v14, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[[D

    .line 60
    .local v13, "dFdZ":[[[D
    new-array v14, v7, [I

    aput v6, v14, v9

    aput v1, v14, v10

    aput v0, v14, v11

    sget-object v15, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[[D

    .line 61
    .local v14, "d2FdXdY":[[[D
    new-array v15, v7, [I

    aput v6, v15, v9

    aput v1, v15, v10

    aput v0, v15, v11

    move/from16 v16, v9

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[[D

    .line 62
    .local v9, "d2FdXdZ":[[[D
    new-array v15, v7, [I

    aput v6, v15, v16

    aput v1, v15, v10

    aput v0, v15, v11

    move/from16 v17, v10

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[[D

    .line 63
    .local v10, "d2FdYdZ":[[[D
    new-array v7, v7, [I

    aput v6, v7, v16

    aput v1, v7, v17

    aput v0, v7, v11

    sget-object v11, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[[D

    .line 65
    .local v7, "d3FdXdYdZ":[[[D
    const/4 v11, 0x1

    .local v11, "i":I
    :goto_0
    add-int/lit8 v15, v0, -0x1

    if-ge v11, v15, :cond_4

    .line 66
    array-length v15, v3

    move/from16 v16, v0

    .end local v0    # "xLen":I
    .local v16, "xLen":I
    aget-object v0, v5, v11

    array-length v0, v0

    if-ne v15, v0, :cond_3

    .line 70
    add-int/lit8 v0, v11, 0x1

    .line 71
    .local v0, "nI":I
    add-int/lit8 v15, v11, -0x1

    .line 73
    .local v15, "pI":I
    aget-wide v17, v2, v0

    .line 74
    .local v17, "nX":D
    aget-wide v19, v2, v15

    .line 76
    .local v19, "pX":D
    sub-double v21, v17, v19

    .line 78
    .local v21, "deltaX":D
    const/16 v23, 0x1

    move/from16 v24, v0

    move/from16 v0, v23

    .local v0, "j":I
    .local v24, "nI":I
    :goto_1
    move/from16 v23, v1

    .end local v1    # "yLen":I
    .local v23, "yLen":I
    add-int/lit8 v1, v23, -0x1

    if-ge v0, v1, :cond_2

    .line 79
    array-length v1, v4

    aget-object v25, v5, v11

    move/from16 v26, v0

    .end local v0    # "j":I
    .local v26, "j":I
    aget-object v0, v25, v26

    array-length v0, v0

    if-ne v1, v0, :cond_1

    .line 83
    add-int/lit8 v0, v26, 0x1

    .line 84
    .local v0, "nJ":I
    add-int/lit8 v1, v26, -0x1

    .line 86
    .local v1, "pJ":I
    aget-wide v27, v3, v0

    .line 87
    .local v27, "nY":D
    aget-wide v29, v3, v1

    .line 89
    .local v29, "pY":D
    sub-double v31, v27, v29

    .line 90
    .local v31, "deltaY":D
    mul-double v33, v21, v31

    .line 92
    .local v33, "deltaXY":D
    const/16 v25, 0x1

    move/from16 v35, v0

    move/from16 v0, v25

    .local v0, "k":I
    .local v35, "nJ":I
    :goto_2
    move/from16 v25, v1

    .end local v1    # "pJ":I
    .local v25, "pJ":I
    add-int/lit8 v1, v6, -0x1

    if-ge v0, v1, :cond_0

    .line 93
    add-int/lit8 v1, v0, 0x1

    .line 94
    .local v1, "nK":I
    add-int/lit8 v36, v0, -0x1

    .line 96
    .local v36, "pK":I
    aget-wide v37, v4, v1

    .line 97
    .local v37, "nZ":D
    aget-wide v39, v4, v36

    .line 99
    .local v39, "pZ":D
    sub-double v41, v37, v39

    .line 101
    .local v41, "deltaZ":D
    aget-object v43, v8, v11

    aget-object v43, v43, v26

    aget-object v44, v5, v24

    aget-object v44, v44, v26

    aget-wide v44, v44, v0

    aget-object v46, v5, v15

    aget-object v46, v46, v26

    aget-wide v46, v46, v0

    sub-double v44, v44, v46

    div-double v44, v44, v21

    aput-wide v44, v43, v0

    .line 102
    aget-object v43, v12, v11

    aget-object v43, v43, v26

    aget-object v44, v5, v11

    aget-object v44, v44, v35

    aget-wide v44, v44, v0

    aget-object v46, v5, v11

    aget-object v46, v46, v25

    aget-wide v46, v46, v0

    sub-double v44, v44, v46

    div-double v44, v44, v31

    aput-wide v44, v43, v0

    .line 103
    aget-object v43, v13, v11

    aget-object v43, v43, v26

    aget-object v44, v5, v11

    aget-object v44, v44, v26

    aget-wide v44, v44, v1

    aget-object v46, v5, v11

    aget-object v46, v46, v26

    aget-wide v46, v46, v36

    sub-double v44, v44, v46

    div-double v44, v44, v41

    aput-wide v44, v43, v0

    .line 105
    mul-double v43, v21, v41

    .line 106
    .local v43, "deltaXZ":D
    mul-double v45, v31, v41

    .line 108
    .local v45, "deltaYZ":D
    aget-object v47, v14, v11

    aget-object v47, v47, v26

    aget-object v48, v5, v24

    aget-object v48, v48, v35

    aget-wide v48, v48, v0

    aget-object v50, v5, v24

    aget-object v50, v50, v25

    aget-wide v50, v50, v0

    sub-double v48, v48, v50

    aget-object v50, v5, v15

    aget-object v50, v50, v35

    aget-wide v50, v50, v0

    sub-double v48, v48, v50

    aget-object v50, v5, v15

    aget-object v50, v50, v25

    aget-wide v50, v50, v0

    add-double v48, v48, v50

    div-double v48, v48, v33

    aput-wide v48, v47, v0

    .line 109
    aget-object v47, v9, v11

    aget-object v47, v47, v26

    aget-object v48, v5, v24

    aget-object v48, v48, v26

    aget-wide v48, v48, v1

    aget-object v50, v5, v24

    aget-object v50, v50, v26

    aget-wide v50, v50, v36

    sub-double v48, v48, v50

    aget-object v50, v5, v15

    aget-object v50, v50, v26

    aget-wide v50, v50, v1

    sub-double v48, v48, v50

    aget-object v50, v5, v15

    aget-object v50, v50, v26

    aget-wide v50, v50, v36

    add-double v48, v48, v50

    div-double v48, v48, v43

    aput-wide v48, v47, v0

    .line 110
    aget-object v47, v10, v11

    aget-object v47, v47, v26

    aget-object v48, v5, v11

    aget-object v48, v48, v35

    aget-wide v48, v48, v1

    aget-object v50, v5, v11

    aget-object v50, v50, v35

    aget-wide v50, v50, v36

    sub-double v48, v48, v50

    aget-object v50, v5, v11

    aget-object v50, v50, v25

    aget-wide v50, v50, v1

    sub-double v48, v48, v50

    aget-object v50, v5, v11

    aget-object v50, v50, v25

    aget-wide v50, v50, v36

    add-double v48, v48, v50

    div-double v48, v48, v45

    aput-wide v48, v47, v0

    .line 112
    mul-double v47, v33, v41

    .line 114
    .local v47, "deltaXYZ":D
    aget-object v49, v7, v11

    aget-object v49, v49, v26

    aget-object v50, v5, v24

    aget-object v50, v50, v35

    aget-wide v50, v50, v1

    aget-object v52, v5, v24

    aget-object v52, v52, v25

    aget-wide v52, v52, v1

    sub-double v50, v50, v52

    aget-object v52, v5, v15

    aget-object v52, v52, v35

    aget-wide v52, v52, v1

    sub-double v50, v50, v52

    aget-object v52, v5, v15

    aget-object v52, v52, v25

    aget-wide v52, v52, v1

    add-double v50, v50, v52

    aget-object v52, v5, v24

    aget-object v52, v52, v35

    aget-wide v52, v52, v36

    sub-double v50, v50, v52

    aget-object v52, v5, v24

    aget-object v52, v52, v25

    aget-wide v52, v52, v36

    add-double v50, v50, v52

    aget-object v52, v5, v15

    aget-object v52, v52, v35

    aget-wide v52, v52, v36

    add-double v50, v50, v52

    aget-object v52, v5, v15

    aget-object v52, v52, v25

    aget-wide v52, v52, v36

    sub-double v50, v50, v52

    div-double v50, v50, v47

    aput-wide v50, v49, v0

    .line 92
    .end local v1    # "nK":I
    .end local v36    # "pK":I
    .end local v37    # "nZ":D
    .end local v39    # "pZ":D
    .end local v41    # "deltaZ":D
    .end local v43    # "deltaXZ":D
    .end local v45    # "deltaYZ":D
    .end local v47    # "deltaXYZ":D
    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v25

    goto/16 :goto_2

    .line 78
    .end local v0    # "k":I
    .end local v25    # "pJ":I
    .end local v27    # "nY":D
    .end local v29    # "pY":D
    .end local v31    # "deltaY":D
    .end local v33    # "deltaXY":D
    .end local v35    # "nJ":I
    :cond_0
    add-int/lit8 v0, v26, 0x1

    move/from16 v1, v23

    .end local v26    # "j":I
    .local v0, "j":I
    goto/16 :goto_1

    .line 80
    .end local v0    # "j":I
    .restart local v26    # "j":I
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v4

    aget-object v25, v5, v11

    aget-object v2, v25, v26

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 78
    .end local v26    # "j":I
    .restart local v0    # "j":I
    :cond_2
    move/from16 v26, v0

    .line 65
    .end local v0    # "j":I
    .end local v15    # "pI":I
    .end local v17    # "nX":D
    .end local v19    # "pX":D
    .end local v21    # "deltaX":D
    .end local v24    # "nI":I
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    move/from16 v0, v16

    move/from16 v1, v23

    goto/16 :goto_0

    .line 67
    .end local v23    # "yLen":I
    .local v1, "yLen":I
    :cond_3
    move/from16 v23, v1

    .end local v1    # "yLen":I
    .restart local v23    # "yLen":I
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v3

    aget-object v2, v5, v11

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 65
    .end local v16    # "xLen":I
    .end local v23    # "yLen":I
    .local v0, "xLen":I
    .restart local v1    # "yLen":I
    :cond_4
    move/from16 v16, v0

    move/from16 v23, v1

    .line 123
    .end local v0    # "xLen":I
    .end local v1    # "yLen":I
    .end local v11    # "i":I
    .restart local v16    # "xLen":I
    .restart local v23    # "yLen":I
    new-instance v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;

    move v1, v6

    move-object v6, v8

    move-object v8, v13

    .end local v13    # "dFdZ":[[[D
    .local v1, "zLen":I
    .local v6, "dFdX":[[[D
    .local v8, "dFdZ":[[[D
    move-object/from16 v13, p1

    move-object v11, v10

    move-object v10, v9

    move-object v9, v14

    .end local v14    # "d2FdXdY":[[[D
    .local v9, "d2FdXdY":[[[D
    .local v10, "d2FdXdZ":[[[D
    .local v11, "d2FdYdZ":[[[D
    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object v2, v12

    move-object v12, v7

    move-object v7, v2

    move-object/from16 v2, p1

    move/from16 v17, v1

    move-object/from16 v1, p0

    .end local v1    # "zLen":I
    .local v7, "dFdY":[[[D
    .local v12, "d3FdXdYdZ":[[[D
    .local v17, "zLen":I
    invoke-direct/range {v0 .. v15}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;-><init>(Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;[D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[D[D[D)V

    return-object v0

    .line 45
    .end local v6    # "dFdX":[[[D
    .end local v7    # "dFdY":[[[D
    .end local v8    # "dFdZ":[[[D
    .end local v9    # "d2FdXdY":[[[D
    .end local v10    # "d2FdXdZ":[[[D
    .end local v11    # "d2FdYdZ":[[[D
    .end local v12    # "d3FdXdYdZ":[[[D
    .end local v16    # "xLen":I
    .end local v17    # "zLen":I
    .end local v23    # "yLen":I
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v2

    array-length v3, v5

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 42
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0
.end method
