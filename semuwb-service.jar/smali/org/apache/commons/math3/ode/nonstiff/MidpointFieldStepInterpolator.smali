.class Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.source "MidpointFieldStepInterpolator.java"


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

    .line 71
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator<TT;>;"
    .local p1, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p2, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "theta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "thetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "oneMinusThetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v0, 0x2

    invoke-interface {p3, v0}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 98
    .local v1, "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 102
    .local v2, "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    invoke-interface {p3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v3, v6, v8

    if-gtz v3, :cond_0

    .line 103
    invoke-interface {p3, p5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 104
    .local v3, "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 105
    .local v6, "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-array v7, v0, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v7, v5

    aput-object v6, v7, v4

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    .line 106
    .local v7, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v5

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 107
    .end local v3    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    goto :goto_0

    .line 108
    .end local v0    # "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v7    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_0
    invoke-interface {p5, p3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 109
    .restart local v3    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-interface {p3, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 110
    .restart local v6    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-array v7, v0, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v7, v5

    aput-object v6, v7, v4

    invoke-virtual {p0, v7}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    .line 111
    .restart local v7    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-array v0, v0, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v5

    aput-object v1, v0, v4

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    .line 114
    .end local v3    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v0    # "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_0
    new-instance v3, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-direct {v3, p2, v7, v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v3
.end method

.method protected create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator<TT;>;"
    .local p1, "newField":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "newYDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "newGlobalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "newGlobalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "newSoftPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "newSoftCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "newMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 51
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator<TT;>;"
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method
