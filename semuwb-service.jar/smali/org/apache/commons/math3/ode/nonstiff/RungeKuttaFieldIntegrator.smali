.class public abstract Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;
.source "RungeKuttaFieldIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<",
        "TT;>;",
        "Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:[[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private final b:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final c:[Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field private final step:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "step":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getC()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    .line 86
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getA()[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 87
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getB()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    .line 88
    invoke-interface {p3}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    .line 89
    return-void
.end method


# virtual methods
.method protected abstract createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z[[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)",
            "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected fraction(II)Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .param p1, "p"    # I
    .param p2, "q"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    int-to-double v1, p1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    int-to-double v1, p2

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldExpandableODE<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEState<",
            "TT;>;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator<TT;>;"
    .local p1, "equations":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p2, "initialState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p3, "finalTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 120
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    .line 121
    .local v8, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    .line 122
    .local v9, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v10, p1

    invoke-virtual {v0, v10, v8, v9, v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 123
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v7, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v11, 0x0

    cmpl-double v1, v1, v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-lez v1, :cond_0

    move v1, v14

    goto :goto_0

    :cond_0
    move v1, v13

    .line 126
    .local v1, "forward":Z
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v2, v2

    add-int/lit8 v15, v2, 0x1

    .line 127
    .local v15, "stages":I
    move-object v2, v9

    .line 128
    .local v2, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v15, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 129
    .local v3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    array-length v5, v9

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/RealFieldElement;

    .line 132
    .local v4, "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    if-eqz v1, :cond_2

    .line 133
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    move-wide/from16 v16, v11

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v11

    cmpl-double v5, v11, v16

    if-ltz v5, :cond_1

    .line 134
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_1

    .line 136
    :cond_1
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_1

    .line 139
    :cond_2
    move-wide/from16 v16, v11

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v11

    cmpg-double v5, v11, v16

    if-gtz v5, :cond_3

    .line 140
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_1

    .line 142
    :cond_3
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->step:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 147
    :goto_1
    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setIsLastStep(Z)V

    .line 151
    :goto_2
    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    invoke-virtual {v5, v11}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    .line 152
    .end local v2    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v11, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v3, v13

    .line 155
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_3
    if-ge v2, v15, :cond_6

    .line 157
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    array-length v12, v9

    if-ge v5, v12, :cond_5

    .line 158
    aget-object v12, v3, v13

    aget-object v12, v12, v5

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v18, v2, -0x1

    aget-object v14, v14, v18

    aget-object v14, v14, v13

    invoke-interface {v12, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 159
    .local v12, "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v14, 0x1

    .local v14, "l":I
    :goto_5
    if-ge v14, v2, :cond_4

    .line 160
    aget-object v18, v3, v14

    move/from16 v19, v13

    aget-object v13, v18, v5

    move/from16 v18, v1

    .end local v1    # "forward":Z
    .local v18, "forward":Z
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v20, v2, -0x1

    aget-object v1, v1, v20

    aget-object v1, v1, v14

    invoke-interface {v13, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v12, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 159
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, v18

    move/from16 v13, v19

    goto :goto_5

    .end local v18    # "forward":Z
    .restart local v1    # "forward":Z
    :cond_4
    move/from16 v18, v1

    move/from16 v19, v13

    .line 162
    .end local v1    # "forward":Z
    .end local v14    # "l":I
    .restart local v18    # "forward":Z
    aget-object v1, v11, v5

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    invoke-interface {v13, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v1, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v4, v5

    .line 157
    .end local v12    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v5, v5, 0x1

    move/from16 v1, v18

    move/from16 v13, v19

    const/4 v14, 0x1

    goto :goto_4

    .end local v18    # "forward":Z
    .restart local v1    # "forward":Z
    :cond_5
    move/from16 v18, v1

    move/from16 v19, v13

    .line 165
    .end local v1    # "forward":Z
    .end local v5    # "j":I
    .restart local v18    # "forward":Z
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v13, v2, -0x1

    aget-object v12, v12, v13

    invoke-interface {v5, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v1, v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    aput-object v1, v3, v2

    .line 155
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v18

    move/from16 v13, v19

    const/4 v14, 0x1

    goto/16 :goto_3

    .end local v18    # "forward":Z
    .restart local v1    # "forward":Z
    :cond_6
    move/from16 v18, v1

    move/from16 v19, v13

    .line 170
    .end local v1    # "forward":Z
    .end local v2    # "k":I
    .restart local v18    # "forward":Z
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_6
    array-length v2, v9

    if-ge v1, v2, :cond_8

    .line 171
    aget-object v2, v3, v19

    aget-object v2, v2, v1

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v5, v5, v19

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 172
    .local v2, "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v5, 0x1

    .local v5, "l":I
    :goto_7
    if-ge v5, v15, :cond_7

    .line 173
    aget-object v12, v3, v5

    aget-object v12, v12, v1

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v13, v13, v5

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v2, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v2, v12

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 172
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 175
    .end local v5    # "l":I
    :cond_7
    aget-object v5, v11, v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-interface {v12, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v5, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v5, v4, v1

    .line 170
    .end local v2    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 177
    .end local v1    # "j":I
    :cond_8
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 178
    .local v12, "stepEnd":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0, v12, v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    .line 179
    .local v13, "yDotTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-instance v1, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-direct {v1, v12, v4, v13}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 182
    .local v1, "stateTmp":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    array-length v2, v9

    move/from16 v14, v19

    invoke-static {v4, v14, v11, v14, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    move-object v2, v3

    .end local v3    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local v2, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v5

    move-object/from16 v21, v4

    move-object v4, v1

    move/from16 v1, v18

    move-object/from16 v18, v21

    .local v1, "forward":Z
    .local v4, "stateTmp":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v18, "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 186
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->isLastStep()Z

    move-result v3

    if-nez v3, :cond_b

    .line 189
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 190
    .local v3, "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v3, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v19

    if-eqz v1, :cond_9

    cmpl-double v5, v19, v16

    if-ltz v5, :cond_a

    goto :goto_8

    :cond_9
    cmpg-double v5, v19, v16

    if-gtz v5, :cond_a

    :goto_8
    const/4 v5, 0x1

    goto :goto_9

    :cond_a
    move v5, v14

    .line 193
    .local v5, "nextIsLast":Z
    :goto_9
    if-eqz v5, :cond_b

    .line 194
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    invoke-interface {v7, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v14}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 198
    .end local v3    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "stateTmp":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v5    # "nextIsLast":Z
    .end local v12    # "stepEnd":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "yDotTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_b
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->isLastStep()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 200
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    .line 201
    .local v3, "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 202
    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 203
    return-object v3

    .line 198
    .end local v3    # "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :cond_c
    move-object v3, v2

    move-object v2, v11

    move-object/from16 v4, v18

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_2
.end method

.method public singleStep(Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations<",
            "TT;>;TT;[TT;TT;)[TT;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator<TT;>;"
    .local p1, "equations":Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;, "Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations<TT;>;"
    .local p2, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v3}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/RealFieldElement;

    .line 237
    .local v4, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v5, v5

    add-int/lit8 v5, v5, 0x1

    .line 238
    .local v5, "stages":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    const/4 v7, -0x1

    invoke-static {v6, v5, v7}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 239
    .local v6, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-virtual {v3}, [Lorg/apache/commons/math3/RealFieldElement;->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lorg/apache/commons/math3/RealFieldElement;

    .line 242
    .local v7, "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v8, p4

    invoke-interface {v8, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 243
    .local v9, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v2, v4}, Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    const/4 v11, 0x0

    aput-object v10, v6, v11

    .line 246
    const/4 v10, 0x1

    .local v10, "k":I
    :goto_0
    if-ge v10, v5, :cond_2

    .line 248
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    array-length v13, v3

    if-ge v12, v13, :cond_1

    .line 249
    aget-object v13, v6, v11

    aget-object v13, v13, v12

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v15, v10, -0x1

    aget-object v14, v14, v15

    aget-object v14, v14, v11

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 250
    .local v13, "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v14, 0x1

    .local v14, "l":I
    :goto_2
    if-ge v14, v10, :cond_0

    .line 251
    aget-object v15, v6, v14

    aget-object v15, v15, v12

    move/from16 v16, v11

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v17, v10, -0x1

    aget-object v11, v11, v17

    aget-object v11, v11, v14

    invoke-interface {v15, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v13, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 250
    add-int/lit8 v14, v14, 0x1

    move/from16 v11, v16

    goto :goto_2

    :cond_0
    move/from16 v16, v11

    .line 253
    .end local v14    # "l":I
    aget-object v11, v4, v12

    invoke-interface {v9, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v7, v12

    .line 248
    .end local v13    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v12, v12, 0x1

    move/from16 v11, v16

    goto :goto_1

    :cond_1
    move/from16 v16, v11

    .line 256
    .end local v12    # "j":I
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v12, v10, -0x1

    aget-object v11, v11, v12

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v2, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v11, v7}, Lorg/apache/commons/math3/ode/FirstOrderFieldDifferentialEquations;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    aput-object v11, v6, v10

    .line 246
    add-int/lit8 v10, v10, 0x1

    move/from16 v11, v16

    goto :goto_0

    :cond_2
    move/from16 v16, v11

    .line 261
    .end local v10    # "k":I
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_3
    array-length v11, v3

    if-ge v10, v11, :cond_4

    .line 262
    aget-object v11, v6, v16

    aget-object v11, v11, v10

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v12, v12, v16

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 263
    .local v11, "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v12, 0x1

    .local v12, "l":I
    :goto_4
    if-ge v12, v5, :cond_3

    .line 264
    aget-object v13, v6, v12

    aget-object v13, v13, v10

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v14, v14, v12

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v11, v13

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 263
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 266
    .end local v12    # "l":I
    :cond_3
    aget-object v12, v4, v10

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v12, v4, v10

    .line 261
    .end local v11    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 269
    .end local v10    # "j":I
    :cond_4
    return-object v4
.end method
