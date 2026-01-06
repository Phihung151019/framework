.class public Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;
.source "DormandPrince54FieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Dormand-Prince 5(4)"


# instance fields
.field private final e1:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e3:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e4:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e5:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e6:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final e7:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;DDDD)V
    .locals 12
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "scalAbsoluteTolerance"    # D
    .param p8, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;DDDD)V"
        }
    .end annotation

    .line 96
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v2, "Dormand-Prince 5(4)"

    const/4 v3, 0x6

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDDDD)V

    .line 98
    const v1, 0xe100

    const/16 v2, 0x47

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e1:Lorg/apache/commons/math3/RealFieldElement;

    .line 99
    const/16 v1, -0x47

    const/16 v3, 0x4137

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e3:Lorg/apache/commons/math3/RealFieldElement;

    .line 100
    const/16 v1, 0x780

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e4:Lorg/apache/commons/math3/RealFieldElement;

    .line 101
    const/16 v1, -0x4365

    const v2, 0x52d00

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e5:Lorg/apache/commons/math3/RealFieldElement;

    .line 102
    const/16 v1, 0x16

    const/16 v2, 0x20d

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e6:Lorg/apache/commons/math3/RealFieldElement;

    .line 103
    const/4 v1, -0x1

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e7:Lorg/apache/commons/math3/RealFieldElement;

    .line 104
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;DD[D[D)V
    .locals 10
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "vecAbsoluteTolerance"    # [D
    .param p7, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;DD[D[D)V"
        }
    .end annotation

    .line 122
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v2, "Dormand-Prince 5(4)"

    const/4 v3, 0x6

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IDD[D[D)V

    .line 124
    const v1, 0xe100

    const/16 v2, 0x47

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e1:Lorg/apache/commons/math3/RealFieldElement;

    .line 125
    const/16 v1, -0x47

    const/16 v3, 0x4137

    invoke-virtual {p0, v1, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e3:Lorg/apache/commons/math3/RealFieldElement;

    .line 126
    const/16 v1, 0x780

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e4:Lorg/apache/commons/math3/RealFieldElement;

    .line 127
    const/16 v1, -0x4365

    const v2, 0x52d00

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e5:Lorg/apache/commons/math3/RealFieldElement;

    .line 128
    const/16 v1, 0x16

    const/16 v2, 0x20d

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e6:Lorg/apache/commons/math3/RealFieldElement;

    .line 129
    const/4 v1, -0x1

    const/16 v2, 0x28

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e7:Lorg/apache/commons/math3/RealFieldElement;

    .line 130
    return-void
.end method


# virtual methods
.method protected createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 193
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    .local p2, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p3, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p4, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

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
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 54
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->createInterpolator(Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method

.method protected estimateError([[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;[TT;[TT;TT;)TT;"
        }
    .end annotation

    .line 209
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    .local p1, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p2, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "y1":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 211
    .local v0, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->mainSetDimension:I

    if-ge v1, v2, :cond_1

    .line 212
    const/4 v2, 0x0

    aget-object v2, p1, v2

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e1:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x2

    aget-object v3, p1, v3

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x3

    aget-object v3, p1, v3

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e4:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x4

    aget-object v3, p1, v3

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e5:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x5

    aget-object v3, p1, v3

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e6:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x6

    aget-object v3, p1, v3

    aget-object v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->e7:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 219
    .local v2, "errSum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    aget-object v3, p2, v1

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v4, p3, v1

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 220
    .local v3, "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v4, :cond_0

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->scalAbsoluteTolerance:D

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v4, v4, v1

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v5, v5, v1

    :goto_1
    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 223
    .local v4, "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p4, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 224
    .local v5, "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 211
    .end local v2    # "errSum":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 228
    .end local v1    # "j":I
    :cond_1
    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->mainSetDimension:I

    int-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    return-object v1
.end method

.method public getA()[[Lorg/apache/commons/math3/RealFieldElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    .line 146
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/RealFieldElement;

    .line 147
    .local v0, "a":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 148
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v2, v0, v1

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    aget-object v2, v0, v1

    const/4 v3, 0x1

    const/4 v4, 0x5

    invoke-virtual {p0, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    aput-object v5, v2, v1

    .line 151
    aget-object v2, v0, v3

    const/4 v5, 0x3

    const/16 v6, 0x28

    invoke-virtual {p0, v5, v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v2, v1

    .line 152
    aget-object v2, v0, v3

    const/16 v7, 0x9

    invoke-virtual {p0, v7, v6}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    aput-object v6, v2, v3

    .line 153
    const/4 v2, 0x2

    aget-object v6, v0, v2

    const/16 v8, 0x2c

    const/16 v9, 0x2d

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v6, v1

    .line 154
    aget-object v6, v0, v2

    const/16 v8, -0x38

    const/16 v9, 0xf

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v6, v3

    .line 155
    aget-object v6, v0, v2

    const/16 v8, 0x20

    invoke-virtual {p0, v8, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v6, v2

    .line 156
    aget-object v6, v0, v5

    const/16 v7, 0x4bac

    const/16 v8, 0x19a1

    invoke-virtual {p0, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v6, v1

    .line 157
    aget-object v6, v0, v5

    const/16 v7, -0x6310

    const/16 v9, 0x88b

    invoke-virtual {p0, v7, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v6, v3

    .line 158
    aget-object v6, v0, v5

    const v7, 0xfbc0

    invoke-virtual {p0, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v6, v2

    .line 159
    aget-object v6, v0, v5

    const/16 v7, -0xd4

    const/16 v8, 0x2d9

    invoke-virtual {p0, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    aput-object v7, v6, v5

    .line 160
    const/4 v6, 0x4

    aget-object v7, v0, v6

    const/16 v8, 0x2339

    const/16 v9, 0xc60

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v1

    .line 161
    aget-object v7, v0, v6

    const/16 v8, -0x163

    const/16 v9, 0x21

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v3

    .line 162
    aget-object v7, v0, v6

    const v8, 0xb68c

    const/16 v9, 0x147f

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v2

    .line 163
    aget-object v7, v0, v6

    const/16 v8, 0x31

    const/16 v9, 0xb0

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v5

    .line 164
    aget-object v7, v0, v6

    const/16 v8, -0x13ef

    const/16 v9, 0x48e0

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v6

    .line 165
    aget-object v7, v0, v4

    const/16 v8, 0x23

    const/16 v9, 0x180

    invoke-virtual {p0, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    aput-object v8, v7, v1

    .line 166
    aget-object v1, v0, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v7, v1, v3

    .line 167
    aget-object v1, v0, v4

    const/16 v3, 0x1f4

    const/16 v7, 0x459

    invoke-virtual {p0, v3, v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v1, v2

    .line 168
    aget-object v1, v0, v4

    const/16 v2, 0x7d

    const/16 v3, 0xc0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v1, v5

    .line 169
    aget-object v1, v0, v4

    const/16 v2, -0x88b

    const/16 v3, 0x1a80

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v1, v6

    .line 170
    aget-object v1, v0, v4

    const/16 v2, 0xb

    const/16 v3, 0x54

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    aput-object v2, v1, v4

    .line 171
    return-object v0
.end method

.method public getB()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 176
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 177
    .local v0, "b":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/16 v1, 0x23

    const/16 v2, 0x180

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 178
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 179
    const/16 v1, 0x1f4

    const/16 v2, 0x459

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 180
    const/16 v1, 0x7d

    const/16 v2, 0xc0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 181
    const/16 v1, -0x88b

    const/16 v2, 0x1a80

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 182
    const/16 v1, 0xb

    const/16 v2, 0x54

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 183
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 184
    return-object v0
.end method

.method public getC()[Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/RealFieldElement;

    .line 135
    .local v0, "c":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    .line 136
    const/16 v3, 0xa

    const/4 v4, 0x3

    invoke-virtual {p0, v4, v3}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v0, v1

    .line 137
    const/4 v1, 0x4

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v0, v5

    .line 138
    const/16 v3, 0x8

    const/16 v5, 0x9

    invoke-virtual {p0, v3, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->fraction(II)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    aput-object v3, v0, v4

    .line 139
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v3, v0, v1

    .line 140
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v1, v0, v2

    .line 141
    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .line 202
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldIntegrator<TT;>;"
    const/4 v0, 0x5

    return v0
.end method
