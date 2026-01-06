.class Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "ClassicalRungeKuttaStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 73
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 74
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;

    .line 83
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 84
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 39
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .line 97
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v5, v3, v1

    .line 98
    .local v5, "oneMinusTheta":D
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double v9, v1, v7

    sub-double v9, v3, v9

    .line 99
    .local v9, "oneMinus2Theta":D
    mul-double v11, v5, v9

    .line 100
    .local v11, "coeffDot1":D
    mul-double v13, v1, v7

    mul-double/2addr v13, v5

    .line 101
    .local v13, "coeffDot23":D
    move-wide v15, v3

    neg-double v3, v1

    mul-double/2addr v3, v9

    .line 102
    .local v3, "coeffDot4":D
    move-wide/from16 v17, v7

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->previousState:[D

    const/16 v19, 0x2

    const/16 v20, 0x0

    const-wide/high16 v21, 0x4010000000000000L    # 4.0

    const/16 v23, 0x1

    const-wide/high16 v24, 0x4018000000000000L    # 6.0

    if-eqz v7, :cond_1

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, v1, v26

    if-gtz v7, :cond_1

    .line 103
    mul-double v15, v1, v21

    mul-double/2addr v15, v1

    .line 104
    .local v15, "fourTheta2":D
    move-wide/from16 v26, v9

    const/4 v7, 0x3

    .end local v9    # "oneMinus2Theta":D
    .local v26, "oneMinus2Theta":D
    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->h:D

    mul-double/2addr v8, v1

    div-double v8, v8, v24

    .line 105
    .local v8, "s":D
    const-wide/high16 v17, 0x4022000000000000L    # 9.0

    mul-double v17, v17, v1

    sub-double v17, v24, v17

    add-double v17, v17, v15

    mul-double v17, v17, v8

    .line 106
    .local v17, "coeff1":D
    mul-double v21, v1, v24

    sub-double v21, v21, v15

    mul-double v21, v21, v8

    .line 107
    .local v21, "coeff23":D
    const-wide/high16 v24, -0x3ff8000000000000L    # -3.0

    mul-double v24, v24, v1

    add-double v24, v24, v15

    mul-double v24, v24, v8

    .line 108
    .local v24, "coeff4":D
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move/from16 v28, v7

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->interpolatedState:[D

    array-length v7, v7

    if-ge v10, v7, :cond_0

    .line 109
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v7, v7, v20

    aget-wide v29, v7, v10

    .line 110
    .local v29, "yDot1":D
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v7, v7, v23

    aget-wide v31, v7, v10

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v7, v7, v19

    aget-wide v33, v7, v10

    add-double v31, v31, v33

    .line 111
    .local v31, "yDot23":D
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v7, v7, v28

    aget-wide v33, v7, v10

    .line 112
    .local v33, "yDot4":D
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->interpolatedState:[D

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->previousState:[D

    aget-wide v1, v1, v10

    mul-double v35, v17, v29

    add-double v1, v1, v35

    mul-double v35, v21, v31

    add-double v1, v1, v35

    mul-double v35, v24, v33

    add-double v1, v1, v35

    aput-wide v1, v7, v10

    .line 114
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->interpolatedDerivatives:[D

    mul-double v35, v11, v29

    mul-double v37, v13, v31

    add-double v35, v35, v37

    mul-double v37, v3, v33

    add-double v35, v35, v37

    aput-wide v35, v1, v10

    .line 108
    .end local v29    # "yDot1":D
    .end local v31    # "yDot23":D
    .end local v33    # "yDot4":D
    add-int/lit8 v10, v10, 0x1

    move-wide/from16 v1, p1

    move/from16 v7, v28

    goto :goto_0

    .line 117
    .end local v8    # "s":D
    .end local v10    # "i":I
    .end local v15    # "fourTheta2":D
    .end local v17    # "coeff1":D
    .end local v21    # "coeff23":D
    .end local v24    # "coeff4":D
    :cond_0
    move-wide/from16 v17, v3

    goto/16 :goto_2

    .line 102
    .end local v26    # "oneMinus2Theta":D
    .restart local v9    # "oneMinus2Theta":D
    :cond_1
    move-wide/from16 v26, v9

    const/16 v28, 0x3

    .line 118
    .end local v9    # "oneMinus2Theta":D
    .restart local v26    # "oneMinus2Theta":D
    mul-double v1, p1, v21

    .line 119
    .local v1, "fourTheta":D
    div-double v7, p3, v24

    .line 120
    .local v7, "s":D
    neg-double v9, v1

    const-wide/high16 v21, 0x4014000000000000L    # 5.0

    add-double v9, v9, v21

    mul-double v9, v9, p1

    sub-double/2addr v9, v15

    mul-double/2addr v9, v7

    .line 121
    .local v9, "coeff1":D
    sub-double v21, v1, v17

    mul-double v21, v21, p1

    sub-double v21, v21, v17

    mul-double v21, v21, v7

    .line 122
    .restart local v21    # "coeff23":D
    move-wide/from16 v17, v3

    .end local v3    # "coeffDot4":D
    .local v17, "coeffDot4":D
    neg-double v3, v1

    sub-double/2addr v3, v15

    mul-double v3, v3, p1

    sub-double/2addr v3, v15

    mul-double/2addr v3, v7

    .line 123
    .local v3, "coeff4":D
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    move-wide/from16 v24, v1

    .end local v1    # "fourTheta":D
    .local v24, "fourTheta":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->interpolatedState:[D

    array-length v1, v1

    if-ge v15, v1, :cond_2

    .line 124
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v1, v1, v20

    aget-wide v1, v1, v15

    .line 125
    .local v1, "yDot1":D
    move-wide/from16 v29, v1

    .end local v1    # "yDot1":D
    .restart local v29    # "yDot1":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v1, v1, v23

    aget-wide v1, v1, v15

    move-wide/from16 v31, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v1, v1, v19

    aget-wide v1, v1, v15

    add-double v1, v31, v1

    .line 126
    .local v1, "yDot23":D
    move-wide/from16 v31, v1

    .end local v1    # "yDot23":D
    .restart local v31    # "yDot23":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->yDotK:[[D

    aget-object v1, v1, v28

    aget-wide v1, v1, v15

    .line 127
    .local v1, "yDot4":D
    move-wide/from16 v33, v1

    .end local v1    # "yDot4":D
    .restart local v33    # "yDot4":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->interpolatedState:[D

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->currentState:[D

    aget-wide v35, v2, v15

    mul-double v37, v9, v29

    add-double v35, v35, v37

    mul-double v37, v21, v31

    add-double v35, v35, v37

    mul-double v37, v3, v33

    add-double v35, v35, v37

    aput-wide v35, v1, v15

    .line 129
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;->interpolatedDerivatives:[D

    mul-double v35, v11, v29

    mul-double v37, v13, v31

    add-double v35, v35, v37

    mul-double v37, v17, v33

    add-double v35, v35, v37

    aput-wide v35, v1, v15

    .line 123
    .end local v29    # "yDot1":D
    .end local v31    # "yDot23":D
    .end local v33    # "yDot4":D
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v1, v24

    goto :goto_1

    .line 134
    .end local v3    # "coeff4":D
    .end local v7    # "s":D
    .end local v9    # "coeff1":D
    .end local v15    # "i":I
    .end local v21    # "coeff23":D
    .end local v24    # "fourTheta":D
    :cond_2
    :goto_2
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 89
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaStepInterpolator;)V

    return-object v0
.end method
