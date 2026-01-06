.class Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "HighamHall54StepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 52
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;

    .line 61
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 62
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 56
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .line 76
    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    mul-double v1, v1, p1

    const-wide/high16 v3, 0x4030000000000000L    # 16.0

    sub-double/2addr v3, v1

    mul-double v3, v3, p1

    const-wide/high16 v1, -0x3fe2000000000000L    # -7.5

    add-double/2addr v3, v1

    mul-double v3, v3, p1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v1

    .line 77
    .local v3, "bDot0":D
    const-wide v5, 0x4050e00000000000L    # 67.5

    mul-double v5, v5, p1

    const-wide v7, -0x3fa9380000000000L    # -91.125

    add-double/2addr v5, v7

    mul-double v5, v5, p1

    const-wide v7, 0x403cb00000000000L    # 28.6875

    add-double/2addr v5, v7

    mul-double v5, v5, p1

    .line 78
    .local v5, "bDot2":D
    const-wide/high16 v7, 0x405e000000000000L    # 120.0

    mul-double v7, v7, p1

    const-wide/high16 v9, 0x4063000000000000L    # 152.0

    sub-double/2addr v9, v7

    mul-double v9, v9, p1

    const-wide/high16 v7, -0x3fba000000000000L    # -44.0

    add-double/2addr v9, v7

    mul-double v9, v9, p1

    .line 79
    .local v9, "bDot3":D
    const-wide v7, 0x404f400000000000L    # 62.5

    mul-double v7, v7, p1

    const-wide v11, -0x3fac780000000000L    # -78.125

    add-double/2addr v7, v11

    mul-double v7, v7, p1

    const-wide v11, 0x4037700000000000L    # 23.4375

    add-double/2addr v7, v11

    mul-double v7, v7, p1

    .line 80
    .local v7, "bDot4":D
    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    mul-double v13, p1, v11

    const-wide/high16 v15, 0x4020000000000000L    # 8.0

    div-double/2addr v13, v15

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    mul-double v19, p1, v17

    sub-double v19, v19, v1

    mul-double v13, v13, v19

    .line 82
    .local v13, "bDot5":D
    move-wide/from16 v19, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->previousState:[D

    const/16 v21, 0x4

    const/16 v22, 0x3

    const/16 v23, 0x2

    const/16 v24, 0x0

    const-wide/high16 v25, 0x4028000000000000L    # 12.0

    const-wide/high16 v27, -0x402c000000000000L    # -0.3125

    const-wide v29, 0x405f400000000000L    # 125.0

    const-wide v31, -0x3fc5f55555555555L    # -26.041666666666668

    const-wide v33, 0x4027700000000000L    # 11.71875

    const-wide/high16 v35, -0x3fc2000000000000L    # -30.0

    const-wide v37, 0x4049555555555555L    # 50.666666666666664

    const-wide/high16 v39, -0x3fca000000000000L    # -22.0

    const-wide v41, 0x4060e00000000000L    # 135.0

    const-wide v43, -0x3fc1a00000000000L    # -30.375

    const-wide v45, 0x402cb00000000000L    # 14.34375

    const-wide v47, 0x4015555555555555L    # 5.333333333333333

    const-wide/high16 v49, -0x3ff2000000000000L    # -3.75

    if-eqz v1, :cond_1

    const-wide/high16 v51, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, p1, v51

    if-gtz v1, :cond_1

    .line 83
    move-wide/from16 v51, v3

    const/4 v1, 0x5

    .end local v3    # "bDot0":D
    .local v51, "bDot0":D
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    mul-double v2, v2, p1

    .line 84
    .local v2, "hTheta":D
    const-wide/high16 v17, 0x4004000000000000L    # 2.5

    mul-double v17, v17, p1

    sub-double v47, v47, v17

    mul-double v47, v47, p1

    add-double v47, v47, v49

    mul-double v47, v47, p1

    add-double v47, v47, v19

    mul-double v47, v47, v2

    .line 85
    .local v47, "b0":D
    mul-double v41, v41, p1

    div-double v41, v41, v15

    add-double v41, v41, v43

    mul-double v41, v41, p1

    add-double v41, v41, v45

    mul-double v41, v41, p1

    mul-double v41, v41, v2

    .line 86
    .local v41, "b2":D
    mul-double v35, v35, p1

    add-double v35, v35, v37

    mul-double v35, v35, p1

    add-double v35, v35, v39

    mul-double v35, v35, p1

    mul-double v35, v35, v2

    .line 87
    .local v35, "b3":D
    mul-double v29, v29, p1

    div-double v29, v29, v15

    add-double v29, v29, v31

    mul-double v29, v29, p1

    add-double v29, v29, v33

    mul-double v29, v29, p1

    mul-double v29, v29, v2

    .line 88
    .local v29, "b4":D
    mul-double v11, v11, p1

    div-double v11, v11, v25

    add-double v11, v11, v27

    mul-double v11, v11, p1

    mul-double/2addr v11, v2

    .line 89
    .local v11, "b5":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedState:[D

    array-length v15, v15

    if-ge v4, v15, :cond_0

    .line 90
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v15, v15, v24

    aget-wide v15, v15, v4

    .line 91
    .local v15, "yDot0":D
    move/from16 v53, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v1, v1, v23

    aget-wide v17, v1, v4

    .line 92
    .local v17, "yDot2":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v1, v1, v22

    aget-wide v19, v1, v4

    .line 93
    .local v19, "yDot3":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v1, v1, v21

    aget-wide v25, v1, v4

    .line 94
    .local v25, "yDot4":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v1, v1, v53

    aget-wide v27, v1, v4

    .line 95
    .local v27, "yDot5":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedState:[D

    move-object/from16 v31, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->previousState:[D

    aget-wide v32, v1, v4

    mul-double v37, v47, v15

    add-double v32, v32, v37

    mul-double v37, v41, v17

    add-double v32, v32, v37

    mul-double v37, v35, v19

    add-double v32, v32, v37

    mul-double v37, v29, v25

    add-double v32, v32, v37

    mul-double v37, v11, v27

    add-double v32, v32, v37

    aput-wide v32, v31, v4

    .line 97
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedDerivatives:[D

    mul-double v31, v51, v15

    mul-double v33, v5, v17

    add-double v31, v31, v33

    mul-double v33, v9, v19

    add-double v31, v31, v33

    mul-double v33, v7, v25

    add-double v31, v31, v33

    mul-double v33, v13, v27

    add-double v31, v31, v33

    aput-wide v31, v1, v4

    .line 89
    .end local v15    # "yDot0":D
    .end local v17    # "yDot2":D
    .end local v19    # "yDot3":D
    .end local v25    # "yDot4":D
    .end local v27    # "yDot5":D
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v53

    goto :goto_0

    .line 100
    .end local v2    # "hTheta":D
    .end local v4    # "i":I
    .end local v11    # "b5":D
    .end local v29    # "b4":D
    .end local v35    # "b3":D
    .end local v41    # "b2":D
    .end local v47    # "b0":D
    :cond_0
    goto/16 :goto_2

    .line 82
    .end local v51    # "bDot0":D
    .restart local v3    # "bDot0":D
    :cond_1
    move-wide/from16 v51, v3

    const/16 v53, 0x5

    .line 101
    .end local v3    # "bDot0":D
    .restart local v51    # "bDot0":D
    mul-double v1, p1, p1

    .line 102
    .local v1, "theta2":D
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    const-wide/high16 v54, -0x3fec000000000000L    # -5.0

    mul-double v54, v54, p1

    div-double v54, v54, v17

    add-double v54, v54, v47

    mul-double v54, v54, p1

    add-double v54, v54, v49

    mul-double v54, v54, p1

    add-double v54, v54, v19

    mul-double v54, v54, p1

    const-wide v17, -0x404aaaaaaaaaaaabL    # -0.08333333333333333

    add-double v54, v54, v17

    mul-double v3, v3, v54

    .line 103
    .local v3, "b0":D
    move-wide/from16 v17, v11

    iget-wide v11, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    mul-double v41, v41, p1

    div-double v41, v41, v15

    add-double v41, v41, v43

    mul-double v41, v41, p1

    add-double v41, v41, v45

    mul-double v41, v41, v1

    const-wide/high16 v19, -0x4015000000000000L    # -0.84375

    add-double v41, v41, v19

    mul-double v11, v11, v41

    .line 104
    .local v11, "b2":D
    move-wide/from16 v19, v1

    .end local v1    # "theta2":D
    .local v19, "theta2":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    mul-double v35, v35, p1

    add-double v35, v35, v37

    mul-double v35, v35, p1

    add-double v35, v35, v39

    mul-double v35, v35, v19

    const-wide v37, 0x3ff5555555555555L    # 1.3333333333333333

    add-double v35, v35, v37

    mul-double v1, v1, v35

    .line 105
    .local v1, "b3":D
    move-wide/from16 v35, v1

    .end local v1    # "b3":D
    .restart local v35    # "b3":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    mul-double v29, v29, p1

    div-double v29, v29, v15

    add-double v29, v29, v31

    mul-double v29, v29, p1

    add-double v29, v29, v33

    mul-double v15, v19, v29

    const-wide v29, -0x400b2aaaaaaaaaabL    # -1.3020833333333333

    add-double v15, v15, v29

    mul-double/2addr v1, v15

    .line 106
    .local v1, "b4":D
    move-wide v15, v1

    .end local v1    # "b4":D
    .local v15, "b4":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->h:D

    mul-double v17, v17, p1

    div-double v17, v17, v25

    add-double v17, v17, v27

    mul-double v17, v17, v19

    const-wide v25, -0x4045555555555555L    # -0.10416666666666667

    add-double v17, v17, v25

    mul-double v1, v1, v17

    .line 107
    .local v1, "b5":D
    const/16 v17, 0x0

    move-wide/from16 v25, v1

    move/from16 v1, v17

    .local v1, "i":I
    .local v25, "b5":D
    :goto_1
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedState:[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 108
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v2, v2, v24

    aget-wide v17, v2, v1

    .line 109
    .local v17, "yDot0":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v2, v2, v23

    aget-wide v27, v2, v1

    .line 110
    .local v27, "yDot2":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v2, v2, v22

    aget-wide v29, v2, v1

    .line 111
    .local v29, "yDot3":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v2, v2, v21

    aget-wide v31, v2, v1

    .line 112
    .local v31, "yDot4":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->yDotK:[[D

    aget-object v2, v2, v53

    aget-wide v33, v2, v1

    .line 113
    .local v33, "yDot5":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedState:[D

    move/from16 v37, v1

    .end local v1    # "i":I
    .local v37, "i":I
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->currentState:[D

    aget-wide v38, v1, v37

    mul-double v40, v3, v17

    add-double v38, v38, v40

    mul-double v40, v11, v27

    add-double v38, v38, v40

    mul-double v40, v35, v29

    add-double v38, v38, v40

    mul-double v40, v15, v31

    add-double v38, v38, v40

    mul-double v40, v25, v33

    add-double v38, v38, v40

    aput-wide v38, v2, v37

    .line 115
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;->interpolatedDerivatives:[D

    mul-double v38, v51, v17

    mul-double v40, v5, v27

    add-double v38, v38, v40

    mul-double v40, v9, v29

    add-double v38, v38, v40

    mul-double v40, v7, v31

    add-double v38, v38, v40

    mul-double v40, v13, v33

    add-double v38, v38, v40

    aput-wide v38, v1, v37

    .line 107
    .end local v17    # "yDot0":D
    .end local v27    # "yDot2":D
    .end local v29    # "yDot3":D
    .end local v31    # "yDot4":D
    .end local v33    # "yDot5":D
    add-int/lit8 v1, v37, 0x1

    .end local v37    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    :cond_2
    move/from16 v37, v1

    .line 120
    .end local v1    # "i":I
    .end local v3    # "b0":D
    .end local v11    # "b2":D
    .end local v15    # "b4":D
    .end local v19    # "theta2":D
    .end local v25    # "b5":D
    .end local v35    # "b3":D
    :goto_2
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 67
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;)V

    return-object v0
.end method
