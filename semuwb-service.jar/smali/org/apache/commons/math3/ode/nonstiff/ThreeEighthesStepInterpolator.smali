.class Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "ThreeEighthesStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 77
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;

    .line 86
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 41
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .line 101
    move-object/from16 v0, p0

    const-wide/high16 v1, 0x3fe8000000000000L    # 0.75

    mul-double v1, v1, p1

    .line 102
    .local v1, "coeffDot3":D
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double v5, p1, v3

    const-wide/high16 v7, 0x4014000000000000L    # 5.0

    sub-double/2addr v5, v7

    mul-double/2addr v5, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v9

    .line 103
    .local v5, "coeffDot1":D
    const-wide/high16 v11, 0x4018000000000000L    # 6.0

    mul-double v11, v11, p1

    sub-double v11, v7, v11

    mul-double/2addr v11, v1

    .line 104
    .local v11, "coeffDot2":D
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double v15, p1, v13

    sub-double/2addr v15, v9

    mul-double/2addr v15, v1

    .line 106
    .local v15, "coeffDot4":D
    move-wide/from16 v17, v3

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->previousState:[D

    const/16 v19, 0x2

    const/16 v20, 0x0

    const-wide/high16 v21, 0x4020000000000000L    # 8.0

    const/16 v23, 0x1

    const-wide/high16 v24, 0x4008000000000000L    # 3.0

    if-eqz v3, :cond_1

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, p1, v26

    if-gtz v3, :cond_1

    .line 107
    iget-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->h:D

    mul-double v9, v9, p1

    div-double v9, v9, v21

    .line 108
    .local v9, "s":D
    mul-double v17, v17, p1

    mul-double v17, v17, p1

    .line 109
    .local v17, "fourTheta2":D
    const-wide/high16 v26, 0x402e000000000000L    # 15.0

    mul-double v26, v26, p1

    sub-double v21, v21, v26

    mul-double v13, v13, v17

    add-double v21, v21, v13

    mul-double v21, v21, v9

    .line 110
    .local v21, "coeff1":D
    mul-double v13, v9, v24

    mul-double v7, v7, p1

    sub-double v7, v7, v17

    mul-double/2addr v13, v7

    .line 111
    .local v13, "coeff2":D
    mul-double v24, v24, v9

    mul-double v24, v24, p1

    .line 112
    .local v24, "coeff3":D
    const-wide/high16 v7, -0x3ff8000000000000L    # -3.0

    mul-double v7, v7, p1

    add-double v7, v7, v17

    mul-double/2addr v7, v9

    .line 113
    .local v7, "coeff4":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v26, 0x3

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedState:[D

    array-length v4, v4

    if-ge v3, v4, :cond_0

    .line 114
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v20

    aget-wide v27, v4, v3

    .line 115
    .local v27, "yDot1":D
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v23

    aget-wide v29, v4, v3

    .line 116
    .local v29, "yDot2":D
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v19

    aget-wide v31, v4, v3

    .line 117
    .local v31, "yDot3":D
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v4, v4, v26

    aget-wide v33, v4, v3

    .line 118
    .local v33, "yDot4":D
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedState:[D

    move-wide/from16 v35, v1

    .end local v1    # "coeffDot3":D
    .local v35, "coeffDot3":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->previousState:[D

    aget-wide v1, v1, v3

    mul-double v37, v21, v27

    add-double v1, v1, v37

    mul-double v37, v13, v29

    add-double v1, v1, v37

    mul-double v37, v24, v31

    add-double v1, v1, v37

    mul-double v37, v7, v33

    add-double v1, v1, v37

    aput-wide v1, v4, v3

    .line 120
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedDerivatives:[D

    mul-double v37, v5, v27

    mul-double v39, v11, v29

    add-double v37, v37, v39

    mul-double v39, v35, v31

    add-double v37, v37, v39

    mul-double v39, v15, v33

    add-double v37, v37, v39

    aput-wide v37, v1, v3

    .line 113
    .end local v27    # "yDot1":D
    .end local v29    # "yDot2":D
    .end local v31    # "yDot3":D
    .end local v33    # "yDot4":D
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v1, v35

    goto :goto_0

    .end local v35    # "coeffDot3":D
    .restart local v1    # "coeffDot3":D
    :cond_0
    move-wide/from16 v35, v1

    .line 124
    .end local v1    # "coeffDot3":D
    .end local v3    # "i":I
    .end local v7    # "coeff4":D
    .end local v9    # "s":D
    .end local v13    # "coeff2":D
    .end local v17    # "fourTheta2":D
    .end local v21    # "coeff1":D
    .end local v24    # "coeff3":D
    .restart local v35    # "coeffDot3":D
    goto/16 :goto_2

    .line 106
    .end local v35    # "coeffDot3":D
    .restart local v1    # "coeffDot3":D
    :cond_1
    move-wide/from16 v35, v1

    const/16 v26, 0x3

    .line 125
    .end local v1    # "coeffDot3":D
    .restart local v35    # "coeffDot3":D
    div-double v1, p3, v21

    .line 126
    .local v1, "s":D
    mul-double v3, p1, v17

    mul-double v3, v3, p1

    .line 127
    .local v3, "fourTheta2":D
    const-wide/high16 v7, 0x401c000000000000L    # 7.0

    mul-double v7, v7, p1

    sub-double v7, v9, v7

    mul-double/2addr v13, v3

    add-double/2addr v7, v13

    mul-double/2addr v7, v1

    .line 128
    .local v7, "coeff1":D
    mul-double v13, v1, v24

    add-double v17, p1, v9

    sub-double v17, v17, v3

    mul-double v13, v13, v17

    .line 129
    .restart local v13    # "coeff2":D
    mul-double v24, v24, v1

    add-double v17, p1, v9

    mul-double v24, v24, v17

    .line 130
    .restart local v24    # "coeff3":D
    add-double v9, p1, v9

    add-double/2addr v9, v3

    mul-double/2addr v9, v1

    .line 131
    .local v9, "coeff4":D
    const/16 v17, 0x0

    move-wide/from16 v21, v1

    move/from16 v1, v17

    .local v1, "i":I
    .local v21, "s":D
    :goto_1
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedState:[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 132
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v20

    aget-wide v17, v2, v1

    .line 133
    .local v17, "yDot1":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v23

    aget-wide v27, v2, v1

    .line 134
    .local v27, "yDot2":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v19

    aget-wide v29, v2, v1

    .line 135
    .local v29, "yDot3":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v26

    aget-wide v31, v2, v1

    .line 136
    .local v31, "yDot4":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedState:[D

    move/from16 v33, v1

    .end local v1    # "i":I
    .local v33, "i":I
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->currentState:[D

    aget-wide v37, v1, v33

    mul-double v39, v7, v17

    sub-double v37, v37, v39

    mul-double v39, v13, v27

    sub-double v37, v37, v39

    mul-double v39, v24, v29

    sub-double v37, v37, v39

    mul-double v39, v9, v31

    sub-double v37, v37, v39

    aput-wide v37, v2, v33

    .line 138
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;->interpolatedDerivatives:[D

    mul-double v37, v5, v17

    mul-double v39, v11, v27

    add-double v37, v37, v39

    mul-double v39, v35, v29

    add-double v37, v37, v39

    mul-double v39, v15, v31

    add-double v37, v37, v39

    aput-wide v37, v1, v33

    .line 131
    .end local v17    # "yDot1":D
    .end local v27    # "yDot2":D
    .end local v29    # "yDot3":D
    .end local v31    # "yDot4":D
    add-int/lit8 v1, v33, 0x1

    .end local v33    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    :cond_2
    move/from16 v33, v1

    .line 144
    .end local v1    # "i":I
    .end local v3    # "fourTheta2":D
    .end local v7    # "coeff1":D
    .end local v9    # "coeff4":D
    .end local v13    # "coeff2":D
    .end local v21    # "s":D
    .end local v24    # "coeff3":D
    :goto_2
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 92
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;)V

    return-object v0
.end method
