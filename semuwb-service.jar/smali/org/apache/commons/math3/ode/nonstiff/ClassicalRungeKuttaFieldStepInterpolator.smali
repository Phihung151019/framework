.class Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.source "ClassicalRungeKuttaFieldStepInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 0
    .param p2, "forward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 82
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator<TT;>;"
    .local p1, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p2, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "theta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "thetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "oneMinusThetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 106
    .local v2, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 107
    .local v3, "oneMinusTheta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 108
    .local v5, "oneMinus2Theta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v3, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 109
    .local v6, "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v7, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 110
    .local v7, "coeffDot23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 114
    .local v8, "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v9

    const-wide/high16 v10, 0x4018000000000000L    # 6.0

    const/4 v14, 0x3

    const/4 v15, 0x4

    if-eqz v9, :cond_0

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    cmpg-double v9, v16, v18

    if-gtz v9, :cond_0

    .line 115
    invoke-interface {v1, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 116
    .local v9, "fourTheta2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move/from16 v16, v4

    move-object/from16 v4, p4

    invoke-interface {v4, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v17

    const/16 v18, 0x1

    move-object/from16 v12, v17

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 117
    .local v12, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v17, 0x0

    const/16 v13, 0x9

    invoke-interface {v1, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v9, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v12, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 118
    .local v10, "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v11, 0x6

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v12, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 119
    .local v11, "coeff23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v9, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 120
    .local v13, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move/from16 v19, v14

    new-array v14, v15, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v14, v17

    aput-object v11, v14, v18

    aput-object v11, v14, v16

    aput-object v13, v14, v19

    invoke-virtual {v0, v14}, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    .line 121
    .local v14, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-array v15, v15, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v15, v17

    aput-object v7, v15, v18

    aput-object v7, v15, v16

    aput-object v8, v15, v19

    invoke-virtual {v0, v15}, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    .line 122
    .end local v10    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "coeff23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v9, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v12, p5

    move-object v15, v2

    move-object/from16 v20, v3

    goto/16 :goto_0

    .line 114
    .end local v9    # "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v14    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_0
    move/from16 v16, v4

    move/from16 v19, v14

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v4, p4

    .line 123
    invoke-interface {v1, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 124
    .local v9, "fourTheta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v12, p5

    invoke-interface {v12, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 125
    .local v10, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v9}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v13, 0x4014000000000000L    # 5.0

    invoke-interface {v11, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-interface {v11, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 126
    .local v11, "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    invoke-interface {v9, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v1, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v10, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 127
    .local v13, "coeff23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v9}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    move-object v15, v2

    move-object/from16 v20, v3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .end local v2    # "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "oneMinusTheta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v15, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v20, "oneMinusTheta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v14, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v1, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 128
    .local v2, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v3, 0x4

    new-array v14, v3, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v14, v17

    aput-object v13, v14, v18

    aput-object v13, v14, v16

    aput-object v2, v14, v19

    invoke-virtual {v0, v14}, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    .line 129
    .restart local v14    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-array v3, v3, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v3, v17

    aput-object v7, v3, v18

    aput-object v7, v3, v16

    aput-object v8, v3, v19

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    move-object v9, v3

    .line 132
    .end local v2    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v10    # "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "coeff23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v9, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_0
    new-instance v2, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v3, p2

    invoke-direct {v2, v3, v14, v9}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v2
.end method

.method protected create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;
    .locals 9
    .param p2, "newForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)",
            "Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator<TT;>;"
    .local p1, "newField":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "newYDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "newGlobalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "newGlobalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "newSoftPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "newSoftCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "newMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 59
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator<TT;>;"
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/ClassicalRungeKuttaFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method
