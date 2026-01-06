.class public abstract Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;
.source "AdaptiveStepsizeFieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/AbstractFieldIntegrator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private initialStep:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mainSetDimension:I

.field private maxStep:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private minStep:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected scalAbsoluteTolerance:D

.field protected scalRelativeTolerance:D

.field protected vecAbsoluteTolerance:[D

.field protected vecRelativeTolerance:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DDDD)V
    .locals 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "minStep"    # D
    .param p5, "maxStep"    # D
    .param p7, "scalAbsoluteTolerance"    # D
    .param p9, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            "DDDD)V"
        }
    .end annotation

    .line 115
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct/range {p0 .. p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;)V

    .line 116
    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->setStepSizeControl(DDDD)V

    .line 117
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->resetInternalState()V

    .line 119
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;DD[D[D)V
    .locals 7
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "minStep"    # D
    .param p5, "maxStep"    # D
    .param p7, "vecAbsoluteTolerance"    # [D
    .param p8, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;",
            "Ljava/lang/String;",
            "DD[D[D)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;)V

    .line 140
    move-object v0, p0

    move-wide v1, p3

    move-wide v3, p5

    move-object v5, p7

    move-object v6, p8

    .end local p3    # "minStep":D
    .end local p5    # "maxStep":D
    .end local p7    # "vecAbsoluteTolerance":[D
    .end local p8    # "vecRelativeTolerance":[D
    .local v1, "minStep":D
    .local v3, "maxStep":D
    .local v5, "vecAbsoluteTolerance":[D
    .local v6, "vecRelativeTolerance":[D
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->setStepSizeControl(DD[D[D)V

    .line 141
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->resetInternalState()V

    .line 143
    return-void
.end method


# virtual methods
.method protected filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;
    .locals 6
    .param p2, "forward"    # Z
    .param p3, "acceptSmall"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ZZ)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 326
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    .local p1, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object v0, p1

    .line 327
    .local v0, "filteredH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_2

    .line 328
    if-eqz p3, :cond_1

    .line 329
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 331
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MINIMAL_STEPSIZE_REACHED_DURING_INTEGRATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface {p1}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1

    .line 336
    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_3

    .line 337
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_2

    .line 338
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-gez v1, :cond_4

    .line 339
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 342
    :cond_4
    :goto_2
    return-object v0
.end method

.method public getMaxStep()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 363
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getMinStep()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 356
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public initializeStep(ZI[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 19
    .param p1, "forward"    # Z
    .param p2, "order"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI[TT;",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;",
            "Lorg/apache/commons/math3/ode/FieldEquationsMapper<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 257
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    .local p3, "scale":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "state0":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local p5, "mapper":Lorg/apache/commons/math3/ode/FieldEquationsMapper;, "Lorg/apache/commons/math3/ode/FieldEquationsMapper<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_1

    .line 259
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    :goto_0
    return-object v4

    .line 264
    :cond_1
    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 265
    .local v4, "y0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapDerivative(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    .line 266
    .local v5, "yDot0":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 267
    .local v6, "yOnScale2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 268
    .local v7, "yDotOnScale2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    array-length v9, v1

    if-ge v8, v9, :cond_2

    .line 269
    aget-object v9, v4, v8

    aget-object v10, v1, v8

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    .line 270
    .local v9, "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v9, v9}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v6, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v6, v10

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 271
    aget-object v10, v5, v8

    aget-object v11, v1, v8

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 272
    .local v10, "ratioDot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v10, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v7, v11}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v7, v11

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 268
    .end local v9    # "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v10    # "ratioDot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 275
    .end local v8    # "j":I
    :cond_2
    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v8

    const-wide v10, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v8, v8, v10

    const-wide v12, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    if-ltz v8, :cond_4

    invoke-interface {v7}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v8

    cmpg-double v8, v8, v10

    if-gez v8, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    invoke-interface {v8, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v8

    goto :goto_3

    :cond_4
    :goto_2
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v8

    invoke-interface {v8}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8, v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v8

    :goto_3
    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 278
    .local v8, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    if-nez p1, :cond_5

    .line 279
    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 283
    :cond_5
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v9

    array-length v10, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/apache/commons/math3/RealFieldElement;

    .line 284
    .local v9, "y1":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v10, 0x0

    .local v10, "j":I
    :goto_4
    array-length v11, v4

    if-ge v10, v11, :cond_6

    .line 285
    aget-object v11, v4, v10

    aget-object v14, v5, v10

    invoke-interface {v14, v8}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v11, v9, v10

    .line 284
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 287
    .end local v10    # "j":I
    :cond_6
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v10, v8}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v10, v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    .line 290
    .local v10, "yDot1":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v11

    invoke-interface {v11}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 291
    .local v11, "yDDotOnScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_5
    array-length v15, v1

    if-ge v14, v15, :cond_7

    .line 292
    aget-object v15, v10, v14

    aget-object v12, v5, v14

    invoke-interface {v15, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    aget-object v13, v1, v14

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 293
    .local v12, "ratioDotDot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v12, v12}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v11, v13

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 291
    .end local v12    # "ratioDotDot":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v14, v14, 0x1

    const-wide v12, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    goto :goto_5

    .line 295
    .end local v14    # "j":I
    :cond_7
    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v8}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 299
    invoke-interface {v7}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v12, v11}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    .line 300
    .local v12, "maxInv2":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v12}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v13

    const-wide v17, 0x3cd203af9ee75616L    # 1.0E-15

    cmpg-double v13, v13, v17

    if-gez v13, :cond_8

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v14, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-interface {v13, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v1, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-interface {v14, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v13, v1}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    move/from16 v2, p2

    goto :goto_6

    :cond_8
    const/16 v1, 0x64

    invoke-interface {v12, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->reciprocal()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    move/from16 v2, p2

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    int-to-double v13, v2

    div-double v13, v15, v13

    invoke-interface {v1, v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->pow(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 303
    .local v1, "h1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_6
    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const/16 v14, 0x64

    invoke-interface {v13, v14}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v13, v1}, Lorg/apache/commons/math3/util/MathUtils;->min(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    .line 304
    invoke-virtual/range {p4 .. p4}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    invoke-interface {v13}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    const-wide v14, 0x3d719799812dea11L    # 1.0E-12

    invoke-interface {v13, v14, v15}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v8, v13}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    .line 305
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {v14, v8}, Lorg/apache/commons/math3/util/MathUtils;->min(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v14

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/MathUtils;->max(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    .line 306
    if-nez p1, :cond_9

    .line 307
    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v13

    move-object v8, v13

    check-cast v8, Lorg/apache/commons/math3/RealFieldElement;

    .line 310
    :cond_9
    return-object v8
.end method

.method protected resetInternalState()V
    .locals 2

    .line 348
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 349
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 350
    return-void
.end method

.method protected sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEState<",
            "TT;>;TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 228
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    .local p1, "eqn":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p2, "t":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/ode/AbstractFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 230
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEState;->getStateDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    .line 232
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 233
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 236
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 237
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->mainSetDimension:I

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 240
    :cond_3
    :goto_1
    return-void
.end method

.method public setInitialStepSize(Lorg/apache/commons/math3/RealFieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 215
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    .local p1, "initialStepSize":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_1

    .line 217
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 221
    :goto_1
    return-void
.end method

.method public setStepSizeControl(DDDD)V
    .locals 3
    .param p1, "minimalStep"    # D
    .param p3, "maximalStep"    # D
    .param p5, "absoluteTolerance"    # D
    .param p7, "relativeTolerance"    # D

    .line 163
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 164
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 165
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 167
    iput-wide p5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalAbsoluteTolerance:D

    .line 168
    iput-wide p7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalRelativeTolerance:D

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    .line 170
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    .line 172
    return-void
.end method

.method public setStepSizeControl(DD[D[D)V
    .locals 3
    .param p1, "minimalStep"    # D
    .param p3, "maximalStep"    # D
    .param p5, "absoluteTolerance"    # [D
    .param p6, "relativeTolerance"    # [D

    .line 192
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->minStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 193
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->maxStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 194
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->negate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->initialStep:Lorg/apache/commons/math3/RealFieldElement;

    .line 196
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalAbsoluteTolerance:D

    .line 197
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->scalRelativeTolerance:D

    .line 198
    invoke-virtual {p5}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecAbsoluteTolerance:[D

    .line 199
    invoke-virtual {p6}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeFieldIntegrator;->vecRelativeTolerance:[D

    .line 201
    return-void
.end method
