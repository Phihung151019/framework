.class public Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;
.super Ljava/lang/Object;
.source "TricubicInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/TrivariateFunction;


# static fields
.field private static final AINV:[[D


# instance fields
.field private final splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

.field private final xval:[D

.field private final yval:[D

.field private final zval:[D


# direct methods
.method static constructor <clinit>()V
    .locals 65

    .line 44
    const/16 v0, 0x40

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

    move-object/from16 v16, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_f

    move-object/from16 v17, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_10

    move-object/from16 v18, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_11

    move-object/from16 v19, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_12

    move-object/from16 v20, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_13

    move-object/from16 v21, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_14

    move-object/from16 v22, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_15

    move-object/from16 v23, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_16

    move-object/from16 v24, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_17

    move-object/from16 v25, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_18

    move-object/from16 v26, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_19

    move-object/from16 v27, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_1a

    move-object/from16 v28, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_1b

    move-object/from16 v29, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_1c

    move-object/from16 v30, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_1d

    move-object/from16 v31, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_1e

    move-object/from16 v32, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_1f

    move-object/from16 v33, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_20

    move-object/from16 v34, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_21

    move-object/from16 v35, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_22

    move-object/from16 v36, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_23

    move-object/from16 v37, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_24

    move-object/from16 v38, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_25

    move-object/from16 v39, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_26

    move-object/from16 v40, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_27

    move-object/from16 v41, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_28

    move-object/from16 v42, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_29

    move-object/from16 v43, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_2a

    move-object/from16 v44, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_2b

    move-object/from16 v45, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_2c

    move-object/from16 v46, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_2d

    move-object/from16 v47, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_2e

    move-object/from16 v48, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_2f

    move-object/from16 v49, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_30

    move-object/from16 v50, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_31

    move-object/from16 v51, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_32

    move-object/from16 v52, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_33

    move-object/from16 v53, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_34

    move-object/from16 v54, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_35

    move-object/from16 v55, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_36

    move-object/from16 v56, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_37

    move-object/from16 v57, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_38

    move-object/from16 v58, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_39

    move-object/from16 v59, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_3a

    move-object/from16 v60, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_3b

    move-object/from16 v61, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_3c

    move-object/from16 v62, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_3d

    move-object/from16 v63, v1

    new-array v1, v0, [D

    fill-array-data v1, :array_3e

    new-array v0, v0, [D

    fill-array-data v0, :array_3f

    move-object/from16 v64, v63

    move-object/from16 v63, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    move-object/from16 v35, v36

    move-object/from16 v36, v37

    move-object/from16 v37, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v40

    move-object/from16 v40, v41

    move-object/from16 v41, v42

    move-object/from16 v42, v43

    move-object/from16 v43, v44

    move-object/from16 v44, v45

    move-object/from16 v45, v46

    move-object/from16 v46, v47

    move-object/from16 v47, v48

    move-object/from16 v48, v49

    move-object/from16 v49, v50

    move-object/from16 v50, v51

    move-object/from16 v51, v52

    move-object/from16 v52, v53

    move-object/from16 v53, v54

    move-object/from16 v54, v55

    move-object/from16 v55, v56

    move-object/from16 v56, v57

    move-object/from16 v57, v58

    move-object/from16 v58, v59

    move-object/from16 v59, v60

    move-object/from16 v60, v61

    move-object/from16 v61, v62

    move-object/from16 v62, v64

    move-object/from16 v64, v0

    filled-new-array/range {v1 .. v64}, [[D

    move-result-object v0

    sput-object v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->AINV:[[D

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

    :array_2
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
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

    :array_3
    .array-data 8
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
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
        0x0
        0x0
        0x0
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
        0x0
        0x0
        0x0
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

    :array_9
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
        0x0
        0x4008000000000000L    # 3.0
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
        0x0
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

    :array_a
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
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
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
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

    :array_b
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
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
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
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
        0x0
        0x0
        0x0
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

    :array_d
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
        0x0
        -0x4000000000000000L    # -2.0
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
        0x0
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

    :array_e
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
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
        0x0
        0x0
        0x0
    .end array-data

    :array_f
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
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
        0x0
        0x0
        0x0
    .end array-data

    :array_10
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_11
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_12
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
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
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

    :array_13
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
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
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

    :array_14
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_15
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
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_16
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
        0x0
        0x0
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
    .end array-data

    :array_17
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
        0x0
        0x0
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
    .end array-data

    :array_18
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
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
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
        0x0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_19
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
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1a
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
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
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
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1b
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
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
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
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1c
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
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1d
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
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1e
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
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
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
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_1f
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
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
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
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_20
    .array-data 8
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
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
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
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

    :array_21
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
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
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

    :array_22
    .array-data 8
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x0
        0x0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
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
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
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
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
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
        0x0
        0x0
        0x0
    .end array-data

    :array_23
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
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
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
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
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_24
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
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
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
        0x0
    .end array-data

    :array_25
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
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x4008000000000000L    # 3.0
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
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_26
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
        0x0
        0x0
        0x0
        0x0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x0
        0x0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
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
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
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
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_27
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
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
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
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
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
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_28
    .array-data 8
        0x4022000000000000L    # 9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        0x4022000000000000L    # 9.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
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
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
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
    .end array-data

    :array_29
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4022000000000000L    # 9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        -0x3fde000000000000L    # -9.0
        0x0
        0x4022000000000000L    # 9.0
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
        0x0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_2a
    .array-data 8
        -0x3fc5000000000000L    # -27.0
        0x403b000000000000L    # 27.0
        0x403b000000000000L    # 27.0
        -0x3fc5000000000000L    # -27.0
        0x403b000000000000L    # 27.0
        -0x3fc5000000000000L    # -27.0
        -0x3fc5000000000000L    # -27.0
        0x403b000000000000L    # 27.0
        -0x3fce000000000000L    # -18.0
        -0x3fde000000000000L    # -9.0
        0x4032000000000000L    # 18.0
        0x4022000000000000L    # 9.0
        0x4032000000000000L    # 18.0
        0x4022000000000000L    # 9.0
        -0x3fce000000000000L    # -18.0
        -0x3fde000000000000L    # -9.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_2b
    .array-data 8
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2c
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
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
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
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
    .end array-data

    :array_2d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
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
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_2e
    .array-data 8
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2f
    .array-data 8
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_30
    .array-data 8
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
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

    :array_31
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
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_32
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
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
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_33
    .array-data 8
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
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
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data

    :array_34
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
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
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

    :array_35
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
        0x0
    .end array-data

    :array_36
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
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x0
        0x0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
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
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
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
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
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
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        0x0
        0x0
    .end array-data

    :array_37
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
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
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
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
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
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x0
        0x0
    .end array-data

    :array_38
    .array-data 8
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
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
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
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
    .end array-data

    :array_39
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3fe8000000000000L    # -6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        0x4018000000000000L    # 6.0
        0x0
        -0x3fe8000000000000L    # -6.0
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
        0x0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        -0x3ff8000000000000L    # -3.0
        0x0
        0x4008000000000000L    # 3.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4010000000000000L    # -1.0
        0x0
    .end array-data

    :array_3a
    .array-data 8
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4032000000000000L    # 18.0
        0x4032000000000000L    # 18.0
        -0x3fce000000000000L    # -18.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        -0x3fe8000000000000L    # -6.0
        0x4028000000000000L    # 12.0
        0x4018000000000000L    # 6.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4022000000000000L    # 9.0
        -0x3fde000000000000L    # -9.0
        -0x3fde000000000000L    # -9.0
        0x4022000000000000L    # 9.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        0x4008000000000000L    # 3.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_3b
    .array-data 8
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        0x4008000000000000L    # 3.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_3c
    .array-data 8
        0x4010000000000000L    # 4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
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
    .end array-data

    :array_3d
    .array-data 8
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4010000000000000L    # 4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        -0x3ff0000000000000L    # -4.0
        0x0
        0x4010000000000000L    # 4.0
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
        0x0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
        0x0
        0x4000000000000000L    # 2.0
        0x0
        -0x4000000000000000L    # -2.0
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
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
        0x3ff0000000000000L    # 1.0
        0x0
    .end array-data

    :array_3e
    .array-data 8
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fd8000000000000L    # -12.0
        -0x3fd8000000000000L    # -12.0
        0x4028000000000000L    # 12.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        0x4020000000000000L    # 8.0
        0x4010000000000000L    # 4.0
        -0x3fe0000000000000L    # -8.0
        -0x3ff0000000000000L    # -4.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3fe8000000000000L    # -6.0
        0x4018000000000000L    # 6.0
        0x4018000000000000L    # 6.0
        -0x3fe8000000000000L    # -6.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff0000000000000L    # -4.0
        -0x4000000000000000L    # -2.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x3ff8000000000000L    # -3.0
        0x4008000000000000L    # 3.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
        -0x4000000000000000L    # -2.0
        -0x4010000000000000L    # -1.0
    .end array-data

    :array_3f
    .array-data 8
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4020000000000000L    # 8.0
        0x4020000000000000L    # 8.0
        -0x3fe0000000000000L    # -8.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4010000000000000L    # 4.0
        -0x3ff0000000000000L    # -4.0
        -0x3ff0000000000000L    # -4.0
        0x4010000000000000L    # 4.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x4000000000000000L    # 2.0
        -0x4000000000000000L    # -2.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>([D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D)V
    .locals 167
    .param p1, "x"    # [D
    .param p2, "y"    # [D
    .param p3, "z"    # [D
    .param p4, "f"    # [[[D
    .param p5, "dFdX"    # [[[D
    .param p6, "dFdY"    # [[[D
    .param p7, "dFdZ"    # [[[D
    .param p8, "d2FdXdY"    # [[[D
    .param p9, "d2FdXdZ"    # [[[D
    .param p10, "d2FdYdZ"    # [[[D
    .param p11, "d3FdXdYdZ"    # [[[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NonMonotonicSequenceException;
        }
    .end annotation

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 150
    move-object/from16 v10, p1

    array-length v11, v10

    .line 151
    .local v11, "xLen":I
    move-object/from16 v12, p2

    array-length v13, v12

    .line 152
    .local v13, "yLen":I
    array-length v14, v1

    .line 154
    .local v14, "zLen":I
    if-eqz v11, :cond_1b

    if-eqz v13, :cond_1b

    array-length v15, v1

    if-eqz v15, :cond_1b

    array-length v15, v2

    if-eqz v15, :cond_1b

    const/16 v16, 0x0

    aget-object v15, v2, v16

    array-length v15, v15

    if-eqz v15, :cond_1b

    .line 157
    array-length v15, v2

    if-ne v11, v15, :cond_1a

    .line 160
    array-length v15, v3

    if-ne v11, v15, :cond_19

    .line 163
    array-length v15, v4

    if-ne v11, v15, :cond_18

    .line 166
    array-length v15, v5

    if-ne v11, v15, :cond_17

    .line 169
    array-length v15, v6

    if-ne v11, v15, :cond_16

    .line 172
    array-length v15, v7

    if-ne v11, v15, :cond_15

    .line 175
    array-length v15, v8

    if-ne v11, v15, :cond_14

    .line 178
    array-length v15, v9

    if-ne v11, v15, :cond_13

    .line 182
    invoke-static {v10}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 183
    invoke-static {v12}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 184
    invoke-static {v1}, Lorg/apache/commons/math3/util/MathArrays;->checkOrder([D)V

    .line 186
    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [D

    iput-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    .line 187
    invoke-virtual {v12}, [D->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [D

    iput-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    .line 188
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, [D

    iput-object v15, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    .line 190
    add-int/lit8 v15, v11, -0x1

    .line 191
    .local v15, "lastI":I
    add-int/lit8 v1, v13, -0x1

    .line 192
    .local v1, "lastJ":I
    add-int/lit8 v10, v14, -0x1

    .line 193
    .local v10, "lastK":I
    const/4 v12, 0x3

    new-array v2, v12, [I

    const/16 v17, 0x2

    aput v10, v2, v17

    const/16 v18, 0x1

    aput v1, v2, v18

    aput v15, v2, v16

    move/from16 v19, v12

    const-class v12, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    invoke-static {v12, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    iput-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    .line 195
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v15, :cond_12

    .line 196
    aget-object v12, p4, v2

    array-length v12, v12

    if-ne v12, v13, :cond_11

    .line 199
    aget-object v12, v3, v2

    array-length v12, v12

    if-ne v12, v13, :cond_10

    .line 202
    aget-object v12, v4, v2

    array-length v12, v12

    if-ne v12, v13, :cond_f

    .line 205
    aget-object v12, v5, v2

    array-length v12, v12

    if-ne v12, v13, :cond_e

    .line 208
    aget-object v12, v6, v2

    array-length v12, v12

    if-ne v12, v13, :cond_d

    .line 211
    aget-object v12, v7, v2

    array-length v12, v12

    if-ne v12, v13, :cond_c

    .line 214
    aget-object v12, v8, v2

    array-length v12, v12

    if-ne v12, v13, :cond_b

    .line 217
    aget-object v12, v9, v2

    array-length v12, v12

    if-ne v12, v13, :cond_a

    .line 221
    add-int/lit8 v12, v2, 0x1

    .line 222
    .local v12, "ip1":I
    move/from16 v20, v2

    .end local v2    # "i":I
    .local v20, "i":I
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    aget-wide v21, v2, v12

    iget-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    aget-wide v23, v2, v20

    sub-double v21, v21, v23

    .line 223
    .local v21, "xR":D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v1, :cond_9

    .line 224
    aget-object v23, p4, v20

    move/from16 v24, v1

    .end local v1    # "lastJ":I
    .local v24, "lastJ":I
    aget-object v1, v23, v2

    array-length v1, v1

    if-ne v1, v14, :cond_8

    .line 227
    aget-object v1, v3, v20

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v14, :cond_7

    .line 230
    aget-object v1, v4, v20

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v14, :cond_6

    .line 233
    aget-object v1, v5, v20

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v14, :cond_5

    .line 236
    aget-object v1, v6, v20

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v14, :cond_4

    .line 239
    aget-object v1, v7, v20

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v14, :cond_3

    .line 242
    aget-object v1, v8, v20

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v14, :cond_2

    .line 245
    aget-object v1, v9, v20

    aget-object v1, v1, v2

    array-length v1, v1

    if-ne v1, v14, :cond_1

    .line 249
    add-int/lit8 v1, v2, 0x1

    .line 250
    .local v1, "jp1":I
    move/from16 v23, v1

    .end local v1    # "jp1":I
    .local v23, "jp1":I
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v25, v1, v23

    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v27, v1, v2

    sub-double v25, v25, v27

    .line 251
    .local v25, "yR":D
    mul-double v27, v21, v25

    .line 252
    .local v27, "xRyR":D
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_2
    if-ge v1, v10, :cond_0

    .line 253
    add-int/lit8 v29, v1, 0x1

    .line 254
    .local v29, "kp1":I
    move/from16 v30, v1

    .end local v1    # "k":I
    .local v30, "k":I
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide v31, v1, v29

    iget-object v1, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide v33, v1, v30

    sub-double v31, v31, v33

    .line 255
    .local v31, "zR":D
    mul-double v33, v21, v31

    .line 256
    .local v33, "xRzR":D
    mul-double v35, v25, v31

    .line 257
    .local v35, "yRzR":D
    mul-double v37, v21, v35

    .line 259
    .local v37, "xRyRzR":D
    aget-object v1, p4, v20

    aget-object v1, v1, v2

    aget-wide v39, v1, v30

    aget-object v1, p4, v12

    aget-object v1, v1, v2

    aget-wide v41, v1, v30

    aget-object v1, p4, v20

    aget-object v1, v1, v23

    aget-wide v43, v1, v30

    aget-object v1, p4, v12

    aget-object v1, v1, v23

    aget-wide v45, v1, v30

    aget-object v1, p4, v20

    aget-object v1, v1, v2

    aget-wide v47, v1, v29

    aget-object v1, p4, v12

    aget-object v1, v1, v2

    aget-wide v49, v1, v29

    aget-object v1, p4, v20

    aget-object v1, v1, v23

    aget-wide v51, v1, v29

    aget-object v1, p4, v12

    aget-object v1, v1, v23

    aget-wide v53, v1, v29

    aget-object v1, v3, v20

    aget-object v1, v1, v2

    aget-wide v55, v1, v30

    mul-double v55, v55, v21

    aget-object v1, v3, v12

    aget-object v1, v1, v2

    aget-wide v57, v1, v30

    mul-double v57, v57, v21

    aget-object v1, v3, v20

    aget-object v1, v1, v23

    aget-wide v59, v1, v30

    mul-double v59, v59, v21

    aget-object v1, v3, v12

    aget-object v1, v1, v23

    aget-wide v61, v1, v30

    mul-double v61, v61, v21

    aget-object v1, v3, v20

    aget-object v1, v1, v2

    aget-wide v63, v1, v29

    mul-double v63, v63, v21

    aget-object v1, v3, v12

    aget-object v1, v1, v2

    aget-wide v65, v1, v29

    mul-double v65, v65, v21

    aget-object v1, v3, v20

    aget-object v1, v1, v23

    aget-wide v67, v1, v29

    mul-double v67, v67, v21

    aget-object v1, v3, v12

    aget-object v1, v1, v23

    aget-wide v69, v1, v29

    mul-double v69, v69, v21

    aget-object v1, v4, v20

    aget-object v1, v1, v2

    aget-wide v71, v1, v30

    mul-double v71, v71, v25

    aget-object v1, v4, v12

    aget-object v1, v1, v2

    aget-wide v73, v1, v30

    mul-double v73, v73, v25

    aget-object v1, v4, v20

    aget-object v1, v1, v23

    aget-wide v75, v1, v30

    mul-double v75, v75, v25

    aget-object v1, v4, v12

    aget-object v1, v1, v23

    aget-wide v77, v1, v30

    mul-double v77, v77, v25

    aget-object v1, v4, v20

    aget-object v1, v1, v2

    aget-wide v79, v1, v29

    mul-double v79, v79, v25

    aget-object v1, v4, v12

    aget-object v1, v1, v2

    aget-wide v81, v1, v29

    mul-double v81, v81, v25

    aget-object v1, v4, v20

    aget-object v1, v1, v23

    aget-wide v83, v1, v29

    mul-double v83, v83, v25

    aget-object v1, v4, v12

    aget-object v1, v1, v23

    aget-wide v85, v1, v29

    mul-double v85, v85, v25

    aget-object v1, v5, v20

    aget-object v1, v1, v2

    aget-wide v87, v1, v30

    mul-double v87, v87, v31

    aget-object v1, v5, v12

    aget-object v1, v1, v2

    aget-wide v89, v1, v30

    mul-double v89, v89, v31

    aget-object v1, v5, v20

    aget-object v1, v1, v23

    aget-wide v91, v1, v30

    mul-double v91, v91, v31

    aget-object v1, v5, v12

    aget-object v1, v1, v23

    aget-wide v93, v1, v30

    mul-double v93, v93, v31

    aget-object v1, v5, v20

    aget-object v1, v1, v2

    aget-wide v95, v1, v29

    mul-double v95, v95, v31

    aget-object v1, v5, v12

    aget-object v1, v1, v2

    aget-wide v97, v1, v29

    mul-double v97, v97, v31

    aget-object v1, v5, v20

    aget-object v1, v1, v23

    aget-wide v99, v1, v29

    mul-double v99, v99, v31

    aget-object v1, v5, v12

    aget-object v1, v1, v23

    aget-wide v101, v1, v29

    mul-double v101, v101, v31

    aget-object v1, v6, v20

    aget-object v1, v1, v2

    aget-wide v103, v1, v30

    mul-double v103, v103, v27

    aget-object v1, v6, v12

    aget-object v1, v1, v2

    aget-wide v105, v1, v30

    mul-double v105, v105, v27

    aget-object v1, v6, v20

    aget-object v1, v1, v23

    aget-wide v107, v1, v30

    mul-double v107, v107, v27

    aget-object v1, v6, v12

    aget-object v1, v1, v23

    aget-wide v109, v1, v30

    mul-double v109, v109, v27

    aget-object v1, v6, v20

    aget-object v1, v1, v2

    aget-wide v111, v1, v29

    mul-double v111, v111, v27

    aget-object v1, v6, v12

    aget-object v1, v1, v2

    aget-wide v113, v1, v29

    mul-double v113, v113, v27

    aget-object v1, v6, v20

    aget-object v1, v1, v23

    aget-wide v115, v1, v29

    mul-double v115, v115, v27

    aget-object v1, v6, v12

    aget-object v1, v1, v23

    aget-wide v117, v1, v29

    mul-double v117, v117, v27

    aget-object v1, v7, v20

    aget-object v1, v1, v2

    aget-wide v119, v1, v30

    mul-double v119, v119, v33

    aget-object v1, v7, v12

    aget-object v1, v1, v2

    aget-wide v121, v1, v30

    mul-double v121, v121, v33

    aget-object v1, v7, v20

    aget-object v1, v1, v23

    aget-wide v123, v1, v30

    mul-double v123, v123, v33

    aget-object v1, v7, v12

    aget-object v1, v1, v23

    aget-wide v125, v1, v30

    mul-double v125, v125, v33

    aget-object v1, v7, v20

    aget-object v1, v1, v2

    aget-wide v127, v1, v29

    mul-double v127, v127, v33

    aget-object v1, v7, v12

    aget-object v1, v1, v2

    aget-wide v129, v1, v29

    mul-double v129, v129, v33

    aget-object v1, v7, v20

    aget-object v1, v1, v23

    aget-wide v131, v1, v29

    mul-double v131, v131, v33

    aget-object v1, v7, v12

    aget-object v1, v1, v23

    aget-wide v133, v1, v29

    mul-double v133, v133, v33

    aget-object v1, v8, v20

    aget-object v1, v1, v2

    aget-wide v135, v1, v30

    mul-double v135, v135, v35

    aget-object v1, v8, v12

    aget-object v1, v1, v2

    aget-wide v137, v1, v30

    mul-double v137, v137, v35

    aget-object v1, v8, v20

    aget-object v1, v1, v23

    aget-wide v139, v1, v30

    mul-double v139, v139, v35

    aget-object v1, v8, v12

    aget-object v1, v1, v23

    aget-wide v141, v1, v30

    mul-double v141, v141, v35

    aget-object v1, v8, v20

    aget-object v1, v1, v2

    aget-wide v143, v1, v29

    mul-double v143, v143, v35

    aget-object v1, v8, v12

    aget-object v1, v1, v2

    aget-wide v145, v1, v29

    mul-double v145, v145, v35

    aget-object v1, v8, v20

    aget-object v1, v1, v23

    aget-wide v147, v1, v29

    mul-double v147, v147, v35

    aget-object v1, v8, v12

    aget-object v1, v1, v23

    aget-wide v149, v1, v29

    mul-double v149, v149, v35

    aget-object v1, v9, v20

    aget-object v1, v1, v2

    aget-wide v151, v1, v30

    mul-double v151, v151, v37

    aget-object v1, v9, v12

    aget-object v1, v1, v2

    aget-wide v153, v1, v30

    mul-double v153, v153, v37

    aget-object v1, v9, v20

    aget-object v1, v1, v23

    aget-wide v155, v1, v30

    mul-double v155, v155, v37

    aget-object v1, v9, v12

    aget-object v1, v1, v23

    aget-wide v157, v1, v30

    mul-double v157, v157, v37

    aget-object v1, v9, v20

    aget-object v1, v1, v2

    aget-wide v159, v1, v29

    mul-double v159, v159, v37

    aget-object v1, v9, v12

    aget-object v1, v1, v2

    aget-wide v161, v1, v29

    mul-double v161, v161, v37

    aget-object v1, v9, v20

    aget-object v1, v1, v23

    aget-wide v163, v1, v29

    mul-double v163, v163, v37

    aget-object v1, v9, v12

    aget-object v1, v1, v23

    aget-wide v165, v1, v29

    mul-double v165, v165, v37

    const/16 v1, 0x40

    new-array v1, v1, [D

    aput-wide v39, v1, v16

    aput-wide v41, v1, v18

    aput-wide v43, v1, v17

    aput-wide v45, v1, v19

    const/16 v39, 0x4

    aput-wide v47, v1, v39

    const/16 v39, 0x5

    aput-wide v49, v1, v39

    const/16 v39, 0x6

    aput-wide v51, v1, v39

    const/16 v39, 0x7

    aput-wide v53, v1, v39

    const/16 v39, 0x8

    aput-wide v55, v1, v39

    const/16 v39, 0x9

    aput-wide v57, v1, v39

    const/16 v39, 0xa

    aput-wide v59, v1, v39

    const/16 v39, 0xb

    aput-wide v61, v1, v39

    const/16 v39, 0xc

    aput-wide v63, v1, v39

    const/16 v39, 0xd

    aput-wide v65, v1, v39

    const/16 v39, 0xe

    aput-wide v67, v1, v39

    const/16 v39, 0xf

    aput-wide v69, v1, v39

    const/16 v39, 0x10

    aput-wide v71, v1, v39

    const/16 v39, 0x11

    aput-wide v73, v1, v39

    const/16 v39, 0x12

    aput-wide v75, v1, v39

    const/16 v39, 0x13

    aput-wide v77, v1, v39

    const/16 v39, 0x14

    aput-wide v79, v1, v39

    const/16 v39, 0x15

    aput-wide v81, v1, v39

    const/16 v39, 0x16

    aput-wide v83, v1, v39

    const/16 v39, 0x17

    aput-wide v85, v1, v39

    const/16 v39, 0x18

    aput-wide v87, v1, v39

    const/16 v39, 0x19

    aput-wide v89, v1, v39

    const/16 v39, 0x1a

    aput-wide v91, v1, v39

    const/16 v39, 0x1b

    aput-wide v93, v1, v39

    const/16 v39, 0x1c

    aput-wide v95, v1, v39

    const/16 v39, 0x1d

    aput-wide v97, v1, v39

    const/16 v39, 0x1e

    aput-wide v99, v1, v39

    const/16 v39, 0x1f

    aput-wide v101, v1, v39

    const/16 v39, 0x20

    aput-wide v103, v1, v39

    const/16 v39, 0x21

    aput-wide v105, v1, v39

    const/16 v39, 0x22

    aput-wide v107, v1, v39

    const/16 v39, 0x23

    aput-wide v109, v1, v39

    const/16 v39, 0x24

    aput-wide v111, v1, v39

    const/16 v39, 0x25

    aput-wide v113, v1, v39

    const/16 v39, 0x26

    aput-wide v115, v1, v39

    const/16 v39, 0x27

    aput-wide v117, v1, v39

    const/16 v39, 0x28

    aput-wide v119, v1, v39

    const/16 v39, 0x29

    aput-wide v121, v1, v39

    const/16 v39, 0x2a

    aput-wide v123, v1, v39

    const/16 v39, 0x2b

    aput-wide v125, v1, v39

    const/16 v39, 0x2c

    aput-wide v127, v1, v39

    const/16 v39, 0x2d

    aput-wide v129, v1, v39

    const/16 v39, 0x2e

    aput-wide v131, v1, v39

    const/16 v39, 0x2f

    aput-wide v133, v1, v39

    const/16 v39, 0x30

    aput-wide v135, v1, v39

    const/16 v39, 0x31

    aput-wide v137, v1, v39

    const/16 v39, 0x32

    aput-wide v139, v1, v39

    const/16 v39, 0x33

    aput-wide v141, v1, v39

    const/16 v39, 0x34

    aput-wide v143, v1, v39

    const/16 v39, 0x35

    aput-wide v145, v1, v39

    const/16 v39, 0x36

    aput-wide v147, v1, v39

    const/16 v39, 0x37

    aput-wide v149, v1, v39

    const/16 v39, 0x38

    aput-wide v151, v1, v39

    const/16 v39, 0x39

    aput-wide v153, v1, v39

    const/16 v39, 0x3a

    aput-wide v155, v1, v39

    const/16 v39, 0x3b

    aput-wide v157, v1, v39

    const/16 v39, 0x3c

    aput-wide v159, v1, v39

    const/16 v39, 0x3d

    aput-wide v161, v1, v39

    const/16 v39, 0x3e

    aput-wide v163, v1, v39

    const/16 v39, 0x3f

    aput-wide v165, v1, v39

    .line 301
    .local v1, "beta":[D
    move/from16 v39, v2

    .end local v2    # "j":I
    .local v39, "j":I
    iget-object v2, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    aget-object v2, v2, v20

    aget-object v2, v2, v39

    move-object/from16 v40, v2

    new-instance v2, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    move/from16 v41, v10

    .end local v10    # "lastK":I
    .local v41, "lastK":I
    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->computeCoefficients([D)[D

    move-result-object v10

    invoke-direct {v2, v10}, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;-><init>([D)V

    aput-object v2, v40, v30

    .line 252
    .end local v1    # "beta":[D
    .end local v29    # "kp1":I
    .end local v31    # "zR":D
    .end local v33    # "xRzR":D
    .end local v35    # "yRzR":D
    .end local v37    # "xRyRzR":D
    add-int/lit8 v1, v30, 0x1

    move/from16 v2, v39

    move/from16 v10, v41

    .end local v30    # "k":I
    .local v1, "k":I
    goto/16 :goto_2

    .end local v39    # "j":I
    .end local v41    # "lastK":I
    .restart local v2    # "j":I
    .restart local v10    # "lastK":I
    :cond_0
    move/from16 v30, v1

    move/from16 v39, v2

    move/from16 v41, v10

    .line 223
    .end local v1    # "k":I
    .end local v2    # "j":I
    .end local v10    # "lastK":I
    .end local v23    # "jp1":I
    .end local v25    # "yR":D
    .end local v27    # "xRyR":D
    .restart local v39    # "j":I
    .restart local v41    # "lastK":I
    add-int/lit8 v2, v39, 0x1

    move/from16 v1, v24

    .end local v39    # "j":I
    .restart local v2    # "j":I
    goto/16 :goto_1

    .line 246
    .end local v41    # "lastK":I
    .restart local v10    # "lastK":I
    :cond_1
    move/from16 v39, v2

    .end local v2    # "j":I
    .restart local v39    # "j":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v9, v20

    aget-object v2, v2, v39

    array-length v2, v2

    invoke-direct {v1, v2, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 243
    .end local v39    # "j":I
    .restart local v2    # "j":I
    :cond_2
    move/from16 v39, v2

    .end local v2    # "j":I
    .restart local v39    # "j":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v8, v20

    aget-object v2, v2, v39

    array-length v2, v2

    invoke-direct {v1, v2, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 240
    .end local v39    # "j":I
    .restart local v2    # "j":I
    :cond_3
    move/from16 v39, v2

    .end local v2    # "j":I
    .restart local v39    # "j":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v7, v20

    aget-object v2, v2, v39

    array-length v2, v2

    invoke-direct {v1, v2, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 237
    .end local v39    # "j":I
    .restart local v2    # "j":I
    :cond_4
    move/from16 v39, v2

    .end local v2    # "j":I
    .restart local v39    # "j":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v6, v20

    aget-object v2, v2, v39

    array-length v2, v2

    invoke-direct {v1, v2, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 234
    .end local v39    # "j":I
    .restart local v2    # "j":I
    :cond_5
    move/from16 v39, v2

    .end local v2    # "j":I
    .restart local v39    # "j":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v5, v20

    aget-object v2, v2, v39

    array-length v2, v2

    invoke-direct {v1, v2, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 231
    .end local v39    # "j":I
    .restart local v2    # "j":I
    :cond_6
    move/from16 v39, v2

    .end local v2    # "j":I
    .restart local v39    # "j":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v4, v20

    aget-object v2, v2, v39

    array-length v2, v2

    invoke-direct {v1, v2, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 228
    .end local v39    # "j":I
    .restart local v2    # "j":I
    :cond_7
    move/from16 v39, v2

    .end local v2    # "j":I
    .restart local v39    # "j":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v3, v20

    aget-object v2, v2, v39

    array-length v2, v2

    invoke-direct {v1, v2, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 225
    .end local v39    # "j":I
    .restart local v2    # "j":I
    :cond_8
    move/from16 v39, v2

    .end local v2    # "j":I
    .restart local v39    # "j":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, p4, v20

    aget-object v2, v2, v39

    array-length v2, v2

    invoke-direct {v1, v2, v14}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 223
    .end local v24    # "lastJ":I
    .end local v39    # "j":I
    .local v1, "lastJ":I
    .restart local v2    # "j":I
    :cond_9
    move/from16 v24, v1

    move/from16 v39, v2

    move/from16 v41, v10

    .line 195
    .end local v1    # "lastJ":I
    .end local v2    # "j":I
    .end local v10    # "lastK":I
    .end local v12    # "ip1":I
    .end local v21    # "xR":D
    .restart local v24    # "lastJ":I
    .restart local v41    # "lastK":I
    add-int/lit8 v2, v20, 0x1

    .end local v20    # "i":I
    .local v2, "i":I
    goto/16 :goto_0

    .line 218
    .end local v24    # "lastJ":I
    .end local v41    # "lastK":I
    .restart local v1    # "lastJ":I
    .restart local v10    # "lastK":I
    :cond_a
    move/from16 v24, v1

    move/from16 v20, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v20    # "i":I
    .restart local v24    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v9, v20

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 215
    .end local v20    # "i":I
    .end local v24    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_b
    move/from16 v24, v1

    move/from16 v20, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v20    # "i":I
    .restart local v24    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v8, v20

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 212
    .end local v20    # "i":I
    .end local v24    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_c
    move/from16 v24, v1

    move/from16 v20, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v20    # "i":I
    .restart local v24    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v7, v20

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 209
    .end local v20    # "i":I
    .end local v24    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_d
    move/from16 v24, v1

    move/from16 v20, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v20    # "i":I
    .restart local v24    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v6, v20

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 206
    .end local v20    # "i":I
    .end local v24    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_e
    move/from16 v24, v1

    move/from16 v20, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v20    # "i":I
    .restart local v24    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v5, v20

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 203
    .end local v20    # "i":I
    .end local v24    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_f
    move/from16 v24, v1

    move/from16 v20, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v20    # "i":I
    .restart local v24    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v4, v20

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 200
    .end local v20    # "i":I
    .end local v24    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_10
    move/from16 v24, v1

    move/from16 v20, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v20    # "i":I
    .restart local v24    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, v3, v20

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 197
    .end local v20    # "i":I
    .end local v24    # "lastJ":I
    .restart local v1    # "lastJ":I
    .restart local v2    # "i":I
    :cond_11
    move/from16 v24, v1

    move/from16 v20, v2

    .end local v1    # "lastJ":I
    .end local v2    # "i":I
    .restart local v20    # "i":I
    .restart local v24    # "lastJ":I
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v2, p4, v20

    array-length v2, v2

    invoke-direct {v1, v2, v13}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 305
    .end local v20    # "i":I
    .end local v24    # "lastJ":I
    .restart local v1    # "lastJ":I
    :cond_12
    return-void

    .line 179
    .end local v1    # "lastJ":I
    .end local v10    # "lastK":I
    .end local v15    # "lastI":I
    :cond_13
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v9

    invoke-direct {v1, v11, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 176
    :cond_14
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v8

    invoke-direct {v1, v11, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 173
    :cond_15
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v7

    invoke-direct {v1, v11, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 170
    :cond_16
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v6

    invoke-direct {v1, v11, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 167
    :cond_17
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v5

    invoke-direct {v1, v11, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 164
    :cond_18
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v4

    invoke-direct {v1, v11, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 161
    :cond_19
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v3

    invoke-direct {v1, v11, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 158
    :cond_1a
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    move-object/from16 v2, p4

    array-length v10, v2

    invoke-direct {v1, v11, v10}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    .line 155
    :cond_1b
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v1
.end method

.method private computeCoefficients([D)[D
    .locals 12
    .param p1, "beta"    # [D

    .line 425
    const/16 v0, 0x40

    .line 426
    .local v0, "sz":I
    const/16 v1, 0x40

    new-array v2, v1, [D

    .line 428
    .local v2, "a":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 429
    const-wide/16 v4, 0x0

    .line 430
    .local v4, "result":D
    sget-object v6, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->AINV:[[D

    aget-object v6, v6, v3

    .line 431
    .local v6, "row":[D
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    if-ge v7, v1, :cond_0

    .line 432
    aget-wide v8, v6, v7

    aget-wide v10, p1, v7

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 431
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 434
    .end local v7    # "j":I
    :cond_0
    aput-wide v4, v2, v3

    .line 428
    .end local v4    # "result":D
    .end local v6    # "row":[D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 437
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method private searchIndex(D[D)I
    .locals 5
    .param p1, "c"    # D
    .param p3, "val"    # [D

    .line 362
    const/4 v0, 0x0

    aget-wide v0, p3, v0

    cmpg-double v0, p1, v0

    const/4 v1, -0x1

    if-gez v0, :cond_0

    .line 363
    return v1

    .line 366
    :cond_0
    array-length v0, p3

    .line 367
    .local v0, "max":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 368
    aget-wide v3, p3, v2

    cmpg-double v3, p1, v3

    if-gtz v3, :cond_1

    .line 369
    add-int/lit8 v1, v2, -0x1

    return v1

    .line 367
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 373
    .end local v2    # "i":I
    :cond_2
    return v1
.end method


# virtual methods
.method public isValidPoint(DDD)Z
    .locals 6
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .line 343
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    cmpg-double v0, p1, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double v0, p1, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v4, v0, v1

    cmpg-double v0, p3, v4

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    array-length v2, v2

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double v0, p3, v4

    if-gtz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide v4, v0, v1

    cmpg-double v0, p5, v4

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    array-length v2, v2

    sub-int/2addr v2, v3

    aget-wide v4, v0, v2

    cmpl-double v0, p5, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    return v3

    .line 349
    :cond_1
    :goto_0
    return v1
.end method

.method public value(DDD)D
    .locals 21
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 314
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    iget-object v7, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    invoke-direct {v0, v1, v2, v7}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v7

    .line 315
    .local v7, "i":I
    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eq v7, v9, :cond_2

    .line 318
    iget-object v10, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    invoke-direct {v0, v3, v4, v10}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v10

    .line 319
    .local v10, "j":I
    if-eq v10, v9, :cond_1

    .line 322
    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    invoke-direct {v0, v5, v6, v11}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->searchIndex(D[D)I

    move-result v11

    .line 323
    .local v11, "k":I
    if-eq v11, v9, :cond_0

    .line 327
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    aget-wide v8, v8, v7

    sub-double v8, v1, v8

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    add-int/lit8 v13, v7, 0x1

    aget-wide v12, v12, v13

    iget-object v14, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    aget-wide v14, v14, v7

    sub-double/2addr v12, v14

    div-double v15, v8, v12

    .line 328
    .local v15, "xN":D
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v8, v8, v10

    sub-double v8, v3, v8

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    add-int/lit8 v13, v10, 0x1

    aget-wide v12, v12, v13

    iget-object v14, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v17, v14, v10

    sub-double v12, v12, v17

    div-double v17, v8, v12

    .line 329
    .local v17, "yN":D
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide v8, v8, v11

    sub-double v8, v5, v8

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    add-int/lit8 v13, v11, 0x1

    aget-wide v12, v12, v13

    iget-object v14, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide v19, v14, v11

    sub-double v12, v12, v19

    div-double v19, v8, v12

    .line 331
    .local v19, "zN":D
    iget-object v8, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->splines:[[[Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;

    aget-object v8, v8, v7

    aget-object v8, v8, v10

    aget-object v14, v8, v11

    invoke-virtual/range {v14 .. v20}, Lorg/apache/commons/math3/analysis/interpolation/TricubicFunction;->value(DDD)D

    move-result-wide v8

    return-wide v8

    .line 324
    .end local v15    # "xN":D
    .end local v17    # "yN":D
    .end local v19    # "zN":D
    :cond_0
    new-instance v9, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    aget-wide v13, v13, v8

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    iget-object v14, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->zval:[D

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    aget-wide v13, v13, v14

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v13

    invoke-direct {v9, v12, v8, v13}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v9

    .line 320
    .end local v11    # "k":I
    :cond_1
    new-instance v9, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    aget-wide v12, v12, v8

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    iget-object v13, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->yval:[D

    array-length v13, v13

    add-int/lit8 v13, v13, -0x1

    aget-wide v12, v12, v13

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    invoke-direct {v9, v11, v8, v12}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v9

    .line 316
    .end local v10    # "j":I
    :cond_2
    new-instance v9, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    aget-wide v11, v11, v8

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    iget-object v11, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    iget-object v12, v0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;->xval:[D

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-wide v11, v11, v12

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    invoke-direct {v9, v10, v8, v11}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v9
.end method
