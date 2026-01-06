.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.super Ljava/lang/Object;
.source "BicubicInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# static fields
.field private static final AINV:[[D

.field private static final NUM_COEFF:I = 0x10


# instance fields
.field private final splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

.field private final xval:[D

.field private final yval:[D


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 42
    const/16 v0, 0x10

    new-array v1, v0, [D

    fill-array-data v1, :array_0

    new-array v2, v0, [D

    fill-array-data v2, :array_1

    new-array v3, v0, [D

    fill-array-data v3, :array_2

    new-array v4, v0, [D

    fill-array-data v4, :array_3

    new-array v5, v0, [D

    fill-array-data v5, :array_4

    new-array v6, v0, [D

    fill-array-data v6, :array_5

    new-array v7, v0, [D

    fill-array-data v7, :array_6

    new-array v8, v0, [D

    fill-array-data v8, :array_7

    new-array v9, v0, [D

    fill-array-data v9, :array_8

    new-array v10, v0, [D

    fill-array-data v10, :array_9

    new-array v11, v0, [D

    fill-array-data v11, :array_a

    new-array v12, v0, [D

    fill-array-data v12, :array_b

    new-array v13, v0, [D

    fill-array-data v13, :array_c

    new-array v14, v0, [D

    fill-array-data v14, :array_d

    new-array v15, v0, [D

    fill-array-data v15, :array_e

    new-array v0, v0, [D

    fill-array-data v0, :array_f

    move-object/from16 v16, v0

    filled-new-array/range {v1 .. v16}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->AINV:[[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_2
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_3
    .array-data 8
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_5
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_6
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_9
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_a
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_b
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_c
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_e
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_f
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>([D[D[[D[[D[[D[[D)V
    .locals 57
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "f"    # [[D
    .param p4, "dFdX"    # [[D
    .param p5, "dFdY"    # [[D
    .param p6, "d2FdXdY"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 92
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 93
    move-object/from16 v5, p1

    array-length v6, v5

    .line 94
    .local v6, "xLen":I
    move-object/from16 v7, p2

    array-length v8, v7

    .line 96
    .local v8, "yLen":I
    if-eqz v6, :cond_a

    if-eqz v8, :cond_a

    array-length v9, v1

    if-eqz v9, :cond_a

    const/4 v9, 0x0

    aget-object v10, v1, v9

    array-length v10, v10

    if-eqz v10, :cond_a

    .line 99
    array-length v10, v1

    if-ne v6, v10, :cond_9

    .line 102
    array-length v10, v2

    if-ne v6, v10, :cond_8

    .line 105
    array-length v10, v3

    if-ne v6, v10, :cond_7

    .line 108
    array-length v10, v4

    if-ne v6, v10, :cond_6

    .line 112
    invoke-static {v5}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 113
    invoke-static {v7}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 115
    invoke-virtual {v5}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    iput-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    .line 116
    invoke-virtual {v7}, [D->clone()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [D

    iput-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    .line 118
    add-int/lit8 v10, v6, -0x1

    .line 119
    .local v10, "lastI":I
    add-int/lit8 v11, v8, -0x1

    .line 120
    .local v11, "lastJ":I
    const/4 v12, 0x2

    new-array v13, v12, [I

    const/4 v14, 0x1

    aput v11, v13, v14

    aput v10, v13, v9

    const-class v15, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    invoke-static {v15, v13}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    iput-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    .line 122
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    if-ge v13, v10, :cond_5

    .line 123
    aget-object v15, v1, v13

    array-length v15, v15

    if-ne v15, v8, :cond_4

    .line 126
    aget-object v15, v2, v13

    array-length v15, v15

    if-ne v15, v8, :cond_3

    .line 129
    aget-object v15, v3, v13

    array-length v15, v15

    if-ne v15, v8, :cond_2

    .line 132
    aget-object v15, v4, v13

    array-length v15, v15

    if-ne v15, v8, :cond_1

    .line 135
    add-int/lit8 v15, v13, 0x1

    .line 136
    .local v15, "ip1":I
    move/from16 v16, v9

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v17, v9, v15

    iget-object v9, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v19, v9, v13

    sub-double v17, v17, v19

    .line 137
    .local v17, "xR":D
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    if-ge v9, v11, :cond_0

    .line 138
    add-int/lit8 v19, v9, 0x1

    .line 139
    .local v19, "jp1":I
    move/from16 v20, v12

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v21, v12, v19

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v23, v12, v9

    sub-double v21, v21, v23

    .line 140
    .local v21, "yR":D
    mul-double v23, v17, v21

    .line 141
    .local v23, "xRyR":D
    aget-object v12, v1, v13

    aget-wide v25, v12, v9

    aget-object v12, v1, v15

    aget-wide v27, v12, v9

    aget-object v12, v1, v13

    aget-wide v29, v12, v19

    aget-object v12, v1, v15

    aget-wide v31, v12, v19

    aget-object v12, v2, v13

    aget-wide v33, v12, v9

    mul-double v33, v33, v17

    aget-object v12, v2, v15

    aget-wide v35, v12, v9

    mul-double v35, v35, v17

    aget-object v12, v2, v13

    aget-wide v37, v12, v19

    mul-double v37, v37, v17

    aget-object v12, v2, v15

    aget-wide v39, v12, v19

    mul-double v39, v39, v17

    aget-object v12, v3, v13

    aget-wide v41, v12, v9

    mul-double v41, v41, v21

    aget-object v12, v3, v15

    aget-wide v43, v12, v9

    mul-double v43, v43, v21

    aget-object v12, v3, v13

    aget-wide v45, v12, v19

    mul-double v45, v45, v21

    aget-object v12, v3, v15

    aget-wide v47, v12, v19

    mul-double v47, v47, v21

    aget-object v12, v4, v13

    aget-wide v49, v12, v9

    mul-double v49, v49, v23

    aget-object v12, v4, v15

    aget-wide v51, v12, v9

    mul-double v51, v51, v23

    aget-object v12, v4, v13

    aget-wide v53, v12, v19

    mul-double v53, v53, v23

    aget-object v12, v4, v15

    aget-wide v55, v12, v19

    mul-double v55, v55, v23

    const/16 v12, 0x10

    new-array v12, v12, [D

    aput-wide v25, v12, v16

    aput-wide v27, v12, v14

    aput-wide v29, v12, v20

    const/16 v25, 0x3

    aput-wide v31, v12, v25

    const/16 v25, 0x4

    aput-wide v33, v12, v25

    const/16 v25, 0x5

    aput-wide v35, v12, v25

    const/16 v25, 0x6

    aput-wide v37, v12, v25

    const/16 v25, 0x7

    aput-wide v39, v12, v25

    const/16 v25, 0x8

    aput-wide v41, v12, v25

    const/16 v25, 0x9

    aput-wide v43, v12, v25

    const/16 v25, 0xa

    aput-wide v45, v12, v25

    const/16 v25, 0xb

    aput-wide v47, v12, v25

    const/16 v25, 0xc

    aput-wide v49, v12, v25

    const/16 v25, 0xd

    aput-wide v51, v12, v25

    const/16 v25, 0xe

    aput-wide v53, v12, v25

    const/16 v25, 0xf

    aput-wide v55, v12, v25

    .line 148
    .local v12, "beta":[D
    iget-object v14, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    aget-object v14, v14, v13

    new-instance v5, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    invoke-direct {v0, v12}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->computeSplineCoefficients([D)[D

    move-result-object v7

    invoke-direct {v5, v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;-><init>([D)V

    aput-object v5, v14, v9

    .line 137
    .end local v12    # "beta":[D
    .end local v19    # "jp1":I
    .end local v21    # "yR":D
    .end local v23    # "xRyR":D
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move/from16 v12, v20

    const/4 v14, 0x1

    goto/16 :goto_1

    :cond_0
    move/from16 v20, v12

    .line 122
    .end local v9    # "j":I
    .end local v15    # "ip1":I
    .end local v17    # "xR":D
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    move/from16 v9, v16

    const/4 v14, 0x1

    goto/16 :goto_0

    .line 133
    :cond_1
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v7, v4, v13

    array-length v7, v7

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 130
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v7, v3, v13

    array-length v7, v7

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 127
    :cond_3
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v7, v2, v13

    array-length v7, v7

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 124
    :cond_4
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v7, v1, v13

    array-length v7, v7

    invoke-direct {v5, v7, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 151
    .end local v13    # "i":I
    :cond_5
    return-void

    .line 109
    .end local v10    # "lastI":I
    .end local v11    # "lastJ":I
    :cond_6
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v7, v4

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 106
    :cond_7
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v7, v3

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 103
    :cond_8
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v7, v2

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 100
    :cond_9
    new-instance v5, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v7, v1

    invoke-direct {v5, v6, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v5

    .line 97
    :cond_a
    new-instance v5, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v5}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v5
.end method

.method private computeSplineCoefficients([D)[D
    .locals 11
    .param p1, "beta"    # [D

    .line 247
    const/16 v0, 0x10

    new-array v1, v0, [D

    .line 249
    .local v1, "a":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 250
    const-wide/16 v3, 0x0

    .line 251
    .local v3, "result":D
    sget-object v5, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->AINV:[[D

    aget-object v5, v5, v2

    .line 252
    .local v5, "row":[D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v0, :cond_0

    .line 253
    aget-wide v7, v5, v6

    aget-wide v9, p1, v6

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    .line 252
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 255
    .end local v6    # "j":I
    :cond_0
    aput-wide v3, v1, v2

    .line 249
    .end local v3    # "result":D
    .end local v5    # "row":[D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private searchIndex(D[D)I
    .locals 6
    .param p1, "c"    # D
    .param p3, "val"    # [D

    .line 194
    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    .line 196
    .local v0, "r":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    array-length v1, p3

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    .line 201
    if-gez v0, :cond_0

    .line 204
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x2

    return v1

    .line 206
    :cond_0
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    .line 207
    .local v1, "last":I
    if-ne v0, v1, :cond_1

    .line 210
    add-int/lit8 v2, v1, -0x1

    return v2

    .line 214
    :cond_1
    return v0

    .line 198
    .end local v1    # "last":I
    :cond_2
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

    .line 175
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmpg-double v0, p1, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double v0, p1, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v4, v0, v1

    cmpg-double v0, p3, v4

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    array-length v2, v2

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double v0, p3, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    return v3

    .line 179
    :cond_1
    :goto_0
    return v1
.end method

.method public value(DD)D
    .locals 10
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v0

    .line 159
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    invoke-direct {p0, p3, p4, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v1

    .line 161
    .local v1, "j":I
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v2, v2, v0

    sub-double v2, p1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->xval:[D

    aget-wide v6, v6, v0

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    .line 162
    .local v2, "xN":D
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v4, v4, v1

    sub-double v4, p3, v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    add-int/lit8 v7, v1, 0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->yval:[D

    aget-wide v8, v8, v1

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    .line 164
    .local v4, "yN":D
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    invoke-virtual {v6, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicFunction;->value(DD)D

    move-result-wide v6

    return-wide v6
.end method
