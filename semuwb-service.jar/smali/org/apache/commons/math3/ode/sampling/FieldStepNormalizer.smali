.class public Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;
.super Ljava/lang/Object;
.source "FieldStepNormalizer.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/FieldStepHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/ode/sampling/FieldStepHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field private first:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field private forward:Z

.field private h:D

.field private final handler:Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;)V
    .locals 6
    .param p1, "h"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;, "Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer<TT;>;"
    .local p3, "handler":Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<TT;>;"
    sget-object v4, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .end local p1    # "h":D
    .end local p3    # "handler":Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<TT;>;"
    .local v1, "h":D
    .local v3, "handler":Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<TT;>;"
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    .line 126
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 6
    .param p1, "h"    # D
    .param p4, "bounds"    # Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;",
            ")V"
        }
    .end annotation

    .line 149
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;, "Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer<TT;>;"
    .local p3, "handler":Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<TT;>;"
    sget-object v4, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "h":D
    .end local p3    # "handler":Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<TT;>;"
    .end local p4    # "bounds":Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;
    .local v1, "h":D
    .local v3, "handler":Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<TT;>;"
    .local v5, "bounds":Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    .line 150
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;)V
    .locals 6
    .param p1, "h"    # D
    .param p4, "mode"    # Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;",
            ")V"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;, "Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer<TT;>;"
    .local p3, "handler":Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<TT;>;"
    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "h":D
    .end local p3    # "handler":Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<TT;>;"
    .end local p4    # "mode":Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;
    .local v1, "h":D
    .local v3, "handler":Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<TT;>;"
    .local v4, "mode":Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    .line 138
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 2
    .param p1, "h"    # D
    .param p4, "mode"    # Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;
    .param p5, "bounds"    # Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;",
            "Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;",
            ")V"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;, "Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer<TT;>;"
    .local p3, "handler":Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;, "Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    .line 162
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;

    .line 163
    iput-object p4, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    .line 164
    iput-object p5, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->first:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 166
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 167
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->forward:Z

    .line 168
    return-void
.end method

.method private doNormalizedStep(Z)V
    .locals 4
    .param p1, "isLast"    # Z

    .line 267
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;, "Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->firstIncluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->first:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 268
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-interface {v0, v1, p1}, Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;->handleStep(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Z)V

    .line 271
    return-void
.end method

.method private isNextInStep(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;)Z"
        }
    .end annotation

    .line 257
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;, "Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer<TT;>;"
    .local p1, "nextTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p2, "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->forward:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpg-double v0, v3, v5

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;Z)V
    .locals 8
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 198
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;, "Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer<TT;>;"
    .local p1, "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    if-nez v0, :cond_0

    .line 200
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->first:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 201
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->first:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 204
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->isForward()Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->forward:Z

    .line 205
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->forward:Z

    if-nez v0, :cond_0

    .line 206
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    neg-double v0, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    .line 211
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v1, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    mul-double/2addr v1, v3

    :goto_0
    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 214
    .local v0, "nextTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v2, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->MULTIPLES:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_2

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    invoke-static {v1, v2, v4, v5, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 216
    iget-wide v1, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 220
    :cond_2
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->isNextInStep(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z

    move-result v1

    .line 221
    .local v1, "nextInStep":Z
    :goto_1
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 223
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->doNormalizedStep(Z)V

    .line 226
    invoke-interface {p1, v0}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 229
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->h:D

    invoke-interface {v0, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 230
    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->isNextInStep(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z

    move-result v1

    goto :goto_1

    .line 233
    :cond_3
    if-eqz p2, :cond_6

    .line 237
    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->lastIncluded()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_4

    move v4, v3

    goto :goto_2

    :cond_4
    move v4, v2

    .line 239
    .local v4, "addLast":Z
    :goto_2
    if-nez v4, :cond_5

    move v2, v3

    :cond_5
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->doNormalizedStep(Z)V

    .line 240
    if-eqz v4, :cond_6

    .line 241
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 242
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->doNormalizedStep(Z)V

    .line 245
    .end local v4    # "addLast":Z
    :cond_6
    return-void
.end method

.method public init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 173
    .local p0, "this":Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;, "Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer<TT;>;"
    .local p1, "initialState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p2, "finalTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->first:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 174
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->last:Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->forward:Z

    .line 178
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/FieldStepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/ode/sampling/FieldFixedStepHandler;->init(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 180
    return-void
.end method
