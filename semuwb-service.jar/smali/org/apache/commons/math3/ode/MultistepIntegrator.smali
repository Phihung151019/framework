.class public abstract Lorg/apache/commons/math3/ode/MultistepIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "MultistepIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;,
        Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;,
        Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckTransformer;
    }
.end annotation


# instance fields
.field private exp:D

.field private maxGrowth:D

.field private minReduction:D

.field private final nSteps:I

.field protected nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

.field private safety:D

.field protected scaled:[D

.field private starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;


# direct methods
.method protected constructor <init>(Ljava/lang/String;IIDDDD)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nSteps"    # I
    .param p3, "order"    # I
    .param p4, "minStep"    # D
    .param p6, "maxStep"    # D
    .param p8, "scalAbsoluteTolerance"    # D
    .param p10, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 118
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    .line 120
    const/4 v1, 0x2

    if-lt p2, v1, :cond_0

    .line 126
    new-instance v1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;

    move-wide v2, p4

    move-wide/from16 v4, p6

    move-wide/from16 v6, p8

    move-wide/from16 v8, p10

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;-><init>(DDDD)V

    iput-object v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    .line 129
    iput p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nSteps:I

    .line 131
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    int-to-double v3, p3

    div-double/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->exp:D

    .line 134
    const-wide v1, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setSafety(D)V

    .line 135
    const-wide v1, 0x3fc999999999999aL    # 0.2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setMinReduction(D)V

    .line 136
    iget-wide v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->exp:D

    neg-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setMaxGrowth(D)V

    .line 138
    return-void

    .line 121
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INTEGRATION_METHOD_NEEDS_AT_LEAST_TWO_PREVIOUS_POINTS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v1, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method

.method protected constructor <init>(Ljava/lang/String;IIDD[D[D)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "nSteps"    # I
    .param p3, "order"    # I
    .param p4, "minStep"    # D
    .param p6, "maxStep"    # D
    .param p8, "vecAbsoluteTolerance"    # [D
    .param p9, "vecRelativeTolerance"    # [D

    .line 164
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p4

    move-wide v4, p6

    move-object/from16 v6, p8

    move-object/from16 v7, p9

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    .line 165
    new-instance v1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince853Integrator;-><init>(DD[D[D)V

    iput-object v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    .line 168
    iput p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nSteps:I

    .line 170
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    int-to-double v3, p3

    div-double/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->exp:D

    .line 173
    const-wide v1, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setSafety(D)V

    .line 174
    const-wide v1, 0x3fc999999999999aL    # 0.2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setMinReduction(D)V

    .line 175
    iget-wide v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->exp:D

    neg-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->setMaxGrowth(D)V

    .line 177
    return-void
.end method


# virtual methods
.method protected computeStepGrowShrinkFactor(D)D
    .locals 8
    .param p1, "error"    # D

    .line 332
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->maxGrowth:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->minReduction:D

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->safety:D

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->exp:D

    invoke-static {p1, p2, v6, v7}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxGrowth()D
    .locals 2

    .line 296
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->maxGrowth:D

    return-wide v0
.end method

.method public getMinReduction()D
    .locals 2

    .line 282
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->minReduction:D

    return-wide v0
.end method

.method public getNSteps()I
    .locals 1

    .line 324
    iget v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nSteps:I

    return v0
.end method

.method public getSafety()D
    .locals 2

    .line 310
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->safety:D

    return-wide v0
.end method

.method public getStarterIntegrator()Lorg/apache/commons/math3/ode/ODEIntegrator;
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    return-object v0
.end method

.method protected abstract initializeHighOrderDerivatives(D[D[[D[[D)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
.end method

.method public setMaxGrowth(D)V
    .locals 0
    .param p1, "maxGrowth"    # D

    .line 303
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->maxGrowth:D

    .line 304
    return-void
.end method

.method public setMinReduction(D)V
    .locals 0
    .param p1, "minReduction"    # D

    .line 289
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->minReduction:D

    .line 290
    return-void
.end method

.method public setSafety(D)V
    .locals 0
    .param p1, "safety"    # D

    .line 317
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->safety:D

    .line 318
    return-void
.end method

.method public setStarterIntegrator(Lorg/apache/commons/math3/ode/FirstOrderIntegrator;)V
    .locals 0
    .param p1, "starterIntegrator"    # Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    .line 195
    iput-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    .line 196
    return-void
.end method

.method protected start(D[DD)V
    .locals 9
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 223
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->clearEventHandlers()V

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->clearStepHandlers()V

    .line 227
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    new-instance v1, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;

    iget v2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->nSteps:I

    add-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    array-length v3, p3

    invoke-direct {v1, p0, v2, v3}, Lorg/apache/commons/math3/ode/MultistepIntegrator$NordsieckInitializer;-><init>(Lorg/apache/commons/math3/ode/MultistepIntegrator;II)V

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V

    .line 232
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    instance-of v0, v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;
    :try_end_0
    .catch Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    .line 233
    :try_start_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    check-cast v0, Lorg/apache/commons/math3/ode/AbstractIntegrator;

    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v1

    invoke-virtual {v0, v1, p4, p5}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    :try_end_1
    .catch Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    goto :goto_1

    .line 235
    :cond_0
    :try_start_2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    new-instance v2, Lorg/apache/commons/math3/ode/MultistepIntegrator$1;

    invoke-direct {v2, p0}, Lorg/apache/commons/math3/ode/MultistepIntegrator$1;-><init>(Lorg/apache/commons/math3/ode/MultistepIntegrator;)V

    array-length v0, p3

    new-array v8, v0, [D
    :try_end_2
    .catch Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException; {:try_start_2 .. :try_end_2} :catch_2

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    .end local p1    # "t0":D
    .end local p3    # "y0":[D
    .end local p4    # "t":D
    .local v3, "t0":D
    .local v5, "y0":[D
    .local v6, "t":D
    :try_start_3
    invoke-interface/range {v1 .. v8}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->integrate(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;D[DD[D)D

    .line 251
    :goto_0
    new-instance p1, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MULTISTEP_STARTER_STOPPED_EARLY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .end local v3    # "t0":D
    .end local v5    # "y0":[D
    .end local v6    # "t":D
    .end local p0    # "this":Lorg/apache/commons/math3/ode/MultistepIntegrator;
    throw p1
    :try_end_3
    .catch Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 253
    .restart local v3    # "t0":D
    .restart local v5    # "y0":[D
    .restart local v6    # "t":D
    .restart local p0    # "this":Lorg/apache/commons/math3/ode/MultistepIntegrator;
    :catch_1
    move-exception v0

    goto :goto_1

    .end local v3    # "t0":D
    .end local v5    # "y0":[D
    .end local v6    # "t":D
    .restart local p1    # "t0":D
    .restart local p3    # "y0":[D
    .restart local p4    # "t":D
    :catch_2
    move-exception v0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    .line 257
    .end local p1    # "t0":D
    .end local p3    # "y0":[D
    .end local p4    # "t":D
    .local v0, "icme":Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;
    .restart local v3    # "t0":D
    .restart local v5    # "y0":[D
    .restart local v6    # "t":D
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/MultistepIntegrator;->getCounter()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    invoke-interface {p2}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->getEvaluations()I

    move-result p2

    invoke-virtual {p1, p2}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment(I)V

    .line 262
    .end local v0    # "icme":Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;
    iget-object p1, p0, Lorg/apache/commons/math3/ode/MultistepIntegrator;->starter:Lorg/apache/commons/math3/ode/FirstOrderIntegrator;

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderIntegrator;->clearStepHandlers()V

    .line 264
    return-void
.end method
