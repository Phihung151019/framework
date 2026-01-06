.class public Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;
.source "ThreeEighthesFieldIntegrator.java"


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

    .line 60
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p2, "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-string v0, "3/8"

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 61
    return-void
.end method


# virtual methods
.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 51
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method

.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator<TT;>;"
    .local p2, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p3, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p4, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

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
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 75
    .local v0, "a":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 76
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v0, v1

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    aget-object v3, v0, v1

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v2}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v3, v1

    .line 79
    aget-object v2, v0, v4

    aget-object v3, v0, v1

    aget-object v3, v3, v1

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v2, v1

    .line 80
    aget-object v2, v0, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v2, v4

    .line 81
    const/4 v2, 0x2

    aget-object v3, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v3, v1

    .line 82
    aget-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v4

    .line 83
    aget-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v1, v2

    .line 84
    return-object v0
.end method

.method public getB()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 90
    .local v0, "b":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x1

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 91
    const/4 v3, 0x3

    invoke-virtual {p0, v3, v2}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    .line 92
    const/4 v2, 0x2

    aget-object v1, v0, v1

    aput-object v1, v0, v2

    .line 93
    aget-object v1, v0, v4

    aput-object v1, v0, v3

    .line 94
    return-object v0
.end method

.method public getC()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 66
    .local v0, "c":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 67
    aget-object v1, v0, v3

    aget-object v3, v0, v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 68
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 69
    return-object v0
.end method
