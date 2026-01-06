.class Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.source "GillFieldStepInterpolator.java"


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


# instance fields
.field private final one_minus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final one_plus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 4
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

    .line 84
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 87
    move-object v0, p8

    move-object p8, p7

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local v0, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p2, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "forward":Z
    .local p4, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p5, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-interface {p2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 88
    .local v1, "sqrt":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_minus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    .line 89
    invoke-interface {p2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_plus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    .line 90
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator<TT;>;"
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

    .line 114
    .local v2, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v3, 0x2

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 115
    .local v4, "twoTheta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 116
    .local v5, "fourTheta2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    invoke-interface {v4, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-interface {v6, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 117
    .local v6, "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v4, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 118
    .local v9, "cDot23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_minus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 119
    .local v10, "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_plus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 120
    .local v11, "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 124
    .local v12, "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v13

    move/from16 v16, v3

    const/16 v17, 0x1

    if-eqz v13, :cond_0

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v18

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    cmpg-double v13, v18, v20

    if-gtz v13, :cond_0

    .line 125
    const-wide/high16 v7, 0x4018000000000000L    # 6.0

    move-object/from16 v13, p4

    invoke-interface {v13, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v18

    const/16 v19, 0x0

    move-object/from16 v15, v18

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 126
    .local v15, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v3, 0x6

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 127
    .local v3, "c23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v14, 0x9

    invoke-interface {v1, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v5, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v15, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 128
    .local v7, "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_minus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 129
    .local v8, "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_plus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 130
    .local v14, "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v21, v2

    move-object/from16 v20, v3

    const/4 v2, 0x3

    .end local v2    # "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "c23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v20, "c23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v21, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 131
    .local v3, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move/from16 v22, v2

    move-object/from16 v18, v3

    const/4 v2, 0x4

    .end local v3    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v18, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-array v3, v2, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v3, v19

    aput-object v8, v3, v17

    aput-object v14, v3, v16

    aput-object v18, v3, v22

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 132
    .local v3, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-array v2, v2, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v2, v19

    aput-object v10, v2, v17

    aput-object v11, v2, v16

    aput-object v12, v2, v22

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 133
    .end local v7    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v14    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v18    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v20    # "c23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v14, p5

    move-object/from16 v23, v4

    move-object v15, v9

    goto/16 :goto_0

    .line 124
    .end local v3    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v21    # "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    move-object/from16 v13, p4

    move-object/from16 v21, v2

    const/16 v19, 0x0

    .line 134
    .end local v2    # "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v21    # "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v2, -0x3fe8000000000000L    # -6.0

    move-object/from16 v14, p5

    invoke-interface {v14, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 135
    .local v2, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    invoke-interface {v4, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 136
    .local v3, "c23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v7, 0x5

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    move-object v15, v9

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .end local v9    # "cDot23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v15, "cDot23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 137
    .restart local v7    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_minus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 138
    .restart local v8    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->one_plus_inv_sqrt_2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 139
    .local v9, "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    move-object/from16 v1, v23

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v24, v3

    move-object/from16 v23, v4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .end local v3    # "c23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "twoTheta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v23, "twoTheta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v24, "c23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 140
    .local v1, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v3, 0x4

    new-array v4, v3, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v4, v19

    aput-object v8, v4, v17

    aput-object v9, v4, v16

    const/16 v20, 0x3

    aput-object v1, v4, v20

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 141
    .local v4, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-array v3, v3, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v6, v3, v19

    aput-object v10, v3, v17

    aput-object v11, v3, v16

    aput-object v12, v3, v20

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    move-object v2, v3

    move-object v3, v4

    .line 144
    .end local v1    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v7    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v9    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v24    # "c23":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v3, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_0
    new-instance v1, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v4, p2

    invoke-direct {v1, v4, v3, v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v1
.end method

.method protected create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator<TT;>;"
    .local p1, "newField":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "newYDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "newGlobalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "newGlobalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "newSoftPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "newSoftCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "newMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 58
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator<TT;>;"
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/GillFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method
