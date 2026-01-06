.class Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.source "DormandPrince54FieldStepInterpolator.java"


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
.field private final a70:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a72:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a73:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a74:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final a75:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d0:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d2:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d3:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d4:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d5:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d6:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 5
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

    .line 92
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 95
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
    invoke-interface {p2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 96
    .local v1, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v2, 0x4041800000000000L    # 35.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v3, 0x4078000000000000L    # 384.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    .line 97
    const-wide v2, 0x407f400000000000L    # 500.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x4091640000000000L    # 1113.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    .line 98
    const-wide v2, 0x405f400000000000L    # 125.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v3, 0x4068000000000000L    # 192.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    .line 99
    const-wide v2, -0x3f5eea0000000000L    # -2187.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x40ba800000000000L    # 6784.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    .line 100
    const-wide/high16 v2, 0x4026000000000000L    # 11.0

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v3, 0x4055000000000000L    # 84.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    .line 101
    const-wide v2, -0x3df850f726680000L    # -1.2715105075E10

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x420503b754000000L    # 1.1282082432E10

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    .line 102
    const-wide v2, 0x42345ea8ff940000L    # 8.74874797E10

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x421e7462aebc0000L    # 3.2700410799E10

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    .line 103
    const-wide v2, -0x3dfc163f19c80000L    # -1.0690763975E10

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x41dc04f470000000L    # 1.880347072E9

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    .line 104
    const-wide v2, 0x42646e2913596000L    # 7.01980252875E11

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x4247341a6cc00000L    # 1.99316789632E11

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    .line 105
    const-wide v2, -0x3e2a55f997c00000L    # -1.453857185E9

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x41c88455e2000000L    # 8.22651844E8

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    .line 106
    const-wide v2, 0x4190b055e4000000L    # 6.9997945E7

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x417c04f470000000L    # 2.9380423E7

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    .line 107
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator<TT;>;"
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

    .line 131
    .local v2, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 132
    .local v3, "eta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v4, 0x2

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 133
    .local v5, "twoTheta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 134
    .local v6, "dot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v7, -0x3

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 135
    .local v7, "dot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v8, 0x4008000000000000L    # 3.0

    invoke-interface {v5, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 138
    .local v8, "dot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x6

    if-eqz v11, :cond_0

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v19

    const-wide/high16 v21, 0x3fe0000000000000L    # 0.5

    cmpg-double v11, v19, v21

    if-gtz v11, :cond_0

    .line 139
    move-object/from16 v11, p4

    .line 140
    .local v11, "f1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v11, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    const/16 v20, 0x5

    move-object/from16 v13, v19

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 141
    .local v13, "f2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v13, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    const/16 v21, 0x4

    move-object/from16 v14, v19

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 142
    .local v14, "f3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v14, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    const/16 v22, 0x3

    move-object/from16 v15, v19

    check-cast v15, Lorg/apache/commons/math3/RealFieldElement;

    .line 143
    .local v15, "f4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v13, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v12, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v9, 0x2

    invoke-interface {v12, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    move-object v9, v2

    move-object v12, v3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .end local v2    # "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "eta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v9, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v12, "eta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v14, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 147
    .local v2, "coeff0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 148
    .local v3, "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v26, v2

    const/4 v2, 0x2

    .end local v2    # "coeff0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v26, "coeff0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v14, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 152
    .local v2, "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v2

    const/4 v2, 0x2

    .end local v2    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v27, "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v14, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 156
    .local v2, "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v28, v2

    const/4 v2, 0x2

    .end local v2    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v28, "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v14, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 160
    .local v2, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v4, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v29, v2

    const/4 v2, 0x2

    .end local v2    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v29, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v14, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 164
    .local v2, "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 165
    .local v4, "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v2

    .end local v2    # "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v30, "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .end local v3    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v31, "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v32, "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v6, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x2

    invoke-interface {v10, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    move-object v3, v9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .end local v9    # "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v3, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v7, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 169
    .local v2, "coeffDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 170
    .local v4, "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v24, v2

    const/4 v2, 0x2

    .end local v2    # "coeffDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v24, "coeffDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 174
    .local v2, "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v25, v2

    const/4 v2, 0x2

    .end local v2    # "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v25, "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 178
    .local v2, "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v33, v2

    const/4 v2, 0x2

    .end local v2    # "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v33, "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 182
    .local v2, "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v34, v2

    const/4 v2, 0x2

    .end local v2    # "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v34, "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 186
    .local v2, "coeffDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 187
    .local v9, "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v19, v2

    const/4 v10, 0x7

    .end local v2    # "coeffDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v19, "coeffDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-array v2, v10, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v26, v2, v17

    aput-object v31, v2, v16

    const/16 v23, 0x2

    aput-object v27, v2, v23

    aput-object v28, v2, v22

    aput-object v29, v2, v21

    aput-object v30, v2, v20

    aput-object v32, v2, v18

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 189
    .local v2, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-array v10, v10, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v24, v10, v17

    aput-object v4, v10, v16

    aput-object v25, v10, v23

    aput-object v33, v10, v22

    aput-object v34, v10, v21

    aput-object v19, v10, v20

    aput-object v9, v10, v18

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 191
    .end local v9    # "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "f1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "f2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v14    # "f3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "f4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v19    # "coeffDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v24    # "coeffDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v25    # "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v26    # "coeff0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v27    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v28    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v29    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v30    # "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v31    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v32    # "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v33    # "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v34    # "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v4, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object v1, v2

    move-object/from16 v31, v3

    move-object v2, v5

    goto/16 :goto_0

    .line 138
    .end local v4    # "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v12    # "eta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v3, "eta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    move-object v12, v3

    const/16 v20, 0x5

    const/16 v21, 0x4

    const/16 v22, 0x3

    move-object v3, v2

    .line 192
    .end local v2    # "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v3, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v12    # "eta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p5 .. p5}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 193
    .local v2, "f1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v4, p5

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 194
    .local v9, "f2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v9, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 195
    .local v10, "f3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 196
    .local v11, "f4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object v15, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .end local v3    # "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v15, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v14, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v9, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v3, 0x2

    invoke-interface {v14, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    move-object v3, v15

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    .end local v15    # "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v3    # "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v10, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v13, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v4, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 200
    .local v4, "coeff0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 201
    .local v13, "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v1, 0x2

    invoke-interface {v15, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v1, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 205
    .local v1, "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v26, v1

    const/4 v1, 0x2

    .end local v1    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v26, "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v15, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v1, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 209
    .local v1, "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v27, v1

    const/4 v1, 0x2

    .end local v1    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v27, "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v15, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v1, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 213
    .local v1, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v28, v1

    const/4 v1, 0x2

    .end local v1    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v28, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v15, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v10, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v14, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v1, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 217
    .local v1, "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v14, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    .line 218
    .local v14, "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v29, v1

    .end local v1    # "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v29, "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v30, v2

    move-object/from16 v31, v3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .end local v2    # "f1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v30, "f1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v31, "one":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v6, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v15, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a70:Lorg/apache/commons/math3/RealFieldElement;

    const/4 v2, 0x2

    invoke-interface {v15, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    move-object v15, v4

    move-object v2, v5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .end local v4    # "coeff0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "twoTheta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "twoTheta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v15, "coeff0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 222
    .local v1, "coeffDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 223
    .local v3, "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a72:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v24, v1

    const/4 v1, 0x2

    .end local v1    # "coeffDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v24    # "coeffDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d2:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 227
    .local v1, "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a73:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v25, v1

    const/4 v1, 0x2

    .end local v1    # "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v25    # "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d3:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 231
    .local v1, "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a74:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v32, v1

    const/4 v1, 0x2

    .end local v1    # "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v32, "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d4:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 235
    .local v1, "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->a75:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v33, v1

    const/4 v1, 0x2

    .end local v1    # "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v33, "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d5:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 239
    .local v1, "coeffDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->d6:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 240
    .local v4, "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v19, v1

    const/4 v5, 0x7

    .end local v1    # "coeffDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v19    # "coeffDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-array v1, v5, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v15, v1, v17

    aput-object v13, v1, v16

    const/16 v23, 0x2

    aput-object v26, v1, v23

    aput-object v27, v1, v22

    aput-object v28, v1, v21

    aput-object v29, v1, v20

    aput-object v14, v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    .line 242
    .local v1, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-array v5, v5, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v24, v5, v17

    aput-object v3, v5, v16

    aput-object v25, v5, v23

    aput-object v32, v5, v22

    aput-object v33, v5, v21

    aput-object v19, v5, v20

    aput-object v4, v5, v18

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    move-object v4, v5

    .line 245
    .end local v3    # "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v9    # "f2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v10    # "f3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "f4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v14    # "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v15    # "coeff0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v19    # "coeffDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v24    # "coeffDot0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v25    # "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v26    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v27    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v28    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v29    # "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v30    # "f1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v32    # "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v33    # "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v4, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_0
    new-instance v3, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v5, p2

    invoke-direct {v3, v5, v1, v4}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v3
.end method

.method protected create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator<TT;>;"
    .local p1, "newField":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "newYDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "newGlobalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "newGlobalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "newSoftPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "newSoftCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "newMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 35
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator<TT;>;"
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54FieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method
