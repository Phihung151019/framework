.class public Lorg/apache/commons/math3/ode/sampling/StepNormalizer;
.super Ljava/lang/Object;
.source "StepNormalizer.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;


# instance fields
.field private final bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

.field private firstTime:D

.field private forward:Z

.field private h:D

.field private final handler:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

.field private lastDerivatives:[D

.field private lastState:[D

.field private lastTime:D

.field private final mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;


# direct methods
.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;)V
    .locals 6
    .param p1, "h"    # D
    .param p3, "handler"    # Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    .line 126
    sget-object v4, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    .end local p1    # "h":D
    .end local p3    # "handler":Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;
    .local v1, "h":D
    .local v3, "handler":Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    .line 128
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 6
    .param p1, "h"    # D
    .param p3, "handler"    # Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;
    .param p4, "bounds"    # Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    .line 151
    sget-object v4, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v5, p4

    .end local p1    # "h":D
    .end local p3    # "handler":Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;
    .end local p4    # "bounds":Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;
    .local v1, "h":D
    .local v3, "handler":Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;
    .local v5, "bounds":Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    .line 152
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;)V
    .locals 6
    .param p1, "h"    # D
    .param p3, "handler"    # Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;
    .param p4, "mode"    # Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    .line 139
    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->FIRST:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "h":D
    .end local p3    # "handler":Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;
    .end local p4    # "mode":Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;
    .local v1, "h":D
    .local v3, "handler":Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;
    .local v4, "mode":Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;-><init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V

    .line 140
    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/ode/sampling/FixedStepHandler;Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;)V
    .locals 2
    .param p1, "h"    # D
    .param p3, "handler"    # Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;
    .param p4, "mode"    # Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;
    .param p5, "bounds"    # Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    .line 165
    iput-object p3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    .line 166
    iput-object p4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    .line 167
    iput-object p5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    .line 168
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->firstTime:D

    .line 169
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    .line 171
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    .line 173
    return-void
.end method

.method private doNormalizedStep(Z)V
    .locals 7
    .param p1, "isLast"    # Z

    .line 277
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->firstIncluded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->firstTime:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 278
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    iget-object v4, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    iget-object v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    move v6, p1

    .end local p1    # "isLast":Z
    .local v6, "isLast":Z
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;->handleStep(D[D[DZ)V

    .line 281
    return-void
.end method

.method private isNextInStep(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
    .locals 5
    .param p1, "nextTime"    # D
    .param p3, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 267
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p3}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v3

    if-eqz v0, :cond_0

    cmpg-double v0, p1, v3

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_0
    cmpl-double v0, p1, v3

    if-ltz v0, :cond_1

    :goto_0
    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method private storeStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;D)V
    .locals 4
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 293
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    .line 294
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 295
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 297
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    iget-object v2, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    return-void
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 9
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .param p2, "isLast"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 206
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->firstTime:D

    .line 207
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    .line 208
    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    invoke-interface {p1, v3, v4}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 209
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v0

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    .line 210
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedDerivatives()[D

    move-result-object v0

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    .line 213
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v3

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    cmpl-double v0, v3, v5

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    .line 214
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    if-nez v0, :cond_1

    .line 215
    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    neg-double v3, v3

    iput-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    .line 220
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v3, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->INCREMENT:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    if-ne v0, v3, :cond_2

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    add-double/2addr v3, v5

    goto :goto_1

    :cond_2
    iget-wide v3, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    add-double/2addr v3, v5

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    mul-double/2addr v3, v5

    .line 223
    .local v3, "nextTime":D
    :goto_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->mode:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    sget-object v5, Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;->MULTIPLES:Lorg/apache/commons/math3/ode/sampling/StepNormalizerMode;

    if-ne v0, v5, :cond_3

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    invoke-static {v3, v4, v5, v6, v2}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 225
    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    add-double/2addr v3, v5

    .line 229
    :cond_3
    invoke-direct {p0, v3, v4, p1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->isNextInStep(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v0

    .line 230
    .local v0, "nextInStep":Z
    :goto_2
    if-eqz v0, :cond_4

    .line 232
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->doNormalizedStep(Z)V

    .line 235
    invoke-direct {p0, p1, v3, v4}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->storeStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;D)V

    .line 238
    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->h:D

    add-double/2addr v3, v5

    .line 239
    invoke-direct {p0, v3, v4, p1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->isNextInStep(DLorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z

    move-result v0

    goto :goto_2

    .line 242
    :cond_4
    if-eqz p2, :cond_7

    .line 246
    iget-object v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->bounds:Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;

    invoke-virtual {v5}, Lorg/apache/commons/math3/ode/sampling/StepNormalizerBounds;->lastIncluded()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-eqz v5, :cond_5

    move v5, v2

    goto :goto_3

    :cond_5
    move v5, v1

    .line 248
    .local v5, "addLast":Z
    :goto_3
    if-nez v5, :cond_6

    move v1, v2

    :cond_6
    invoke-direct {p0, v1}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->doNormalizedStep(Z)V

    .line 249
    if-eqz v5, :cond_7

    .line 250
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v6

    invoke-direct {p0, p1, v6, v7}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->storeStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;D)V

    .line 251
    invoke-direct {p0, v2}, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->doNormalizedStep(Z)V

    .line 254
    .end local v5    # "addLast":Z
    :cond_7
    return-void
.end method

.method public init(D[DD)V
    .locals 7
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "t"    # D

    .line 178
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->firstTime:D

    .line 179
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastTime:D

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastState:[D

    .line 181
    iput-object v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->lastDerivatives:[D

    .line 182
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->forward:Z

    .line 185
    iget-object v1, p0, Lorg/apache/commons/math3/ode/sampling/StepNormalizer;->handler:Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;

    move-wide v2, p1

    move-object v4, p3

    move-wide v5, p4

    .end local p1    # "t0":D
    .end local p3    # "y0":[D
    .end local p4    # "t":D
    .local v2, "t0":D
    .local v4, "y0":[D
    .local v5, "t":D
    invoke-interface/range {v1 .. v6}, Lorg/apache/commons/math3/ode/sampling/FixedStepHandler;->init(D[DD)V

    .line 187
    return-void
.end method
