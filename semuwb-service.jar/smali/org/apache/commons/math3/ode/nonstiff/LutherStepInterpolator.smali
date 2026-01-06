.class Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "LutherStepInterpolator.java"


# static fields
.field private static final Q:D

.field private static final serialVersionUID:J = 0x1335180L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-wide/high16 v0, 0x4035000000000000L    # 21.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 57
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;

    .line 66
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 67
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 56
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .line 124
    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4035000000000000L    # 21.0

    mul-double v3, p1, v1

    const-wide v5, -0x3fb8800000000000L    # -47.0

    add-double/2addr v3, v5

    mul-double v3, v3, p1

    const-wide/high16 v5, 0x4042000000000000L    # 36.0

    add-double/2addr v3, v5

    mul-double v3, v3, p1

    const-wide v5, -0x3fda666666666666L    # -10.8

    add-double/2addr v3, v5

    mul-double v3, v3, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    .line 125
    .local v3, "coeffDot1":D
    const-wide/16 v7, 0x0

    .line 126
    .local v7, "coeffDot2":D
    const-wide/high16 v9, 0x405c000000000000L    # 112.0

    mul-double v11, p1, v9

    const-wide v13, -0x3f96aaaaaaaaaaabL    # -202.66666666666666

    add-double/2addr v11, v13

    mul-double v11, v11, p1

    const-wide v13, 0x405aaaaaaaaaaaabL    # 106.66666666666667

    add-double/2addr v11, v13

    mul-double v11, v11, p1

    const-wide v13, -0x3fd4444444444444L    # -13.866666666666667

    add-double/2addr v11, v13

    mul-double v11, v11, p1

    .line 127
    .local v11, "coeffDot3":D
    const-wide v13, -0x3f7e480000000000L    # -567.0

    mul-double v15, p1, v13

    const-wide/high16 v17, 0x4014000000000000L    # 5.0

    div-double v15, v15, v17

    const-wide v19, 0x40684ccccccccccdL    # 194.4

    add-double v15, v15, v19

    mul-double v15, v15, p1

    const-wide v19, -0x3fa7b33333333333L    # -97.2

    add-double v15, v15, v19

    mul-double v15, v15, p1

    const-wide v19, 0x4029eb851eb851ecL    # 12.96

    add-double v15, v15, v19

    mul-double v15, v15, p1

    .line 128
    .local v15, "coeffDot4":D
    sget-wide v19, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    const-wide v21, 0x4075700000000000L    # 343.0

    mul-double v19, v19, v21

    const-wide v23, 0x408a080000000000L    # 833.0

    add-double v19, v19, v23

    const-wide v25, 0x4062c00000000000L    # 150.0

    div-double v19, v19, v25

    sget-wide v27, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    const-wide v29, 0x4076500000000000L    # 357.0

    mul-double v27, v27, v29

    const-wide v31, -0x3f7c180000000000L    # -637.0

    sub-double v27, v31, v27

    const-wide/high16 v33, 0x403e000000000000L    # 30.0

    div-double v27, v27, v33

    sget-wide v35, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    const-wide v37, 0x4071f00000000000L    # 287.0

    mul-double v35, v35, v37

    const-wide v39, 0x4078800000000000L    # 392.0

    add-double v35, v35, v39

    const-wide/high16 v41, 0x402e000000000000L    # 15.0

    div-double v35, v35, v41

    sget-wide v43, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    const-wide v45, 0x4048800000000000L    # 49.0

    mul-double v43, v43, v45

    const-wide v47, -0x3fb7800000000000L    # -49.0

    sub-double v43, v47, v43

    mul-double v43, v43, p1

    div-double v43, v43, v17

    add-double v35, v35, v43

    mul-double v35, v35, p1

    add-double v27, v27, v35

    mul-double v27, v27, p1

    add-double v19, v19, v27

    mul-double v19, v19, p1

    .line 129
    .local v19, "coeffDot5":D
    sget-wide v27, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v27, v27, v21

    sub-double v27, v23, v27

    div-double v27, v27, v25

    sget-wide v25, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v25, v25, v29

    add-double v25, v25, v31

    div-double v25, v25, v33

    sget-wide v33, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v33, v33, v37

    sub-double v33, v39, v33

    div-double v33, v33, v41

    sget-wide v35, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v35, v35, v45

    add-double v35, v35, v47

    mul-double v35, v35, p1

    div-double v35, v35, v17

    add-double v33, v33, v35

    mul-double v33, v33, p1

    add-double v25, v25, v33

    mul-double v25, v25, p1

    add-double v27, v27, v25

    mul-double v27, v27, p1

    .line 130
    .local v27, "coeffDot6":D
    const-wide/high16 v25, 0x4008000000000000L    # 3.0

    mul-double v25, v25, p1

    const-wide/high16 v33, -0x3ff8000000000000L    # -3.0

    add-double v25, v25, v33

    mul-double v25, v25, p1

    const-wide v33, 0x3fe3333333333333L    # 0.6

    add-double v25, v25, v33

    mul-double v25, v25, p1

    .line 132
    .local v25, "coeffDot7":D
    move-wide/from16 v33, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->previousState:[D

    const-wide/16 v35, 0x0

    const-wide v41, 0x4072c00000000000L    # 300.0

    const-wide/high16 v43, 0x4039000000000000L    # 25.0

    if-eqz v1, :cond_1

    const-wide/high16 v49, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, p1, v49

    if-gtz v1, :cond_1

    .line 134
    mul-double v33, v33, p1

    div-double v33, v33, v17

    const-wide v49, -0x3fd8800000000000L    # -11.75

    add-double v33, v33, v49

    mul-double v33, v33, p1

    const-wide/high16 v49, 0x4028000000000000L    # 12.0

    add-double v33, v33, v49

    mul-double v33, v33, p1

    const-wide v49, -0x3fea666666666666L    # -5.4

    add-double v33, v33, v49

    mul-double v33, v33, p1

    add-double v33, v33, v5

    .line 135
    .local v33, "coeff1":D
    const-wide/16 v5, 0x0

    .line 136
    .local v5, "coeff2":D
    mul-double v9, v9, p1

    div-double v9, v9, v17

    const-wide v17, -0x3fb6aaaaaaaaaaabL    # -50.666666666666664

    add-double v9, v9, v17

    mul-double v9, v9, p1

    const-wide v17, 0x4041c71c71c71c72L    # 35.55555555555556

    add-double v9, v9, v17

    mul-double v9, v9, p1

    const-wide v17, -0x3fe4444444444444L    # -6.933333333333334

    add-double v9, v9, v17

    mul-double v9, v9, p1

    .line 137
    .local v9, "coeff3":D
    mul-double v13, v13, p1

    div-double v13, v13, v43

    const-wide v17, 0x40484ccccccccccdL    # 48.6

    add-double v13, v13, v17

    mul-double v13, v13, p1

    const-wide v17, -0x3fbfcccccccccccdL    # -32.4

    add-double v13, v13, v17

    mul-double v13, v13, p1

    const-wide v17, 0x4019eb851eb851ecL    # 6.48

    add-double v13, v13, v17

    mul-double v13, v13, p1

    .line 138
    .local v13, "coeff4":D
    sget-wide v17, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v17, v17, v21

    add-double v17, v17, v23

    div-double v17, v17, v41

    sget-wide v49, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v49, v49, v29

    sub-double v49, v31, v49

    const-wide v51, 0x4056800000000000L    # 90.0

    div-double v49, v49, v51

    sget-wide v51, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v51, v51, v37

    add-double v51, v51, v39

    const-wide/high16 v53, 0x404e000000000000L    # 60.0

    div-double v51, v51, v53

    sget-wide v53, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v53, v53, v45

    sub-double v53, v47, v53

    mul-double v53, v53, p1

    div-double v53, v53, v43

    add-double v51, v51, v53

    mul-double v51, v51, p1

    add-double v49, v49, v51

    mul-double v49, v49, p1

    add-double v17, v17, v49

    mul-double v17, v17, p1

    .line 139
    .local v17, "coeff5":D
    sget-wide v49, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v49, v49, v21

    sub-double v23, v23, v49

    div-double v23, v23, v41

    sget-wide v21, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v21, v21, v29

    add-double v21, v21, v31

    const-wide v29, 0x4056800000000000L    # 90.0

    div-double v21, v21, v29

    sget-wide v29, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v29, v29, v37

    sub-double v39, v39, v29

    const-wide/high16 v29, 0x404e000000000000L    # 60.0

    div-double v39, v39, v29

    sget-wide v29, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v29, v29, v45

    add-double v29, v29, v47

    mul-double v29, v29, p1

    div-double v29, v29, v43

    add-double v39, v39, v29

    mul-double v39, v39, p1

    add-double v21, v21, v39

    mul-double v21, v21, p1

    add-double v23, v23, v21

    mul-double v23, v23, p1

    .line 140
    .local v23, "coeff6":D
    const-wide/high16 v21, 0x3fe8000000000000L    # 0.75

    mul-double v21, v21, p1

    const-wide/high16 v29, -0x4010000000000000L    # -1.0

    add-double v21, v21, v29

    mul-double v21, v21, p1

    const-wide v29, 0x3fd3333333333333L    # 0.3

    add-double v21, v21, v29

    mul-double v21, v21, p1

    .line 141
    .local v21, "coeff7":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v29, 0x1

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedState:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 142
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v30, 0x0

    aget-object v2, v2, v30

    aget-wide v30, v2, v1

    .line 143
    .local v30, "yDot1":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v29

    aget-wide v37, v2, v1

    .line 144
    .local v37, "yDot2":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v32, 0x2

    aget-object v2, v2, v32

    aget-wide v39, v2, v1

    .line 145
    .local v39, "yDot3":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v32, 0x3

    aget-object v2, v2, v32

    aget-wide v41, v2, v1

    .line 146
    .local v41, "yDot4":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v32, 0x4

    aget-object v2, v2, v32

    aget-wide v43, v2, v1

    .line 147
    .local v43, "yDot5":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v32, 0x5

    aget-object v2, v2, v32

    aget-wide v45, v2, v1

    .line 148
    .local v45, "yDot6":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v32, 0x6

    aget-object v2, v2, v32

    aget-wide v47, v2, v1

    .line 149
    .local v47, "yDot7":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedState:[D

    move/from16 v32, v1

    .end local v1    # "i":I
    .local v32, "i":I
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->previousState:[D

    aget-wide v49, v1, v32

    move-object/from16 v51, v2

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->h:D

    mul-double v1, v1, p1

    mul-double v52, v33, v30

    mul-double v54, v37, v35

    add-double v52, v52, v54

    mul-double v54, v9, v39

    add-double v52, v52, v54

    mul-double v54, v13, v41

    add-double v52, v52, v54

    mul-double v54, v17, v43

    add-double v52, v52, v54

    mul-double v54, v23, v45

    add-double v52, v52, v54

    mul-double v54, v21, v47

    add-double v52, v52, v54

    mul-double v1, v1, v52

    add-double v49, v49, v1

    aput-wide v49, v51, v32

    .line 152
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedDerivatives:[D

    mul-double v49, v3, v30

    mul-double v51, v37, v35

    add-double v49, v49, v51

    mul-double v51, v11, v39

    add-double v49, v49, v51

    mul-double v51, v15, v41

    add-double v49, v49, v51

    mul-double v51, v19, v43

    add-double v49, v49, v51

    mul-double v51, v27, v45

    add-double v49, v49, v51

    mul-double v51, v25, v47

    add-double v49, v49, v51

    aput-wide v49, v1, v32

    .line 141
    .end local v30    # "yDot1":D
    .end local v37    # "yDot2":D
    .end local v39    # "yDot3":D
    .end local v41    # "yDot4":D
    .end local v43    # "yDot5":D
    .end local v45    # "yDot6":D
    .end local v47    # "yDot7":D
    add-int/lit8 v1, v32, 0x1

    .end local v32    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_0

    :cond_0
    move/from16 v32, v1

    .line 155
    .end local v1    # "i":I
    .end local v5    # "coeff2":D
    .end local v9    # "coeff3":D
    .end local v13    # "coeff4":D
    .end local v17    # "coeff5":D
    .end local v21    # "coeff7":D
    .end local v23    # "coeff6":D
    .end local v33    # "coeff1":D
    goto/16 :goto_2

    .line 132
    :cond_1
    const/16 v29, 0x1

    .line 157
    const-wide/high16 v1, -0x3fcb000000000000L    # -21.0

    mul-double v1, v1, p1

    div-double v1, v1, v17

    const-wide v5, 0x401e333333333333L    # 7.55

    add-double/2addr v1, v5

    mul-double v1, v1, p1

    const-wide v5, -0x3fee333333333333L    # -4.45

    add-double/2addr v1, v5

    mul-double v1, v1, p1

    const-wide v5, 0x3fee666666666666L    # 0.95

    add-double/2addr v1, v5

    mul-double v1, v1, p1

    const-wide v5, -0x4056666666666666L    # -0.05

    add-double/2addr v1, v5

    .line 158
    .local v1, "coeff1":D
    const-wide/16 v9, 0x0

    .line 159
    .local v9, "coeff2":D
    const-wide/high16 v13, -0x3fa4000000000000L    # -112.0

    mul-double v13, v13, p1

    div-double v13, v13, v17

    const-wide v17, 0x403c444444444444L    # 28.266666666666666

    add-double v13, v13, v17

    mul-double v13, v13, p1

    const-wide v17, -0x3fe2d82d82d82d83L    # -7.288888888888889

    add-double v13, v13, v17

    mul-double v13, v13, p1

    const-wide v17, -0x40293e93e93e93e9L    # -0.35555555555555557

    add-double v13, v13, v17

    mul-double v13, v13, p1

    add-double v13, v13, v17

    .line 160
    .local v13, "coeff3":D
    const-wide v17, 0x4081b80000000000L    # 567.0

    mul-double v17, v17, p1

    div-double v17, v17, v43

    const-wide v21, -0x3fc6147ae147ae14L    # -25.92

    add-double v17, v17, v21

    mul-double v17, v17, p1

    const-wide v21, 0x4019eb851eb851ecL    # 6.48

    add-double v17, v17, v21

    mul-double v17, v17, p1

    mul-double v17, v17, p1

    .line 161
    .local v17, "coeff4":D
    const-wide v21, 0x4090140000000000L    # 1029.0

    sget-wide v23, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v23, v23, v21

    const-wide v21, 0x40a19c0000000000L    # 2254.0

    add-double v23, v23, v21

    const-wide v21, 0x408c200000000000L    # 900.0

    div-double v23, v23, v21

    const-wide v21, 0x408a780000000000L    # 847.0

    sget-wide v30, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v30, v30, v21

    const-wide v21, -0x3f6a900000000000L    # -1372.0

    sub-double v21, v21, v30

    div-double v21, v21, v41

    sget-wide v30, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v30, v30, v45

    add-double v30, v30, v45

    mul-double v30, v30, p1

    div-double v30, v30, v43

    add-double v21, v21, v30

    mul-double v21, v21, p1

    add-double v23, v23, v21

    mul-double v23, v23, p1

    const-wide v21, -0x402e93e93e93e93fL    # -0.2722222222222222

    add-double v23, v23, v21

    mul-double v23, v23, p1

    add-double v23, v23, v21

    .line 162
    .local v23, "coeff5":D
    const-wide v30, 0x4090140000000000L    # 1029.0

    sget-wide v32, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v32, v32, v30

    const-wide v30, 0x40a19c0000000000L    # 2254.0

    sub-double v30, v30, v32

    const-wide v32, 0x408c200000000000L    # 900.0

    div-double v30, v30, v32

    const-wide v32, 0x408a780000000000L    # 847.0

    sget-wide v37, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v37, v37, v32

    const-wide v32, -0x3f6a900000000000L    # -1372.0

    add-double v37, v37, v32

    div-double v37, v37, v41

    sget-wide v32, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->Q:D

    mul-double v32, v32, v45

    sub-double v45, v45, v32

    mul-double v45, v45, p1

    div-double v45, v45, v43

    add-double v37, v37, v45

    mul-double v37, v37, p1

    add-double v30, v30, v37

    mul-double v30, v30, p1

    add-double v30, v30, v21

    mul-double v30, v30, p1

    add-double v30, v30, v21

    .line 163
    .local v30, "coeff6":D
    const-wide/high16 v21, -0x4018000000000000L    # -0.75

    mul-double v21, v21, p1

    const-wide/high16 v32, 0x3fd0000000000000L    # 0.25

    add-double v21, v21, v32

    mul-double v21, v21, p1

    add-double v21, v21, v5

    mul-double v21, v21, p1

    add-double v21, v21, v5

    .line 164
    .restart local v21    # "coeff7":D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedState:[D

    array-length v6, v6

    if-ge v5, v6, :cond_2

    .line 165
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v32, 0x0

    aget-object v6, v6, v32

    aget-wide v32, v6, v5

    .line 166
    .local v32, "yDot1":D
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    aget-object v6, v6, v29

    aget-wide v37, v6, v5

    .line 167
    .restart local v37    # "yDot2":D
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v34, 0x2

    aget-object v6, v6, v34

    aget-wide v39, v6, v5

    .line 168
    .restart local v39    # "yDot3":D
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v34, 0x3

    aget-object v6, v6, v34

    aget-wide v41, v6, v5

    .line 169
    .restart local v41    # "yDot4":D
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v34, 0x4

    aget-object v6, v6, v34

    aget-wide v43, v6, v5

    .line 170
    .restart local v43    # "yDot5":D
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v34, 0x5

    aget-object v6, v6, v34

    aget-wide v45, v6, v5

    .line 171
    .restart local v45    # "yDot6":D
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->yDotK:[[D

    const/16 v34, 0x6

    aget-object v6, v6, v34

    aget-wide v47, v6, v5

    .line 172
    .restart local v47    # "yDot7":D
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedState:[D

    move-wide/from16 v49, v1

    .end local v1    # "coeff1":D
    .local v49, "coeff1":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->currentState:[D

    aget-wide v1, v1, v5

    mul-double v51, v49, v32

    mul-double v53, v37, v35

    add-double v51, v51, v53

    mul-double v53, v13, v39

    add-double v51, v51, v53

    mul-double v53, v17, v41

    add-double v51, v51, v53

    mul-double v53, v23, v43

    add-double v51, v51, v53

    mul-double v53, v30, v45

    add-double v51, v51, v53

    mul-double v53, v21, v47

    add-double v51, v51, v53

    mul-double v51, v51, p3

    add-double v1, v1, v51

    aput-wide v1, v6, v5

    .line 175
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;->interpolatedDerivatives:[D

    mul-double v51, v3, v32

    mul-double v53, v37, v35

    add-double v51, v51, v53

    mul-double v53, v11, v39

    add-double v51, v51, v53

    mul-double v53, v15, v41

    add-double v51, v51, v53

    mul-double v53, v19, v43

    add-double v51, v51, v53

    mul-double v53, v27, v45

    add-double v51, v51, v53

    mul-double v53, v25, v47

    add-double v51, v51, v53

    aput-wide v51, v1, v5

    .line 164
    .end local v32    # "yDot1":D
    .end local v37    # "yDot2":D
    .end local v39    # "yDot3":D
    .end local v41    # "yDot4":D
    .end local v43    # "yDot5":D
    .end local v45    # "yDot6":D
    .end local v47    # "yDot7":D
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v1, v49

    goto/16 :goto_1

    .end local v49    # "coeff1":D
    .restart local v1    # "coeff1":D
    :cond_2
    move-wide/from16 v49, v1

    .line 180
    .end local v1    # "coeff1":D
    .end local v5    # "i":I
    .end local v9    # "coeff2":D
    .end local v13    # "coeff3":D
    .end local v17    # "coeff4":D
    .end local v21    # "coeff7":D
    .end local v23    # "coeff5":D
    .end local v30    # "coeff6":D
    :goto_2
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 72
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;)V

    return-object v0
.end method
