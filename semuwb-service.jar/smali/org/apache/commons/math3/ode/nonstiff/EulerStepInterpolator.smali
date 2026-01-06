.class Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "EulerStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132df10L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 65
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;

    .line 74
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 75
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 9
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .line 88
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->previousState:[D

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p1, v2

    if-gtz v0, :cond_1

    .line 89
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedState:[D

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 90
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedState:[D

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->previousState:[D

    aget-wide v3, v3, v0

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->h:D

    mul-double/2addr v5, p1

    iget-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->yDotK:[[D

    aget-object v7, v7, v1

    aget-wide v7, v7, v0

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    aput-wide v3, v2, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->yDotK:[[D

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedDerivatives:[D

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedDerivatives:[D

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 94
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedState:[D

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 95
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedState:[D

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->currentState:[D

    aget-wide v3, v3, v0

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->yDotK:[[D

    aget-object v5, v5, v1

    aget-wide v5, v5, v0

    mul-double/2addr v5, p3

    sub-double/2addr v3, v5

    aput-wide v3, v2, v0

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 97
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->yDotK:[[D

    aget-object v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedDerivatives:[D

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;->interpolatedDerivatives:[D

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 100
    :goto_2
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 80
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/EulerStepInterpolator;)V

    return-object v0
.end method
