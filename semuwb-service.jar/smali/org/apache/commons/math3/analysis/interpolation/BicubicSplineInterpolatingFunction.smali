.class public Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final AINV:[[D

.field private static final NUM_COEFF:I = 0x10


# instance fields
.field private final partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

.field private final splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

.field private final xval:[D

.field private final yval:[D


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 46
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

    sput-object v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->AINV:[[D

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
    .locals 8
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

    .line 107
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .end local p1    # "x":[D
    .end local p2    # "y":[D
    .end local p3    # "f":[[D
    .end local p4    # "dFdX":[[D
    .end local p5    # "dFdY":[[D
    .end local p6    # "d2FdXdY":[[D
    .local v1, "x":[D
    .local v2, "y":[D
    .local v3, "f":[[D
    .local v4, "dFdX":[[D
    .local v5, "dFdY":[[D
    .local v6, "d2FdXdY":[[D
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;-><init>([D[D[[D[[D[[D[[DZ)V

    .line 108
    return-void
.end method

.method public constructor <init>([D[D[[D[[D[[D[[DZ)V
    .locals 55
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "f"    # [[D
    .param p4, "dFdX"    # [[D
    .param p5, "dFdY"    # [[D
    .param p6, "d2FdXdY"    # [[D
    .param p7, "initializeDerivatives"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 145
    move-object/from16 v6, p1

    array-length v7, v6

    .line 146
    .local v7, "xLen":I
    move-object/from16 v8, p2

    array-length v9, v8

    .line 148
    .local v9, "yLen":I
    if-eqz v7, :cond_d

    if-eqz v9, :cond_d

    array-length v10, v1

    if-eqz v10, :cond_d

    const/4 v10, 0x0

    aget-object v11, v1, v10

    array-length v11, v11

    if-eqz v11, :cond_d

    .line 151
    array-length v11, v1

    if-ne v7, v11, :cond_c

    .line 154
    array-length v11, v2

    if-ne v7, v11, :cond_b

    .line 157
    array-length v11, v3

    if-ne v7, v11, :cond_a

    .line 160
    array-length v11, v4

    if-ne v7, v11, :cond_9

    .line 164
    invoke-static {v6}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 165
    invoke-static {v8}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 167
    invoke-virtual {v6}, [D->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    iput-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    .line 168
    invoke-virtual {v8}, [D->clone()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [D

    iput-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    .line 170
    add-int/lit8 v11, v7, -0x1

    .line 171
    .local v11, "lastI":I
    add-int/lit8 v12, v9, -0x1

    .line 172
    .local v12, "lastJ":I
    const/4 v13, 0x2

    new-array v14, v13, [I

    const/4 v15, 0x1

    aput v12, v14, v15

    aput v11, v14, v10

    move/from16 v16, v10

    const-class v10, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    invoke-static {v10, v14}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iput-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    .line 174
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/16 v17, 0x5

    move/from16 v18, v13

    if-ge v10, v11, :cond_5

    .line 175
    const/16 v19, 0x4

    aget-object v14, v1, v10

    array-length v14, v14

    if-ne v14, v9, :cond_4

    .line 178
    aget-object v14, v2, v10

    array-length v14, v14

    if-ne v14, v9, :cond_3

    .line 181
    aget-object v14, v3, v10

    array-length v14, v14

    if-ne v14, v9, :cond_2

    .line 184
    aget-object v14, v4, v10

    array-length v14, v14

    if-ne v14, v9, :cond_1

    .line 187
    add-int/lit8 v14, v10, 0x1

    .line 188
    .local v14, "ip1":I
    const/16 v20, 0x0

    move/from16 v21, v15

    move/from16 v15, v20

    .local v15, "j":I
    :goto_1
    if-ge v15, v12, :cond_0

    .line 189
    add-int/lit8 v20, v15, 0x1

    .line 190
    .local v20, "jp1":I
    aget-object v22, v1, v10

    aget-wide v22, v22, v15

    aget-object v24, v1, v14

    aget-wide v24, v24, v15

    aget-object v26, v1, v10

    aget-wide v26, v26, v20

    aget-object v28, v1, v14

    aget-wide v28, v28, v20

    aget-object v30, v2, v10

    aget-wide v30, v30, v15

    aget-object v32, v2, v14

    aget-wide v32, v32, v15

    aget-object v34, v2, v10

    aget-wide v34, v34, v20

    aget-object v36, v2, v14

    aget-wide v36, v36, v20

    aget-object v38, v3, v10

    aget-wide v38, v38, v15

    aget-object v40, v3, v14

    aget-wide v40, v40, v15

    aget-object v42, v3, v10

    aget-wide v42, v42, v20

    aget-object v44, v3, v14

    aget-wide v44, v44, v20

    aget-object v46, v4, v10

    aget-wide v46, v46, v15

    aget-object v48, v4, v14

    aget-wide v48, v48, v15

    aget-object v50, v4, v10

    aget-wide v50, v50, v20

    aget-object v52, v4, v14

    aget-wide v52, v52, v20

    const/16 v54, 0x3

    const/16 v13, 0x10

    new-array v13, v13, [D

    aput-wide v22, v13, v16

    aput-wide v24, v13, v21

    aput-wide v26, v13, v18

    aput-wide v28, v13, v54

    aput-wide v30, v13, v19

    aput-wide v32, v13, v17

    const/16 v22, 0x6

    aput-wide v34, v13, v22

    const/16 v22, 0x7

    aput-wide v36, v13, v22

    const/16 v22, 0x8

    aput-wide v38, v13, v22

    const/16 v22, 0x9

    aput-wide v40, v13, v22

    const/16 v22, 0xa

    aput-wide v42, v13, v22

    const/16 v22, 0xb

    aput-wide v44, v13, v22

    const/16 v22, 0xc

    aput-wide v46, v13, v22

    const/16 v22, 0xd

    aput-wide v48, v13, v22

    const/16 v22, 0xe

    aput-wide v50, v13, v22

    const/16 v22, 0xf

    aput-wide v52, v13, v22

    .line 197
    .local v13, "beta":[D
    iget-object v6, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    aget-object v6, v6, v10

    move-object/from16 v22, v6

    new-instance v6, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    invoke-direct {v0, v13}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->computeSplineCoefficients([D)[D

    move-result-object v8

    invoke-direct {v6, v8, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;-><init>([DZ)V

    aput-object v6, v22, v15

    .line 188
    .end local v13    # "beta":[D
    .end local v20    # "jp1":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    goto/16 :goto_1

    .line 174
    .end local v14    # "ip1":I
    .end local v15    # "j":I
    :cond_0
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v6, p1

    move-object/from16 v8, p2

    move/from16 v13, v18

    move/from16 v15, v21

    goto/16 :goto_0

    .line 185
    :cond_1
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v8, v4, v10

    array-length v8, v8

    invoke-direct {v6, v8, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 182
    :cond_2
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v8, v3, v10

    array-length v8, v8

    invoke-direct {v6, v8, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 179
    :cond_3
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v8, v2, v10

    array-length v8, v8

    invoke-direct {v6, v8, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 176
    :cond_4
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v8, v1, v10

    array-length v8, v8

    invoke-direct {v6, v8, v9}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 174
    :cond_5
    move/from16 v21, v15

    const/16 v19, 0x4

    const/16 v54, 0x3

    .line 202
    .end local v10    # "i":I
    if-eqz v5, :cond_8

    .line 204
    move/from16 v6, v54

    new-array v8, v6, [I

    aput v12, v8, v18

    aput v11, v8, v21

    aput v17, v8, v16

    const-class v6, Lorg/apache/commons/math3/analysis/BivariateFunction;

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    iput-object v6, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 206
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v11, :cond_7

    .line 207
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_3
    if-ge v8, v12, :cond_6

    .line 208
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    aget-object v10, v10, v6

    aget-object v10, v10, v8

    .line 209
    .local v10, "bcs":Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    aget-object v13, v13, v16

    aget-object v13, v13, v6

    invoke-virtual {v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeX()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v14

    aput-object v14, v13, v8

    .line 210
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    aget-object v13, v13, v21

    aget-object v13, v13, v6

    invoke-virtual {v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeY()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v14

    aput-object v14, v13, v8

    .line 211
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    aget-object v13, v13, v18

    aget-object v13, v13, v6

    invoke-virtual {v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXX()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v14

    aput-object v14, v13, v8

    .line 212
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    const/16 v54, 0x3

    aget-object v13, v13, v54

    aget-object v13, v13, v6

    invoke-virtual {v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeYY()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v14

    aput-object v14, v13, v8

    .line 213
    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    aget-object v13, v13, v19

    aget-object v13, v13, v6

    invoke-virtual {v10}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->partialDerivativeXY()Lorg/apache/commons/math3/analysis/BivariateFunction;

    move-result-object v14

    aput-object v14, v13, v8

    .line 207
    .end local v10    # "bcs":Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_6
    const/16 v54, 0x3

    .line 206
    .end local v8    # "j":I
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v6    # "i":I
    :cond_7
    goto :goto_4

    .line 218
    :cond_8
    const/4 v6, 0x0

    move-object v8, v6

    check-cast v8, [[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    iput-object v6, v0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    .line 220
    :goto_4
    return-void

    .line 161
    .end local v11    # "lastI":I
    .end local v12    # "lastJ":I
    :cond_9
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v8, v4

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 158
    :cond_a
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v8, v3

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 155
    :cond_b
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v8, v2

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 152
    :cond_c
    new-instance v6, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v8, v1

    invoke-direct {v6, v7, v8}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v6

    .line 149
    :cond_d
    new-instance v6, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v6}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v6
.end method

.method private computeSplineCoefficients([D)[D
    .locals 11
    .param p1, "beta"    # [D

    .line 420
    const/16 v0, 0x10

    new-array v1, v0, [D

    .line 422
    .local v1, "a":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 423
    const-wide/16 v3, 0x0

    .line 424
    .local v3, "result":D
    sget-object v5, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->AINV:[[D

    aget-object v5, v5, v2

    .line 425
    .local v5, "row":[D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_1
    if-ge v6, v0, :cond_0

    .line 426
    aget-wide v7, v5, v6

    aget-wide v9, p1, v6

    mul-double/2addr v7, v9

    add-double/2addr v3, v7

    .line 425
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 428
    .end local v6    # "j":I
    :cond_0
    aput-wide v3, v1, v2

    .line 422
    .end local v3    # "result":D
    .end local v5    # "row":[D
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 431
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method private partialDerivative(IDD)D
    .locals 10
    .param p1, "which"    # I
    .param p2, "x"    # D
    .param p4, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    invoke-direct {p0, p2, p3, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v0

    .line 350
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    invoke-direct {p0, p4, p5, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v1

    .line 352
    .local v1, "j":I
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    aget-wide v2, v2, v0

    sub-double v2, p2, v2

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    aget-wide v6, v6, v0

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    .line 353
    .local v2, "xN":D
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v4, v4, v1

    sub-double v4, p4, v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    add-int/lit8 v7, v1, 0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v8, v8, v1

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    .line 355
    .local v4, "yN":D
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivatives:[[[Lorg/apache/commons/math3/analysis/BivariateFunction;

    aget-object v6, v6, p1

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    invoke-interface {v6, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/BivariateFunction;->value(DD)D

    move-result-wide v6

    return-wide v6
.end method

.method private searchIndex(D[D)I
    .locals 6
    .param p1, "c"    # D
    .param p3, "val"    # [D

    .line 367
    invoke-static {p3, p1, p2}, Ljava/util/Arrays;->binarySearch([DD)I

    move-result v0

    .line 369
    .local v0, "r":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    array-length v1, p3

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_2

    .line 374
    if-gez v0, :cond_0

    .line 377
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x2

    return v1

    .line 379
    :cond_0
    array-length v1, p3

    add-int/lit8 v1, v1, -0x1

    .line 380
    .local v1, "last":I
    if-ne v0, v1, :cond_1

    .line 383
    add-int/lit8 v2, v1, -0x1

    return v2

    .line 387
    :cond_1
    return v0

    .line 371
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

    .line 245
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmpg-double v0, p1, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double v0, p1, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v4, v0, v1

    cmpg-double v0, p3, v4

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    array-length v2, v2

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double v0, p3, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    return v3

    .line 249
    :cond_1
    :goto_0
    return v1
.end method

.method public partialDerivativeX(DD)D
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 269
    const/4 v1, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "x":D
    .end local p3    # "y":D
    .local v2, "x":D
    .local v4, "y":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public partialDerivativeXX(DD)D
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 301
    const/4 v1, 0x2

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "x":D
    .end local p3    # "y":D
    .local v2, "x":D
    .local v4, "y":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public partialDerivativeXY(DD)D
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 332
    const/4 v1, 0x4

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "x":D
    .end local p3    # "y":D
    .local v2, "x":D
    .local v4, "y":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public partialDerivativeY(DD)D
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 285
    const/4 v1, 0x1

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "x":D
    .end local p3    # "y":D
    .local v2, "x":D
    .local v4, "y":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide p1

    return-wide p1
.end method

.method public partialDerivativeYY(DD)D
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 317
    const/4 v1, 0x3

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "x":D
    .end local p3    # "y":D
    .local v2, "x":D
    .local v4, "y":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->partialDerivative(IDD)D

    move-result-wide p1

    return-wide p1
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

    .line 227
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v0

    .line 228
    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    invoke-direct {p0, p3, p4, v1}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->searchIndex(D[D)I

    move-result v1

    .line 230
    .local v1, "j":I
    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    aget-wide v2, v2, v0

    sub-double v2, p1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->xval:[D

    aget-wide v6, v6, v0

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    .line 231
    .local v2, "xN":D
    iget-object v4, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v4, v4, v1

    sub-double v4, p3, v4

    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    add-int/lit8 v7, v1, 0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->yval:[D

    aget-wide v8, v8, v1

    sub-double/2addr v6, v8

    div-double/2addr v4, v6

    .line 233
    .local v4, "yN":D
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineInterpolatingFunction;->splines:[[Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    aget-object v6, v6, v0

    aget-object v6, v6, v1

    invoke-virtual {v6, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->value(DD)D

    move-result-wide v6

    return-wide v6
.end method
