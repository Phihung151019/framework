.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;
.source "AdamsMoultonFieldIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Moulton"


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;IDDDD)V
    .locals 13
    .param p2, "nSteps"    # I
    .param p3, "minStep"    # D
    .param p5, "maxStep"    # D
    .param p7, "scalAbsoluteTolerance"    # D
    .param p9, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;IDDDD)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 187
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    add-int/lit8 v4, p2, 0x1

    const-string v2, "Adams-Moulton"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDDDD)V

    .line 189
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;IDD[D[D)V
    .locals 11
    .param p2, "nSteps"    # I
    .param p3, "minStep"    # D
    .param p5, "maxStep"    # D
    .param p7, "vecAbsoluteTolerance"    # [D
    .param p8, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;IDD[D[D)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 210
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    add-int/lit8 v4, p2, 0x1

    const-string v2, "Adams-Moulton"

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDD[D[D)V

    .line 212
    return-void
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 27
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

    .line 222
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator<TT;>;"
    .local p1, "equations":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p2, "initialState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p3, "finalTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 223
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 224
    .local v4, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    .line 225
    .local v5, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v0, v1, v4, v5, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 226
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    invoke-interface {v3, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    const/4 v10, 0x0

    if-lez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v10

    .line 229
    .local v6, "forward":Z
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 232
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    .line 233
    .local v11, "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v11, v12, v13, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v12

    .line 239
    .local v12, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->setIsLastStep(Z)V

    .line 242
    :goto_1
    const/4 v13, 0x0

    .line 243
    .local v13, "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v14

    array-length v15, v5

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lorg/apache/commons/math3/RealFieldElement;

    .line 244
    .local v14, "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v15, 0x0

    .line 245
    .local v15, "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    move-wide/from16 v20, v8

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-interface {v7, v8, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    move-object v8, v13

    .line 246
    .end local v13    # "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v7, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v8, "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    :goto_2
    move-object v13, v11

    .end local v11    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v13, "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-interface {v7, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    cmpl-double v16, v16, v20

    if-ltz v16, :cond_3

    .line 249
    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    .line 252
    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v17

    .line 255
    .local v17, "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    array-length v10, v14

    if-ge v9, v10, :cond_1

    .line 256
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    aget-object v11, v17, v9

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v14, v9

    .line 255
    add-int/lit8 v9, v9, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    .line 258
    .end local v9    # "j":I
    :cond_1
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object v15

    .line 259
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v9, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V

    .line 262
    new-instance v9, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;

    invoke-direct {v9, v0, v5, v14, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator$Corrector;-><init>(Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    invoke-virtual {v15, v9}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v9

    move-object v7, v9

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    .line 264
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-interface {v7, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v9

    cmpl-double v9, v9, v20

    if-ltz v9, :cond_2

    .line 266
    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    .line 267
    .local v10, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v6, v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    move-object v11, v9

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->rescale(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 268
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v9, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    move-object/from16 v22, v4

    .end local v4    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v22, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move/from16 v16, v6

    .end local v6    # "forward":Z
    .local v16, "forward":Z
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v11, v2, v9, v4, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    move-object v12, v2

    .end local v12    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v2, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    goto :goto_4

    .line 264
    .end local v2    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v10    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v16    # "forward":Z
    .end local v22    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v4    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v6    # "forward":Z
    .restart local v12    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :cond_2
    move-object/from16 v22, v4

    move/from16 v16, v6

    .line 274
    .end local v4    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "forward":Z
    .end local v17    # "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v16    # "forward":Z
    .restart local v22    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_4
    move-object/from16 v2, p2

    move-object v11, v13

    move/from16 v6, v16

    move-object/from16 v4, v22

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 277
    .end local v16    # "forward":Z
    .end local v22    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v4    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v6    # "forward":Z
    :cond_3
    move-object/from16 v22, v4

    move/from16 v16, v6

    .end local v4    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "forward":Z
    .restart local v16    # "forward":Z
    .restart local v22    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 280
    .local v2, "correctedYDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    array-length v6, v5

    invoke-static {v4, v6}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/RealFieldElement;

    .line 281
    .local v4, "correctedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_5
    array-length v9, v4

    if-ge v6, v9, :cond_4

    .line 282
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    aget-object v10, v2, v6

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v9, v4, v6

    .line 281
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 284
    .end local v6    # "j":I
    :cond_4
    invoke-virtual {v0, v14, v4, v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V

    .line 287
    new-instance v6, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-direct {v6, v9, v8, v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;-><init>(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)V

    .line 288
    .end local v12    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v6, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    new-instance v11, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v17

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v19

    move-object/from16 v18, v6

    move-object/from16 v26, v14

    move-object v14, v4

    move-object v4, v13

    move-object v13, v6

    move-object/from16 v6, v26

    .local v4, "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v6, "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v13, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v14, "correctedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-direct/range {v11 .. v19}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    move/from16 v9, v16

    .end local v16    # "forward":Z
    .local v9, "forward":Z
    invoke-virtual {v0, v11, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 293
    iput-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    .line 294
    iput-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    .line 296
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->isLastStep()Z

    move-result v10

    if-nez v10, :cond_b

    .line 298
    array-length v10, v5

    const/4 v11, 0x0

    invoke-static {v8, v11, v5, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 300
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->resetOccurred()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 303
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v10

    invoke-virtual {v0, v1, v10, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 307
    :cond_5
    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    .line 308
    .restart local v10    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-interface {v12, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    .line 309
    .local v12, "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 310
    .local v11, "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v11, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    if-eqz v9, :cond_6

    cmpl-double v16, v16, v20

    if-ltz v16, :cond_7

    goto :goto_6

    :cond_6
    cmpg-double v16, v16, v20

    if-gtz v16, :cond_7

    :goto_6
    const/16 v16, 0x1

    goto :goto_7

    :cond_7
    const/16 v16, 0x0

    :goto_7
    move/from16 v17, v16

    .line 313
    .local v17, "nextIsLast":Z
    move-object/from16 v16, v2

    move/from16 v1, v17

    .end local v2    # "correctedYDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v17    # "nextIsLast":Z
    .local v1, "nextIsLast":Z
    .local v16, "correctedYDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v0, v12, v9, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    .line 315
    .local v2, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v17

    move/from16 v18, v1

    .end local v1    # "nextIsLast":Z
    .local v18, "nextIsLast":Z
    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 316
    .local v1, "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v23

    if-eqz v9, :cond_8

    cmpl-double v17, v23, v20

    if-ltz v17, :cond_9

    goto :goto_8

    :cond_8
    cmpg-double v17, v23, v20

    if-gtz v17, :cond_9

    :goto_8
    const/16 v17, 0x1

    goto :goto_9

    :cond_9
    const/16 v17, 0x0

    .line 319
    .local v17, "filteredNextIsLast":Z
    :goto_9
    if-eqz v17, :cond_a

    .line 320
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v19

    move-object/from16 v23, v1

    .end local v1    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v23, "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_a

    .line 319
    .end local v23    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v1    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_a
    move-object/from16 v23, v1

    .line 323
    .end local v1    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v23    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_a
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->rescale(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 324
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v19

    move-object/from16 v24, v2

    .end local v2    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v24, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {v19 .. v19}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    move-object/from16 v19, v4

    .end local v4    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v19, "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v25, v5

    .end local v5    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v25, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    move-object v12, v1

    .end local v13    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v1, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    goto :goto_b

    .line 296
    .end local v1    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v10    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v16    # "correctedYDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v17    # "filteredNextIsLast":Z
    .end local v18    # "nextIsLast":Z
    .end local v19    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v23    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v24    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v25    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v2, "correctedYDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v4    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v5    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v13    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :cond_b
    move-object/from16 v16, v2

    move-object/from16 v19, v4

    move-object/from16 v25, v5

    .end local v2    # "correctedYDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v4    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v5    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v16    # "correctedYDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v19    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v25    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object v12, v13

    .line 329
    .end local v6    # "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v7    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v13    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v14    # "correctedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v15    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .end local v16    # "correctedYDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v12, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :goto_b
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->isLastStep()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 331
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    .line 332
    .local v1, "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 333
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 334
    return-object v1

    .line 329
    .end local v1    # "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :cond_c
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move v6, v9

    move-object/from16 v11, v19

    move-wide/from16 v8, v20

    move-object/from16 v4, v22

    move-object/from16 v5, v25

    const/4 v10, 0x0

    goto/16 :goto_1
.end method
