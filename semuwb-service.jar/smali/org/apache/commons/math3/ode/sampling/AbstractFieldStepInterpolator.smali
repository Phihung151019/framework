.class public abstract Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
.super Ljava/lang/Object;
.source "AbstractFieldStepInterpolator.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final forward:Z

.field private final globalCurrentState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final globalPreviousState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final softCurrentState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final softPreviousState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V
    .locals 0
    .param p1, "isForward"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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

    .line 74
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<TT;>;"
    .local p2, "globalPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p3, "globalCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p4, "softPreviousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "softCurrentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p6, "equationsMapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->forward:Z

    .line 76
    iput-object p2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->globalPreviousState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 77
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->globalCurrentState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 78
    iput-object p4, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->softPreviousState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 79
    iput-object p5, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->softCurrentState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 80
    iput-object p6, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    .line 81
    return-void
.end method


# virtual methods
.method protected abstract computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;TT;TT;TT;TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method

.method protected abstract create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
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
            "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation
.end method

.method public getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->softCurrentState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object v0
.end method

.method public getGlobalCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->globalCurrentState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object v0
.end method

.method public getGlobalPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->globalPreviousState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object v0
.end method

.method public getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<TT;>;"
    .local p1, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->globalPreviousState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 143
    .local v5, "thetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->globalCurrentState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 144
    .local v6, "oneMinusThetaH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->globalCurrentState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->globalPreviousState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 145
    .local v4, "theta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-object v1, p0

    move-object v3, p1

    .end local p1    # "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v3, "time":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->computeInterpolatedStateAndDerivatives(Lorg/apache/commons/math3/ode/FieldEquationsMapper;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object p1

    return-object p1
.end method

.method public getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation

    .line 132
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->softPreviousState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    return-object v0
.end method

.method public isForward()Z
    .locals 1

    .line 150
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->forward:Z

    return v0
.end method

.method public restrictStep(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;)",
            "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<",
            "TT;>;"
        }
    .end annotation

    .line 95
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator<TT;>;"
    .local p1, "previousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p2, "currentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    iget-boolean v1, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->forward:Z

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->globalPreviousState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iget-object v3, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->globalCurrentState:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iget-object v6, p0, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->mapper:Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    .end local p1    # "previousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local p2    # "currentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v4, "previousState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v5, "currentState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;->create(ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;

    move-result-object p1

    return-object p1
.end method
