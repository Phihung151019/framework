.class public abstract Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;
.source "EmbeddedRungeKuttaFieldIntegrator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/nonstiff/FieldButcherArrayProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<",
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

.field private final exp:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final fsal:I

.field private maxGrowth:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private minReduction:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private safety:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDDDD)V
    .locals 11
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fsal"    # I
    .param p4, "minStep"    # D
    .param p6, "maxStep"    # D
    .param p8, "scalAbsoluteTolerance"    # D
    .param p10, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            "IDDDD)V"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-wide/from16 v5, p6

    move-wide/from16 v7, p8

    move-wide/from16 v9, p10

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DDDD)V

    .line 119
    iput p3, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fsal:I

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getC()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    .line 121
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getA()[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 122
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getB()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    .line 124
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getOrder()I

    move-result v2

    neg-int v2, v2

    int-to-double v2, v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->exp:Lorg/apache/commons/math3/RealFieldElement;

    .line 127
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setSafety(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 128
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setMinReduction(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 129
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setMaxGrowth(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 131
    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDD[D[D)V
    .locals 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "fsal"    # I
    .param p4, "minStep"    # D
    .param p6, "maxStep"    # D
    .param p8, "vecAbsoluteTolerance"    # [D
    .param p9, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            "IDD[D[D)V"
        }
    .end annotation

    .line 150
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p4

    move-wide v5, p6

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DD[D[D)V

    .line 152
    iput p3, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fsal:I

    .line 153
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getC()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    .line 154
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getA()[[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    .line 155
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getB()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    .line 157
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getOrder()I

    move-result v2

    neg-int v2, v2

    int-to-double v2, v2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->exp:Lorg/apache/commons/math3/RealFieldElement;

    .line 160
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setSafety(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 161
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setMinReduction(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 162
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setMaxGrowth(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 164
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

.method protected abstract estimateError([[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;[TT;[TT;TT;)TT;"
        }
    .end annotation
.end method

.method protected fraction(DD)Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .param p1, "p"    # D
    .param p3, "q"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD)TT;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p3, p4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
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

    .line 172
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    int-to-double v1, p2

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getMaxGrowth()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 366
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->maxGrowth:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getMinReduction()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 352
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->minReduction:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public abstract getOrder()I
.end method

.method public getSafety()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 205
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->safety:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 28
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

    .line 221
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    .local p1, "equations":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p2, "initialState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p3, "finalTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-virtual {v0, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 222
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    .line 223
    .local v8, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v1

    invoke-virtual {v1, v6}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    .line 224
    .local v9, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v10, p1

    invoke-virtual {v0, v10, v8, v9, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 225
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

    .line 228
    .local v1, "forward":Z
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    array-length v2, v2

    add-int/lit8 v15, v2, 0x1

    .line 229
    .local v15, "stages":I
    move-object v2, v9

    .line 230
    .local v2, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    const/4 v4, -0x1

    invoke-static {v3, v15, v4}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 231
    .local v3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    array-length v5, v9

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/RealFieldElement;

    .line 234
    .local v4, "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 235
    .local v5, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v16, 0x1

    .line 238
    .local v16, "firstTime":Z
    invoke-virtual {v0, v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setIsLastStep(Z)V

    .line 242
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v17

    move-wide/from16 v18, v11

    move-object/from16 v11, v17

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    move v12, v13

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    invoke-interface {v11, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    move-object v13, v5

    move-object v14, v11

    move-object v11, v2

    .line 243
    .end local v2    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v5    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v11, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v13, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v14, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_2
    move/from16 v20, v12

    move-object/from16 v21, v13

    .end local v13    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v21, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    invoke-interface {v14, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v22

    cmpl-double v2, v22, v18

    if-ltz v2, :cond_d

    .line 246
    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    .line 247
    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    invoke-virtual {v2, v5}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v3, v20

    .line 249
    if-eqz v16, :cond_4

    .line 250
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    iget v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->mainSetDimension:I

    invoke-static {v2, v5}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/RealFieldElement;

    .line 251
    .local v2, "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v5, :cond_2

    .line 252
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    array-length v12, v2

    if-ge v5, v12, :cond_1

    .line 253
    aget-object v12, v11, v5

    invoke-interface {v12}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    move-object v13, v3

    move-object/from16 v24, v4

    .end local v3    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .end local v4    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v13, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local v24, "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v12, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    move v12, v5

    .end local v5    # "i":I
    .local v12, "i":I
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->scalAbsoluteTolerance:D

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v2, v12

    .line 252
    add-int/lit8 v5, v12, 0x1

    move-object v3, v13

    move-object/from16 v4, v24

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .end local v12    # "i":I
    .restart local v5    # "i":I
    goto :goto_3

    .end local v13    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .end local v24    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v3    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .restart local v4    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_1
    move-object v13, v3

    move-object/from16 v24, v4

    move v12, v5

    .end local v3    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .end local v4    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v5    # "i":I
    .restart local v12    # "i":I
    .restart local v13    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .restart local v24    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move v12, v1

    move-object/from16 v25, v2

    .end local v12    # "i":I
    goto :goto_5

    .line 256
    .end local v13    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .end local v24    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v3    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .restart local v4    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_2
    move-object v13, v3

    move-object/from16 v24, v4

    .end local v3    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .end local v4    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v13    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .restart local v24    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 257
    aget-object v4, v11, v3

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->vecRelativeTolerance:[D

    move v12, v1

    move-object/from16 v25, v2

    .end local v1    # "forward":Z
    .end local v2    # "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v12, "forward":Z
    .local v25, "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    aget-wide v1, v5, v3

    invoke-interface {v4, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v4, v2, v3

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v25, v3

    .line 256
    add-int/lit8 v3, v3, 0x1

    move v1, v12

    move-object/from16 v2, v25

    goto :goto_4

    .end local v12    # "forward":Z
    .end local v25    # "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v1    # "forward":Z
    .restart local v2    # "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_3
    move v12, v1

    move-object/from16 v25, v2

    .line 260
    .end local v1    # "forward":Z
    .end local v2    # "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v3    # "i":I
    .restart local v12    # "forward":Z
    .restart local v25    # "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_5
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getOrder()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v4

    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v5

    move v1, v12

    move-object/from16 v12, v24

    move-object/from16 v3, v25

    .end local v24    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v25    # "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v1    # "forward":Z
    .local v3, "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v12, "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->initializeStep(ZI[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 261
    .end local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v16, 0x0

    goto :goto_6

    .line 249
    .end local v2    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v13    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local v3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .restart local v4    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_4
    move-object v13, v3

    move-object v12, v4

    .end local v3    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .end local v4    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v12    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v13    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    move-object/from16 v2, v21

    .line 264
    .end local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v2    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_6
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 265
    if-eqz v1, :cond_5

    .line 266
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpl-double v3, v3, v18

    if-ltz v3, :cond_6

    .line 267
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    goto :goto_7

    .line 270
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    cmpg-double v3, v3, v18

    if-gtz v3, :cond_6

    .line 271
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 276
    :cond_6
    :goto_7
    const/4 v3, 0x1

    .local v3, "k":I
    :goto_8
    if-ge v3, v15, :cond_9

    .line 278
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_9
    array-length v5, v9

    if-ge v4, v5, :cond_8

    .line 279
    aget-object v5, v13, v20

    aget-object v5, v5, v4

    move-object/from16 v21, v2

    .end local v2    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v24, v3, -0x1

    aget-object v2, v2, v24

    aget-object v2, v2, v20

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 280
    .local v2, "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v5, 0x1

    .local v5, "l":I
    :goto_a
    if-ge v5, v3, :cond_7

    .line 281
    aget-object v24, v13, v5

    move/from16 v25, v3

    .end local v3    # "k":I
    .local v25, "k":I
    aget-object v3, v24, v4

    move/from16 v24, v4

    .end local v4    # "j":I
    .local v24, "j":I
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->a:[[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v26, v25, -0x1

    aget-object v4, v4, v26

    aget-object v4, v4, v5

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 280
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v24

    move/from16 v3, v25

    goto :goto_a

    .end local v24    # "j":I
    .end local v25    # "k":I
    .restart local v3    # "k":I
    .restart local v4    # "j":I
    :cond_7
    move/from16 v25, v3

    move/from16 v24, v4

    .line 283
    .end local v3    # "k":I
    .end local v4    # "j":I
    .end local v5    # "l":I
    .restart local v24    # "j":I
    .restart local v25    # "k":I
    aget-object v3, v11, v24

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v12, v24

    .line 278
    .end local v2    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v4, v24, 0x1

    move-object/from16 v2, v21

    move/from16 v3, v25

    .end local v24    # "j":I
    .restart local v4    # "j":I
    goto :goto_9

    .end local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v25    # "k":I
    .local v2, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v3    # "k":I
    :cond_8
    move-object/from16 v21, v2

    move/from16 v25, v3

    move/from16 v24, v4

    .line 286
    .end local v2    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "k":I
    .end local v4    # "j":I
    .restart local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v25    # "k":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->c:[Lorg/apache/commons/math3/RealFieldElement;

    add-int/lit8 v5, v25, -0x1

    aget-object v4, v4, v5

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v2, v12}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v13, v25

    .line 276
    add-int/lit8 v3, v25, 0x1

    move-object/from16 v2, v21

    .end local v25    # "k":I
    .restart local v3    # "k":I
    goto/16 :goto_8

    .end local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v2    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_9
    move-object/from16 v21, v2

    move/from16 v25, v3

    .line 291
    .end local v2    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "k":I
    .restart local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_b
    array-length v3, v9

    if-ge v2, v3, :cond_b

    .line 292
    aget-object v3, v13, v20

    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, v4, v20

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 293
    .local v3, "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v4, 0x1

    .local v4, "l":I
    :goto_c
    if-ge v4, v15, :cond_a

    .line 294
    aget-object v5, v13, v4

    aget-object v5, v5, v2

    move/from16 v24, v2

    .end local v2    # "j":I
    .restart local v24    # "j":I
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->b:[Lorg/apache/commons/math3/RealFieldElement;

    aget-object v2, v2, v4

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 293
    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v24

    goto :goto_c

    .end local v24    # "j":I
    .restart local v2    # "j":I
    :cond_a
    move/from16 v24, v2

    .line 296
    .end local v2    # "j":I
    .end local v4    # "l":I
    .restart local v24    # "j":I
    aget-object v2, v11, v24

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v12, v24

    .line 291
    .end local v3    # "sum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v2, v24, 0x1

    .end local v24    # "j":I
    .restart local v2    # "j":I
    goto :goto_b

    :cond_b
    move/from16 v24, v2

    .line 300
    .end local v2    # "j":I
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v0, v13, v11, v12, v2}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->estimateError([[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    .line 301
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v14, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v2, v2, v18

    if-ltz v2, :cond_c

    .line 303
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->maxGrowth:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->minReduction:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->safety:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->exp:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v5}, Lorg/apache/commons/math3/RealFieldElement;->pow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->min(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 305
    .local v2, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    move/from16 v4, v20

    invoke-virtual {v0, v3, v1, v4}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 306
    move-object v3, v12

    .end local v12    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v3, "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object v4, v3

    move-object v3, v13

    const/4 v12, 0x0

    move-object v13, v2

    goto/16 :goto_2

    .line 301
    .end local v2    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v12    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_c
    move-object v3, v12

    .end local v12    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v3    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object v4, v3

    move-object v3, v13

    move-object/from16 v13, v21

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 309
    .end local v13    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local v3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local v4, "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :cond_d
    move-object v13, v3

    move-object v3, v4

    .end local v4    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v3, "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v13    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 310
    .local v2, "stepEnd":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fsal:I

    if-ltz v4, :cond_e

    iget v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->fsal:I

    aget-object v4, v13, v4

    goto :goto_d

    :cond_e
    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 311
    .local v4, "yDotTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_d
    new-instance v5, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-direct {v5, v2, v3, v4}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 314
    .local v5, "stateTmp":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    array-length v12, v9

    const/4 v6, 0x0

    invoke-static {v3, v6, v11, v6, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    move-object v12, v3

    .end local v3    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v12    # "yTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    move-object/from16 v20, v4

    move-object v4, v5

    .end local v5    # "stateTmp":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v4, "stateTmp":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v20, "yDotTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v10}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v5

    move-object/from16 v27, v13

    move-object v13, v2

    move-object/from16 v2, v27

    .local v2, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local v13, "stepEnd":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 318
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->isLastStep()Z

    move-result v3

    if-nez v3, :cond_14

    .line 321
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->maxGrowth:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->minReduction:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->safety:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v23, v2

    .end local v2    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local v23, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->exp:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v2}, Lorg/apache/commons/math3/RealFieldElement;->pow(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v5, v2}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/apache/commons/math3/util/MathUtils;->min(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 323
    .local v2, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 324
    .local v3, "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    invoke-interface {v5, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 325
    .local v5, "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v24

    if-eqz v1, :cond_f

    cmpl-double v6, v24, v18

    if-ltz v6, :cond_10

    goto :goto_e

    :cond_f
    cmpg-double v6, v24, v18

    if-gtz v6, :cond_10

    :goto_e
    const/4 v6, 0x1

    goto :goto_f

    :cond_10
    const/4 v6, 0x0

    .line 328
    .local v6, "nextIsLast":Z
    :goto_f
    move-object/from16 v24, v2

    .end local v2    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v24, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0, v3, v1, v6}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 330
    .end local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 331
    .local v0, "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v0, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v21 .. v21}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v25

    if-eqz v1, :cond_11

    cmpl-double v21, v25, v18

    if-ltz v21, :cond_12

    goto :goto_10

    :cond_11
    cmpg-double v21, v25, v18

    if-gtz v21, :cond_12

    :goto_10
    const/16 v21, 0x1

    goto :goto_11

    :cond_12
    const/16 v21, 0x0

    .line 334
    .local v21, "filteredNextIsLast":Z
    :goto_11
    if-eqz v21, :cond_13

    .line 335
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v25

    move-object/from16 v26, v0

    .end local v0    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v26, "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    move-object v5, v0

    .end local v2    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    goto :goto_12

    .line 334
    .end local v26    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v0, "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v2    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_13
    move-object/from16 v26, v0

    .end local v0    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v26    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object v5, v2

    goto :goto_12

    .line 318
    .end local v3    # "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "nextIsLast":Z
    .end local v23    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .end local v24    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v26    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local v21, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_14
    move-object/from16 v23, v2

    .end local v2    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .restart local v23    # "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    move-object/from16 v5, v21

    .line 340
    .end local v4    # "stateTmp":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v13    # "stepEnd":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v14    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v20    # "yDotTmp":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v21    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v5, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_12
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->isLastStep()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 342
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    .line 343
    .local v0, "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->resetInternalState()V

    .line 344
    return-object v0

    .line 340
    .end local v0    # "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object v2, v11

    move-object v4, v12

    move-wide/from16 v11, v18

    move-object/from16 v3, v23

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_1
.end method

.method public setMaxGrowth(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 373
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    .local p1, "maxGrowth":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->maxGrowth:Lorg/apache/commons/math3/RealFieldElement;

    .line 374
    return-void
.end method

.method public setMinReduction(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 359
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    .local p1, "minReduction":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->minReduction:Lorg/apache/commons/math3/RealFieldElement;

    .line 360
    return-void
.end method

.method public setSafety(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 212
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<TT;>;"
    .local p1, "safety":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;->safety:Lorg/apache/commons/math3/RealFieldElement;

    .line 213
    return-void
.end method
