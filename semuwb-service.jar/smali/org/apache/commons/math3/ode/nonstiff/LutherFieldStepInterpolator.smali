.class Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
.source "LutherFieldStepInterpolator.java"


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
.field private final c5a:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c5b:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c5c:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c5d:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c6a:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c6b:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c6c:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final c6d:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d5a:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d5b:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d5c:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d6a:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d6b:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final d6c:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 12
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

    .line 100
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "yDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    invoke-direct/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .line 103
    invoke-interface {p1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v1, 0x4035000000000000L    # 21.0

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 104
    .local v0, "q":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v1, -0x31

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, -0x3fb7800000000000L    # -49.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c5a:Lorg/apache/commons/math3/RealFieldElement;

    .line 105
    const/16 v2, 0x11f

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v5, 0x4078800000000000L    # 392.0

    invoke-interface {v2, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c5b:Lorg/apache/commons/math3/RealFieldElement;

    .line 106
    const/16 v2, -0x165

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v7, -0x3f7c180000000000L    # -637.0

    invoke-interface {v2, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c5c:Lorg/apache/commons/math3/RealFieldElement;

    .line 107
    const/16 v2, 0x157

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v9, 0x408a080000000000L    # 833.0

    invoke-interface {v2, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c5d:Lorg/apache/commons/math3/RealFieldElement;

    .line 108
    const/16 v2, 0x31

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c6a:Lorg/apache/commons/math3/RealFieldElement;

    .line 109
    const/16 v3, -0x11f

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c6b:Lorg/apache/commons/math3/RealFieldElement;

    .line 110
    const/16 v3, 0x165

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c6c:Lorg/apache/commons/math3/RealFieldElement;

    .line 111
    const/16 v3, -0x157

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c6d:Lorg/apache/commons/math3/RealFieldElement;

    .line 112
    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x4048800000000000L    # 49.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->d5a:Lorg/apache/commons/math3/RealFieldElement;

    .line 113
    const/16 v2, -0x34f

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v5, -0x3f6a900000000000L    # -1372.0

    invoke-interface {v2, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->d5b:Lorg/apache/commons/math3/RealFieldElement;

    .line 114
    const/16 v2, 0x405

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v7, 0x40a19c0000000000L    # 2254.0

    invoke-interface {v2, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->d5c:Lorg/apache/commons/math3/RealFieldElement;

    .line 115
    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->d6a:Lorg/apache/commons/math3/RealFieldElement;

    .line 116
    const/16 v1, 0x34f

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->d6b:Lorg/apache/commons/math3/RealFieldElement;

    .line 117
    const/16 v1, -0x405

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->d6c:Lorg/apache/commons/math3/RealFieldElement;

    .line 118
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator<TT;>;"
    .local p1, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    .local p2, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p3, "theta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p4, "thetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p5, "oneMinusThetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/16 v2, 0x15

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, -0x3fb8800000000000L    # -47.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v3, 0x4042000000000000L    # 36.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, -0x3fda666666666666L    # -10.8

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 185
    .local v2, "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 186
    .local v5, "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/16 v6, 0x70

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v7, -0x3f96aaaaaaaaaaabL    # -202.66666666666666

    invoke-interface {v6, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v7, 0x405aaaaaaaaaaaabL    # 106.66666666666667

    invoke-interface {v6, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v7, -0x3fd4444444444444L    # -13.866666666666667

    invoke-interface {v6, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 187
    .local v6, "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v7, -0x3fa3a66666666666L    # -113.4

    invoke-interface {v1, v7, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v8, 0x40684ccccccccccdL    # 194.4

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v8, -0x3fa7b33333333333L    # -97.2

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v8, 0x4029eb851eb851ecL    # 12.96

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 188
    .local v7, "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c5a:Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v9, 0x4014000000000000L    # 5.0

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c5b:Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    invoke-interface {v11, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c5c:Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v14, 0x403e000000000000L    # 30.0

    invoke-interface {v11, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c5d:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, 0x4062c00000000000L    # 150.0

    invoke-interface {v11, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 189
    .local v8, "coeffDot5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c6a:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v11, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c6b:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c6c:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c6d:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v10, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v9, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 190
    .local v3, "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v9, 0x4008000000000000L    # 3.0

    invoke-interface {v1, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v9, -0x3ff8000000000000L    # -3.0

    invoke-interface {v4, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v9, 0x3fe3333333333333L    # 0.6

    invoke-interface {v4, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 194
    .local v4, "coeffDot7":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v9

    const/4 v15, 0x3

    const/16 v18, 0x2

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v21, 0x6

    const/16 v22, 0x5

    const/16 v23, 0x4

    if-eqz v9, :cond_0

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v24

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    cmpg-double v9, v24, v26

    if-gtz v9, :cond_0

    .line 196
    move-object/from16 v9, p4

    .line 197
    .local v9, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v12, 0x4010cccccccccccdL    # 4.2

    invoke-interface {v1, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v13, -0x3fd8800000000000L    # -11.75

    invoke-interface {v12, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v13, 0x4028000000000000L    # 12.0

    invoke-interface {v12, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v13, -0x3fea666666666666L    # -5.4

    invoke-interface {v12, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v1, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    invoke-interface {v12, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v9, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 198
    .local v12, "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    .line 199
    .local v13, "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v10, 0x4036666666666666L    # 22.4

    invoke-interface {v1, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    move-object v11, v2

    move-object v14, v3

    .end local v2    # "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v11, "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v14, "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v2, -0x3fb6aaaaaaaaaaabL    # -50.666666666666664

    invoke-interface {v10, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    move-object v10, v4

    .end local v4    # "coeffDot7":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v10, "coeffDot7":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v3, 0x4041c71c71c71c72L    # 35.55555555555556

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v3, -0x3fe4444444444444L    # -6.933333333333334

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 200
    .local v2, "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v3, -0x3fc951eb851eb852L    # -22.68

    invoke-interface {v1, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v26, v5

    .end local v5    # "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v26, "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v4, 0x40484ccccccccccdL    # 48.6

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, -0x3fbfcccccccccccdL    # -32.4

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, 0x4019eb851eb851ecL    # 6.48

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v9, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 201
    .local v3, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c5a:Lorg/apache/commons/math3/RealFieldElement;

    move-object v5, v2

    move-object/from16 v16, v3

    const-wide/high16 v2, 0x4039000000000000L    # 25.0

    .end local v2    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v5, "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v16, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4, v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c5b:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v17, v5

    .end local v5    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v17, "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c5c:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, 0x4056800000000000L    # 90.0

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c5d:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, 0x4072c00000000000L    # 300.0

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v9, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 202
    .local v2, "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c6a:Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v4, 0x4039000000000000L    # 25.0

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c6b:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v28, v6

    const-wide/high16 v5, 0x404e000000000000L    # 60.0

    .end local v6    # "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v28, "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c6c:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v5, 0x4056800000000000L    # 90.0

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->c6d:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v5, 0x4072c00000000000L    # 300.0

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v9, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 203
    .local v3, "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v4, 0x3fe8000000000000L    # 0.75

    invoke-interface {v1, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v5, 0x3fd3333333333333L    # 0.3

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v9, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 204
    .local v4, "coeff7":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v5, 0x7

    new-array v6, v5, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v12, v6, v20

    aput-object v13, v6, v19

    aput-object v17, v6, v18

    aput-object v16, v6, v15

    aput-object v2, v6, v23

    aput-object v3, v6, v22

    aput-object v4, v6, v21

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->previousStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    .line 205
    .local v6, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-array v5, v5, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v5, v20

    aput-object v26, v5, v19

    aput-object v28, v5, v18

    aput-object v7, v5, v15

    aput-object v8, v5, v23

    aput-object v14, v5, v22

    aput-object v10, v5, v21

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 206
    .end local v3    # "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "coeff7":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v9    # "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v16    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v17    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object/from16 v17, v7

    goto/16 :goto_0

    .line 194
    .end local v10    # "coeffDot7":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v14    # "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v26    # "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v28    # "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v3, "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v4, "coeffDot7":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v5, "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v6, "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    move-object v11, v2

    move-object v14, v3

    move-object v10, v4

    move-object/from16 v26, v5

    move-object/from16 v28, v6

    .line 208
    .end local v2    # "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "coeffDot7":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v10    # "coeffDot7":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v11    # "coeffDot1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v14    # "coeffDot6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v26    # "coeffDot2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v28    # "coeffDot3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v2, p5

    .line 209
    .local v2, "s":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v3, -0x3fef333333333333L    # -4.2

    invoke-interface {v1, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, 0x401e333333333333L    # 7.55

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, -0x3fee333333333333L    # -4.45

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, 0x3fee666666666666L    # 0.95

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, -0x4056666666666666L    # -0.05

    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 210
    .local v3, "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 211
    .local v6, "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v12, -0x3fc999999999999aL    # -22.4

    invoke-interface {v1, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v12, 0x403c444444444444L    # 28.266666666666666

    invoke-interface {v9, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v12, -0x3fe2d82d82d82d83L    # -7.288888888888889

    invoke-interface {v9, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v12, -0x40293e93e93e93e9L    # -0.35555555555555557

    invoke-interface {v9, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v2, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 212
    .local v9, "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v12, 0x4036ae147ae147aeL    # 22.68

    invoke-interface {v1, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v4, -0x3fc6147ae147ae14L    # -25.92

    invoke-interface {v12, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v12, 0x4019eb851eb851ecL    # 6.48

    invoke-interface {v4, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 213
    .local v4, "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->d5a:Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v12, 0x4039000000000000L    # 25.0

    invoke-interface {v5, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->d5b:Lorg/apache/commons/math3/RealFieldElement;

    move-object v13, v3

    move-object/from16 v16, v4

    const-wide v3, 0x4072c00000000000L    # 300.0

    .end local v3    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v13, "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v16    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v12, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v5, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->d5c:Lorg/apache/commons/math3/RealFieldElement;

    move-object v12, v6

    .end local v6    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v12, "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide v5, 0x408c200000000000L    # 900.0

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v5, -0x402e93e93e93e93fL    # -0.2722222222222222

    invoke-interface {v3, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 214
    .local v3, "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->d6a:Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v5, 0x4039000000000000L    # 25.0

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->d6b:Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v17, v7

    const-wide v6, 0x4072c00000000000L    # 300.0

    .end local v7    # "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v17, "coeffDot4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->d6c:Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, 0x408c200000000000L    # 900.0

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v5, -0x402e93e93e93e93fL    # -0.2722222222222222

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 215
    .local v4, "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const-wide/high16 v5, -0x4018000000000000L    # -0.75

    invoke-interface {v1, v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v6, -0x4056666666666666L    # -0.05

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 216
    .local v5, "coeff7":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v6, 0x7

    new-array v7, v6, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v13, v7, v20

    aput-object v12, v7, v19

    aput-object v9, v7, v18

    aput-object v16, v7, v15

    aput-object v3, v7, v23

    aput-object v4, v7, v22

    aput-object v5, v7, v21

    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->currentStateLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    .line 217
    .local v7, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    new-array v6, v6, [Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v6, v20

    aput-object v26, v6, v19

    aput-object v28, v6, v18

    aput-object v17, v6, v15

    aput-object v8, v6, v23

    aput-object v14, v6, v22

    aput-object v10, v6, v21

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->derivativeLinearCombination([Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    move-object v2, v6

    move-object v6, v7

    .line 220
    .end local v3    # "coeff5":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "coeff6":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "coeff7":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v7    # "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v9    # "coeff3":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "coeff2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "coeff1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v16    # "coeff4":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v2, "interpolatedDerivatives":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v6, "interpolatedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_0
    new-instance v3, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-object/from16 v4, p2

    invoke-direct {v3, v4, v6, v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    return-object v3
.end method

.method protected create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;
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
            "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator<TT;>;"
    .local p1, "newField":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    .local p3, "newYDotK":[[Lorg/apache/commons/math3/RealFieldElement;, "[[TT;"
    .local p4, "newGlobalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "newGlobalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "newSoftPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p7, "newSoftCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p8, "newMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    return-object v0
.end method

.method protected bridge synthetic create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaFieldStepInterpolator;
    .locals 0

    .line 38
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator<TT;>;"
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;->create(Lorg/apache/commons/math3/Field;Z[[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/nonstiff/LutherFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method
