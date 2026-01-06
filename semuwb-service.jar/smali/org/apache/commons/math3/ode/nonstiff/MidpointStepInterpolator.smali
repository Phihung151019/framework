.class Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "MidpointStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 67
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;

    .line 76
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 77
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 22
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .line 91
    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v1, v1, p1

    .line 92
    .local v1, "coeffDot2":D
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double v5, v3, v1

    .line 94
    .local v5, "coeffDot1":D
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->previousState:[D

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_1

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v7, p1, v10

    if-gtz v7, :cond_1

    .line 95
    mul-double v3, p1, p3

    .line 96
    .local v3, "coeff1":D
    mul-double v10, p1, p1

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->h:D

    mul-double/2addr v10, v12

    .line 97
    .local v10, "coeff2":D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedState:[D

    array-length v12, v12

    if-ge v7, v12, :cond_0

    .line 98
    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->yDotK:[[D

    aget-object v12, v12, v8

    aget-wide v12, v12, v7

    .line 99
    .local v12, "yDot1":D
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->yDotK:[[D

    aget-object v14, v14, v9

    aget-wide v14, v14, v7

    .line 100
    .local v14, "yDot2":D
    move/from16 v16, v8

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedState:[D

    move/from16 v17, v9

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->previousState:[D

    aget-wide v18, v9, v7

    mul-double v20, v3, v12

    add-double v18, v18, v20

    mul-double v20, v10, v14

    add-double v18, v18, v20

    aput-wide v18, v8, v7

    .line 101
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedDerivatives:[D

    mul-double v18, v5, v12

    mul-double v20, v1, v14

    add-double v18, v18, v20

    aput-wide v18, v8, v7

    .line 97
    .end local v12    # "yDot1":D
    .end local v14    # "yDot2":D
    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v16

    move/from16 v9, v17

    goto :goto_0

    .line 103
    .end local v3    # "coeff1":D
    .end local v7    # "i":I
    .end local v10    # "coeff2":D
    :cond_0
    goto :goto_2

    .line 94
    :cond_1
    move/from16 v16, v8

    move/from16 v17, v9

    .line 104
    mul-double v7, p3, p1

    .line 105
    .local v7, "coeff1":D
    add-double v3, p1, v3

    mul-double v3, v3, p3

    .line 106
    .local v3, "coeff2":D
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedState:[D

    array-length v10, v10

    if-ge v9, v10, :cond_2

    .line 107
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->yDotK:[[D

    aget-object v10, v10, v16

    aget-wide v10, v10, v9

    .line 108
    .local v10, "yDot1":D
    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->yDotK:[[D

    aget-object v12, v12, v17

    aget-wide v12, v12, v9

    .line 109
    .local v12, "yDot2":D
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedState:[D

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->currentState:[D

    aget-wide v18, v15, v9

    mul-double v20, v7, v10

    add-double v18, v18, v20

    mul-double v20, v3, v12

    sub-double v18, v18, v20

    aput-wide v18, v14, v9

    .line 110
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;->interpolatedDerivatives:[D

    mul-double v18, v5, v10

    mul-double v20, v1, v12

    add-double v18, v18, v20

    aput-wide v18, v14, v9

    .line 106
    .end local v10    # "yDot1":D
    .end local v12    # "yDot2":D
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 114
    .end local v3    # "coeff2":D
    .end local v7    # "coeff1":D
    .end local v9    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 82
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;)V

    return-object v0
.end method
