.class Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "GillStepInterpolator.java"


# static fields
.field private static final ONE_MINUS_INV_SQRT_2:D

.field private static final ONE_PLUS_INV_SQRT_2:D

.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 59
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v2, v4, v2

    sput-wide v2, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_MINUS_INV_SQRT_2:D

    .line 62
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    add-double/2addr v0, v4

    sput-wide v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_PLUS_INV_SQRT_2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 81
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;

    .line 90
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 91
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 46
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .line 105
    move-object/from16 v0, p0

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double v3, p1, v1

    .line 106
    .local v3, "twoTheta":D
    mul-double v5, v3, v3

    .line 107
    .local v5, "fourTheta2":D
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    sub-double v7, v3, v7

    mul-double v7, v7, p1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    add-double/2addr v7, v9

    .line 108
    .local v7, "coeffDot1":D
    sub-double v11, v9, p1

    mul-double/2addr v11, v3

    .line 109
    .local v11, "cDot23":D
    sget-wide v13, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_MINUS_INV_SQRT_2:D

    mul-double/2addr v13, v11

    .line 110
    .local v13, "coeffDot2":D
    sget-wide v15, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_PLUS_INV_SQRT_2:D

    mul-double/2addr v15, v11

    .line 111
    .local v15, "coeffDot3":D
    sub-double v17, v3, v9

    mul-double v17, v17, p1

    .line 113
    .local v17, "coeffDot4":D
    move-wide/from16 v19, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->previousState:[D

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v23, 0x1

    const-wide/high16 v24, 0x4018000000000000L    # 6.0

    if-eqz v1, :cond_1

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, p1, v26

    if-gtz v1, :cond_1

    .line 114
    iget-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->h:D

    mul-double v9, v9, p1

    div-double v9, v9, v24

    .line 115
    .local v9, "s":D
    mul-double v19, p1, v24

    sub-double v19, v19, v5

    mul-double v19, v19, v9

    .line 116
    .local v19, "c23":D
    const-wide/high16 v26, 0x4022000000000000L    # 9.0

    mul-double v26, v26, p1

    sub-double v24, v24, v26

    add-double v24, v24, v5

    mul-double v24, v24, v9

    .line 117
    .local v24, "coeff1":D
    sget-wide v26, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_MINUS_INV_SQRT_2:D

    mul-double v26, v26, v19

    .line 118
    .local v26, "coeff2":D
    sget-wide v28, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_PLUS_INV_SQRT_2:D

    mul-double v28, v28, v19

    .line 119
    .local v28, "coeff3":D
    const-wide/high16 v30, -0x3ff8000000000000L    # -3.0

    mul-double v30, v30, p1

    add-double v30, v30, v5

    mul-double v30, v30, v9

    .line 120
    .local v30, "coeff4":D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v32, 0x3

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedState:[D

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 121
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v22

    aget-wide v33, v2, v1

    .line 122
    .local v33, "yDot1":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v23

    aget-wide v35, v2, v1

    .line 123
    .local v35, "yDot2":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v21

    aget-wide v37, v2, v1

    .line 124
    .local v37, "yDot3":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v32

    aget-wide v39, v2, v1

    .line 125
    .local v39, "yDot4":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedState:[D

    move/from16 v41, v1

    .end local v1    # "i":I
    .local v41, "i":I
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->previousState:[D

    aget-wide v42, v1, v41

    mul-double v44, v24, v33

    add-double v42, v42, v44

    mul-double v44, v26, v35

    add-double v42, v42, v44

    mul-double v44, v28, v37

    add-double v42, v42, v44

    mul-double v44, v30, v39

    add-double v42, v42, v44

    aput-wide v42, v2, v41

    .line 127
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedDerivatives:[D

    mul-double v42, v7, v33

    mul-double v44, v13, v35

    add-double v42, v42, v44

    mul-double v44, v15, v37

    add-double v42, v42, v44

    mul-double v44, v17, v39

    add-double v42, v42, v44

    aput-wide v42, v1, v41

    .line 120
    .end local v33    # "yDot1":D
    .end local v35    # "yDot2":D
    .end local v37    # "yDot3":D
    .end local v39    # "yDot4":D
    add-int/lit8 v1, v41, 0x1

    .end local v41    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    :cond_0
    move/from16 v41, v1

    .line 130
    .end local v1    # "i":I
    .end local v9    # "s":D
    .end local v19    # "c23":D
    .end local v24    # "coeff1":D
    .end local v26    # "coeff2":D
    .end local v28    # "coeff3":D
    .end local v30    # "coeff4":D
    goto :goto_2

    .line 113
    :cond_1
    const/16 v32, 0x3

    .line 131
    div-double v1, p3, v24

    .line 132
    .local v1, "s":D
    add-double v19, v3, v19

    sub-double v19, v19, v5

    mul-double v19, v19, v1

    .line 133
    .restart local v19    # "c23":D
    const-wide/high16 v24, 0x4014000000000000L    # 5.0

    mul-double v24, v24, p1

    sub-double v24, v9, v24

    add-double v24, v24, v5

    mul-double v24, v24, v1

    .line 134
    .restart local v24    # "coeff1":D
    sget-wide v26, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_MINUS_INV_SQRT_2:D

    mul-double v26, v26, v19

    .line 135
    .restart local v26    # "coeff2":D
    sget-wide v28, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->ONE_PLUS_INV_SQRT_2:D

    mul-double v28, v28, v19

    .line 136
    .restart local v28    # "coeff3":D
    add-double v9, p1, v9

    add-double/2addr v9, v5

    mul-double/2addr v9, v1

    .line 137
    .local v9, "coeff4":D
    const/16 v30, 0x0

    move-wide/from16 v33, v1

    move/from16 v1, v30

    .local v1, "i":I
    .local v33, "s":D
    :goto_1
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedState:[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 138
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v22

    aget-wide v30, v2, v1

    .line 139
    .local v30, "yDot1":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v23

    aget-wide v35, v2, v1

    .line 140
    .restart local v35    # "yDot2":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v21

    aget-wide v37, v2, v1

    .line 141
    .restart local v37    # "yDot3":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->yDotK:[[D

    aget-object v2, v2, v32

    aget-wide v39, v2, v1

    .line 142
    .restart local v39    # "yDot4":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedState:[D

    move/from16 v41, v1

    .end local v1    # "i":I
    .restart local v41    # "i":I
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->currentState:[D

    aget-wide v42, v1, v41

    mul-double v44, v24, v30

    sub-double v42, v42, v44

    mul-double v44, v26, v35

    sub-double v42, v42, v44

    mul-double v44, v28, v37

    sub-double v42, v42, v44

    mul-double v44, v9, v39

    sub-double v42, v42, v44

    aput-wide v42, v2, v41

    .line 144
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;->interpolatedDerivatives:[D

    mul-double v42, v7, v30

    mul-double v44, v13, v35

    add-double v42, v42, v44

    mul-double v44, v15, v37

    add-double v42, v42, v44

    mul-double v44, v17, v39

    add-double v42, v42, v44

    aput-wide v42, v1, v41

    .line 137
    .end local v30    # "yDot1":D
    .end local v35    # "yDot2":D
    .end local v37    # "yDot3":D
    .end local v39    # "yDot4":D
    add-int/lit8 v1, v41, 0x1

    .end local v41    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    :cond_2
    move/from16 v41, v1

    .line 149
    .end local v1    # "i":I
    .end local v9    # "coeff4":D
    .end local v19    # "c23":D
    .end local v24    # "coeff1":D
    .end local v26    # "coeff2":D
    .end local v28    # "coeff3":D
    .end local v33    # "s":D
    :goto_2
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 96
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;)V

    return-object v0
.end method
