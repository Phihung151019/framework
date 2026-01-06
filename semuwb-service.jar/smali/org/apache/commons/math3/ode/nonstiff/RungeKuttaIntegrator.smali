.class public abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractIntegrator;
.source "RungeKuttaIntegrator.java"


# instance fields
.field private final a:[[D

.field private final b:[D

.field private final c:[D

.field private final prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

.field private final step:D


# direct methods
.method protected constructor <init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "c"    # [D
    .param p3, "a"    # [[D
    .param p4, "b"    # [D
    .param p5, "prototype"    # Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .param p6, "step"    # D

    .line 85
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    .line 86
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    .line 87
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    .line 88
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    .line 89
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 90
    invoke-static {p6, p7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    .line 91
    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 23
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 99
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 100
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 101
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    cmpl-double v1, p2, v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-lez v1, :cond_0

    move v4, v9

    goto :goto_0

    :cond_0
    move v4, v8

    .line 104
    .local v4, "forward":Z
    :goto_0
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v10

    .line 105
    .local v10, "y0":[D
    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [D

    .line 106
    .local v11, "y":[D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    array-length v1, v1

    add-int/lit8 v12, v1, 0x1

    .line 107
    .local v12, "stages":I
    new-array v3, v12, [[D

    .line 108
    .local v3, "yDotK":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v12, :cond_1

    .line 109
    array-length v2, v10

    new-array v2, v2, [D

    aput-object v2, v3, v1

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 111
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v10}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, [D

    .line 112
    .local v2, "yTmp":[D
    array-length v1, v10

    new-array v13, v1, [D

    .line 115
    .local v13, "yDotTmp":[D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 116
    .local v1, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v5

    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v6

    move-object/from16 v22, v1

    move-object v1, v0

    move-object/from16 v0, v22

    .end local v1    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .local v0, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 118
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v15, v2

    move-object v14, v3

    move v6, v4

    .end local v0    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .end local v2    # "yTmp":[D
    .end local v3    # "yDotK":[[D
    .end local v4    # "forward":Z
    .restart local v1    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .local v6, "forward":Z
    .local v14, "yDotK":[[D
    .local v15, "yTmp":[D
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 121
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    .line 122
    if-eqz v6, :cond_3

    .line 123
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    add-double/2addr v2, v4

    cmpl-double v2, v2, p2

    if-ltz v2, :cond_2

    .line 124
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    sub-double v2, p2, v2

    iput-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    goto :goto_2

    .line 126
    :cond_2
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    iput-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    goto :goto_2

    .line 129
    :cond_3
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    sub-double/2addr v2, v4

    cmpg-double v2, v2, p2

    if-gtz v2, :cond_4

    .line 130
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    sub-double v2, p2, v2

    iput-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    goto :goto_2

    .line 132
    :cond_4
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->step:D

    neg-double v2, v2

    iput-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    .line 135
    :goto_2
    move-object v3, v1

    .end local v1    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .local v3, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v4, v10

    move-object v10, v3

    move-object v3, v4

    move-wide/from16 v4, p2

    .local v3, "y0":[D
    .local v10, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->initIntegration(D[DD)V

    .line 138
    move-object v1, v3

    .end local v3    # "y0":[D
    .local v1, "y0":[D
    iput-boolean v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->isLastStep:Z

    .line 141
    :goto_3
    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->shift()V

    .line 144
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    aget-object v4, v14, v8

    invoke-virtual {v0, v2, v3, v11, v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    .line 147
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_4
    if-ge v2, v12, :cond_7

    .line 149
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_5
    array-length v4, v1

    if-ge v3, v4, :cond_6

    .line 150
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    add-int/lit8 v5, v2, -0x1

    aget-object v4, v4, v5

    aget-wide v4, v4, v8

    aget-object v16, v14, v8

    aget-wide v16, v16, v3

    mul-double v4, v4, v16

    .line 151
    .local v4, "sum":D
    const/16 v16, 0x1

    move/from16 v9, v16

    .local v9, "l":I
    :goto_6
    if-ge v9, v2, :cond_5

    .line 152
    move/from16 v17, v8

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    add-int/lit8 v18, v2, -0x1

    aget-object v8, v8, v18

    aget-wide v18, v8, v9

    aget-object v8, v14, v9

    aget-wide v20, v8, v3

    mul-double v18, v18, v20

    add-double v4, v4, v18

    .line 151
    add-int/lit8 v9, v9, 0x1

    move/from16 v8, v17

    goto :goto_6

    :cond_5
    move/from16 v17, v8

    .line 154
    .end local v9    # "l":I
    aget-wide v8, v11, v3

    move/from16 v18, v2

    move/from16 v19, v3

    .end local v2    # "k":I
    .end local v3    # "j":I
    .local v18, "k":I
    .local v19, "j":I
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    mul-double/2addr v2, v4

    add-double/2addr v8, v2

    aput-wide v8, v15, v19

    .line 149
    .end local v4    # "sum":D
    add-int/lit8 v3, v19, 0x1

    move/from16 v8, v17

    move/from16 v2, v18

    const/4 v9, 0x1

    .end local v19    # "j":I
    .restart local v3    # "j":I
    goto :goto_5

    .end local v18    # "k":I
    .restart local v2    # "k":I
    :cond_6
    move/from16 v18, v2

    move/from16 v19, v3

    move/from16 v17, v8

    .line 157
    .end local v2    # "k":I
    .end local v3    # "j":I
    .restart local v18    # "k":I
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    add-int/lit8 v5, v18, -0x1

    aget-wide v4, v4, v5

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    mul-double/2addr v4, v8

    add-double/2addr v2, v4

    aget-object v4, v14, v18

    invoke-virtual {v0, v2, v3, v15, v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    .line 147
    add-int/lit8 v2, v18, 0x1

    move/from16 v8, v17

    const/4 v9, 0x1

    .end local v18    # "k":I
    .restart local v2    # "k":I
    goto :goto_4

    :cond_7
    move/from16 v18, v2

    move/from16 v17, v8

    .line 162
    .end local v2    # "k":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_7
    array-length v3, v1

    if-ge v2, v3, :cond_9

    .line 163
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v3, v3, v17

    aget-object v5, v14, v17

    aget-wide v8, v5, v2

    mul-double/2addr v3, v8

    .line 164
    .local v3, "sum":D
    const/4 v5, 0x1

    .local v5, "l":I
    :goto_8
    if-ge v5, v12, :cond_8

    .line 165
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v8, v8, v5

    aget-object v18, v14, v5

    aget-wide v18, v18, v2

    mul-double v8, v8, v18

    add-double/2addr v3, v8

    .line 164
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 167
    .end local v5    # "l":I
    :cond_8
    aget-wide v8, v11, v2

    move v5, v2

    move-wide/from16 v18, v3

    .end local v2    # "j":I
    .end local v3    # "sum":D
    .local v5, "j":I
    .local v18, "sum":D
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    mul-double v2, v2, v18

    add-double/2addr v8, v2

    aput-wide v8, v15, v5

    .line 162
    .end local v18    # "sum":D
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "j":I
    .restart local v2    # "j":I
    goto :goto_7

    :cond_9
    move v5, v2

    .line 171
    .end local v2    # "j":I
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    add-double/2addr v2, v4

    invoke-virtual {v10, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 172
    array-length v2, v1

    move/from16 v8, v17

    invoke-static {v15, v8, v11, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 173
    add-int/lit8 v2, v12, -0x1

    aget-object v2, v14, v2

    array-length v3, v1

    invoke-static {v2, v8, v13, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    move-wide/from16 v4, p2

    move-object v9, v1

    move-object v1, v10

    move-object v2, v11

    move-object v3, v13

    .end local v10    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .end local v11    # "y":[D
    .end local v13    # "yDotTmp":[D
    .local v1, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .local v2, "y":[D
    .local v3, "yDotTmp":[D
    .local v9, "y0":[D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v10

    iput-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    .line 176
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->isLastStep:Z

    if-nez v4, :cond_d

    .line 179
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 182
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    iget-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    add-double/2addr v4, v10

    .line 183
    .local v4, "nextT":D
    if-eqz v6, :cond_a

    cmpl-double v10, v4, p2

    if-ltz v10, :cond_b

    goto :goto_9

    :cond_a
    cmpg-double v10, v4, p2

    if-gtz v10, :cond_b

    :goto_9
    const/4 v10, 0x1

    goto :goto_a

    :cond_b
    move v10, v8

    .line 184
    .local v10, "nextIsLast":Z
    :goto_a
    if-eqz v10, :cond_c

    .line 185
    move-object v11, v9

    .end local v9    # "y0":[D
    .local v11, "y0":[D
    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    sub-double v8, p2, v8

    iput-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    goto :goto_b

    .line 184
    .end local v11    # "y0":[D
    .restart local v9    # "y0":[D
    :cond_c
    move-object v11, v9

    .end local v9    # "y0":[D
    .restart local v11    # "y0":[D
    goto :goto_b

    .line 176
    .end local v4    # "nextT":D
    .end local v10    # "nextIsLast":Z
    .end local v11    # "y0":[D
    .restart local v9    # "y0":[D
    :cond_d
    move-object v11, v9

    .line 189
    .end local v9    # "y0":[D
    .restart local v11    # "y0":[D
    :goto_b
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->isLastStep:Z

    if-eqz v4, :cond_e

    .line 192
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    invoke-virtual {v7, v4, v5}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 193
    invoke-virtual {v7, v2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 195
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    iput-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepStart:D

    .line 196
    iput-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->stepSize:D

    .line 198
    return-void

    .line 189
    :cond_e
    move-object v10, v1

    move-object v13, v3

    move-object v1, v11

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v11, v2

    goto/16 :goto_3
.end method

.method public singleStep(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD)[D
    .locals 20
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .param p2, "t0"    # D
    .param p4, "y0"    # [D
    .param p5, "t"    # D

    .line 229
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-object/from16 v4, p4

    invoke-virtual {v4}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    .line 230
    .local v5, "y":[D
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    .line 231
    .local v6, "stages":I
    new-array v7, v6, [[D

    .line 232
    .local v7, "yDotK":[[D
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_0

    .line 233
    array-length v9, v4

    new-array v9, v9, [D

    aput-object v9, v7, v8

    .line 232
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 235
    .end local v8    # "i":I
    :cond_0
    invoke-virtual {v4}, [D->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    .line 238
    .local v8, "yTmp":[D
    sub-double v9, p5, v2

    .line 239
    .local v9, "h":D
    const/4 v11, 0x0

    aget-object v12, v7, v11

    invoke-interface {v1, v2, v3, v5, v12}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 242
    const/4 v12, 0x1

    .local v12, "k":I
    :goto_1
    if-ge v12, v6, :cond_3

    .line 244
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_2
    array-length v14, v4

    if-ge v13, v14, :cond_2

    .line 245
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    add-int/lit8 v15, v12, -0x1

    aget-object v14, v14, v15

    aget-wide v14, v14, v11

    aget-object v16, v7, v11

    aget-wide v16, v16, v13

    mul-double v14, v14, v16

    .line 246
    .local v14, "sum":D
    const/16 v16, 0x1

    move/from16 v19, v16

    move/from16 v16, v11

    move/from16 v11, v19

    .local v11, "l":I
    :goto_3
    if-ge v11, v12, :cond_1

    .line 247
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->a:[[D

    add-int/lit8 v3, v12, -0x1

    aget-object v2, v2, v3

    aget-wide v2, v2, v11

    aget-object v17, v7, v11

    aget-wide v17, v17, v13

    mul-double v2, v2, v17

    add-double/2addr v14, v2

    .line 246
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v2, p2

    goto :goto_3

    .line 249
    .end local v11    # "l":I
    :cond_1
    aget-wide v2, v5, v13

    mul-double v17, v9, v14

    add-double v2, v2, v17

    aput-wide v2, v8, v13

    .line 244
    .end local v14    # "sum":D
    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v2, p2

    move/from16 v11, v16

    goto :goto_2

    :cond_2
    move/from16 v16, v11

    .line 252
    .end local v13    # "j":I
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->c:[D

    add-int/lit8 v3, v12, -0x1

    aget-wide v2, v2, v3

    mul-double/2addr v2, v9

    add-double v2, p2, v2

    aget-object v11, v7, v12

    invoke-interface {v1, v2, v3, v8, v11}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 242
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v2, p2

    move/from16 v11, v16

    goto :goto_1

    :cond_3
    move/from16 v16, v11

    .line 257
    .end local v12    # "k":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_4
    array-length v3, v4

    if-ge v2, v3, :cond_5

    .line 258
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v11, v3, v16

    aget-object v3, v7, v16

    aget-wide v13, v3, v2

    mul-double/2addr v11, v13

    .line 259
    .local v11, "sum":D
    const/4 v3, 0x1

    .local v3, "l":I
    :goto_5
    if-ge v3, v6, :cond_4

    .line 260
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;->b:[D

    aget-wide v13, v13, v3

    aget-object v15, v7, v3

    aget-wide v17, v15, v2

    mul-double v13, v13, v17

    add-double/2addr v11, v13

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 262
    .end local v3    # "l":I
    :cond_4
    aget-wide v13, v5, v2

    mul-double v17, v9, v11

    add-double v13, v13, v17

    aput-wide v13, v5, v2

    .line 257
    .end local v11    # "sum":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 265
    .end local v2    # "j":I
    :cond_5
    return-object v5
.end method
