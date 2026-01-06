.class Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.source "HighamHall54FieldStepInterpolator.java"


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

    .line 55
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 81
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator<TT;>;"
    .local p1, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p2, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "theta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "thetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "oneMinusThetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-wide/high16 v3, -0x3fdc000000000000L    # -10.0

    invoke-interface {v1, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, -0x3fe2000000000000L    # -7.5

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 82
    .local v3, "bDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 83
    .local v6, "bDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v7, 0x4050e00000000000L    # 67.5

    invoke-interface {v1, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v8, -0x3fa9380000000000L    # -91.125

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v8, 0x403cb00000000000L    # 28.6875

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 84
    .local v7, "bDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v8, -0x3fa2000000000000L    # -120.0

    invoke-interface {v1, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v9, 0x4063000000000000L    # 152.0

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v9, -0x3fba000000000000L    # -44.0

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 85
    .local v8, "bDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v9, 0x404f400000000000L    # 62.5

    invoke-interface {v1, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v10, -0x3fac780000000000L    # -78.125

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v10, 0x4037700000000000L    # 23.4375

    invoke-interface {v9, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 86
    .local v9, "bDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v10, 0x3fe4000000000000L    # 0.625

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x2

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 90
    .local v10, "bDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v12

    move v15, v11

    move-object/from16 v16, v12

    const-wide/high16 v11, -0x3ff2000000000000L    # -3.75

    const-wide v13, 0x4015555555555555L    # 5.333333333333333

    const-wide/high16 v4, -0x3ffc000000000000L    # -2.5

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x1

    const/16 v22, 0x0

    move/from16 v23, v15

    const/4 v15, 0x6

    if-eqz v16, :cond_0

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v24

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    cmpg-double v16, v24, v26

    if-gtz v16, :cond_0

    .line 91
    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-interface {v4, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 92
    .local v4, "b0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 93
    .local v5, "b1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v11, 0x4030e00000000000L    # 16.875

    invoke-interface {v1, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v12, -0x3fc1a00000000000L    # -30.375

    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v12, 0x402cb00000000000L    # 14.34375

    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 94
    .local v11, "b2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v12, -0x3fc2000000000000L    # -30.0

    invoke-interface {v1, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v13, 0x4049555555555555L    # 50.666666666666664

    invoke-interface {v12, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v13, -0x3fca000000000000L    # -22.0

    invoke-interface {v12, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v2, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 95
    .local v12, "b3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v13, 0x402f400000000000L    # 15.625

    invoke-interface {v1, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v16, v3

    move-object v14, v4

    const-wide v3, -0x3fc5f55555555555L    # -26.041666666666668

    .end local v3    # "bDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "b0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v14, "b0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v16, "bDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v13, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    move-object v13, v5

    const-wide v4, 0x4027700000000000L    # 11.71875

    .end local v5    # "b1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v13, "b1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 96
    .local v3, "b4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v4, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v24, v6

    const-wide/high16 v5, -0x402c000000000000L    # -0.3125

    .end local v6    # "bDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v24, "bDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 97
    .local v4, "b5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-array v5, v15, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v14, v5, v22

    aput-object v13, v5, v21

    aput-object v11, v5, v23

    aput-object v12, v5, v20

    aput-object v3, v5, v19

    aput-object v4, v5, v18

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    .line 98
    .local v5, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-array v6, v15, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v16, v6, v22

    aput-object v24, v6, v21

    aput-object v7, v6, v23

    aput-object v8, v6, v20

    aput-object v9, v6, v19

    aput-object v10, v6, v18

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 99
    .end local v4    # "b5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "b2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "b3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "b1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v14    # "b0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v3, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object v2, v5

    move-object v5, v7

    move-object v13, v8

    goto/16 :goto_0

    .line 90
    .end local v5    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v16    # "bDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v24    # "bDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v3, "bDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v6    # "bDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    move-object/from16 v16, v3

    move-object/from16 v24, v6

    .line 100
    .end local v3    # "bDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "bDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v16    # "bDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v24    # "bDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 101
    .local v3, "theta2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v1}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 102
    .local v6, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-interface {v4, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v11, -0x404aaaaaaaaaaaabL    # -0.08333333333333333

    invoke-interface {v4, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 103
    .local v4, "b0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 104
    .local v5, "b1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v11, 0x4030e00000000000L    # 16.875

    invoke-interface {v1, v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v12, -0x3fc1a00000000000L    # -30.375

    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v1, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v12, 0x402cb00000000000L    # 14.34375

    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v3, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v12, -0x4015000000000000L    # -0.84375

    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v6, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 105
    .restart local v11    # "b2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v12, -0x3fc2000000000000L    # -30.0

    invoke-interface {v1, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v13, 0x4049555555555555L    # 50.666666666666664

    invoke-interface {v12, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v13, -0x3fca000000000000L    # -22.0

    invoke-interface {v12, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v3, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v13, 0x3ff5555555555555L    # 1.3333333333333333

    invoke-interface {v12, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v6, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 106
    .restart local v12    # "b3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v13, 0x402f400000000000L    # 15.625

    invoke-interface {v1, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    move-object v14, v4

    move-object/from16 v17, v5

    const-wide v4, -0x3fc5f55555555555L    # -26.041666666666668

    .end local v4    # "b0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "b1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v14    # "b0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v17, "b1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v13, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    move-object v5, v7

    move-object v13, v8

    const-wide v7, 0x4027700000000000L    # 11.71875

    .end local v7    # "bDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "bDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v5, "bDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v13, "bDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v7, -0x400b2aaaaaaaaaabL    # -1.3020833333333333

    invoke-interface {v4, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 107
    .local v4, "b4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v7, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    invoke-interface {v1, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v1, -0x402c000000000000L    # -0.3125

    invoke-interface {v7, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v7, -0x4045555555555555L    # -0.10416666666666667

    invoke-interface {v1, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 108
    .local v1, "b5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-array v2, v15, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v14, v2, v22

    aput-object v17, v2, v21

    aput-object v11, v2, v23

    aput-object v12, v2, v20

    aput-object v4, v2, v19

    aput-object v1, v2, v18

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 109
    .local v2, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-array v7, v15, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v16, v7, v22

    aput-object v24, v7, v21

    aput-object v5, v7, v23

    aput-object v13, v7, v20

    aput-object v9, v7, v19

    aput-object v10, v7, v18

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    move-object v3, v7

    .line 112
    .end local v1    # "b5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "b4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "b2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "b3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v14    # "b0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v17    # "b1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v3, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_0
    new-instance v1, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v4, p2

    invoke-direct {v1, v4, v2, v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v1
.end method

.method protected create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator<TT;>;"
    .local p1, "newField":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "newYDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "newGlobalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "newGlobalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "newSoftPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "newSoftCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "newMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 35
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator<TT;>;"
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/HighamHall54FieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method
