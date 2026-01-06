.class public Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;
.source "MidpointFieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-string v0, "midpoint"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;
    .locals 9
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[[TT;",
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

    .line 90
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator<TT;>;"
    .local p2, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p3, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p4, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    move-object v6, p3

    move-object v7, p4

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    .end local p1    # "forward":Z
    .end local p2    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .end local p3    # "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local p4    # "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local p5    # "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local v2, "forward":Z
    .local v3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local v4, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v5, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v8, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 50
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 71
    .local v0, "a":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v2, 0x0

    aget-object v3, v0, v2

    const/4 v4, 0x2

    invoke-virtual {p0, v1, v4}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v3, v2

    .line 72
    return-object v0
.end method

.method public getB()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 78
    .local v0, "b":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 79
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 80
    return-object v0
.end method

.method public getC()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 63
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 64
    .local v0, "c":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/MidpointFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 65
    return-object v0
.end method
