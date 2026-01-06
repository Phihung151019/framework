.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;
.source "AdamsBashforthFieldIntegrator.java"


# annotations
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
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Bashforth"


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

    .line 171
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v2, "Adams-Bashforth"

    move v4, p2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    move-wide/from16 v9, p7

    move-wide/from16 v11, p9

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDDDD)V

    .line 173
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

    .line 194
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator<TT;>;"
    .local p1, "field":Lorg/apache/commons/math3/Field;, "Lorg/apache/commons/math3/Field<TT;>;"
    const-string v2, "Adams-Bashforth"

    move v4, p2

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v5, p3

    move-wide/from16 v7, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldIntegrator;-><init>(Lorg/apache/commons/math3/Field;Ljava/lang/String;IIDD[D[D)V

    .line 196
    return-void
.end method

.method private errorEstimation([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/RealFieldElement;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;[TT;[TT;",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator<TT;>;"
    .local p1, "previousState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p2, "predictedState":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p3, "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local p4, "predictedNordsieck":Lorg/apache/commons/math3/linear/FieldMatrix;, "Lorg/apache/commons/math3/linear/FieldMatrix<TT;>;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 215
    .local v0, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->mainSetDimension:I

    if-ge v1, v2, :cond_3

    .line 216
    aget-object v2, p2, v1

    invoke-interface {v2}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    .line 217
    .local v2, "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->vecAbsoluteTolerance:[D

    if-nez v3, :cond_0

    iget-wide v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scalRelativeTolerance:D

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scalAbsoluteTolerance:D

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->vecRelativeTolerance:[D

    aget-wide v3, v3, v1

    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v4, v4, v1

    :goto_1
    invoke-interface {v3, v4, v5}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/RealFieldElement;

    .line 223
    .local v3, "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 224
    .local v4, "variation":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {p4}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v5

    rem-int/lit8 v5, v5, 0x2

    const/4 v6, 0x1

    if-nez v5, :cond_1

    const/4 v5, -0x1

    goto :goto_2

    :cond_1
    move v5, v6

    .line 225
    .local v5, "sign":I
    :goto_2
    invoke-interface {p4}, Lorg/apache/commons/math3/linear/FieldMatrix;->getRowDimension()I

    move-result v7

    sub-int/2addr v7, v6

    .local v7, "k":I
    :goto_3
    if-ltz v7, :cond_2

    .line 226
    invoke-interface {p4, v7, v1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v5}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 227
    neg-int v5, v5

    .line 225
    add-int/lit8 v7, v7, -0x1

    goto :goto_3

    .line 229
    .end local v7    # "k":I
    :cond_2
    aget-object v6, p3, v1

    invoke-interface {v4, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v4, v6

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 231
    aget-object v6, p2, v1

    aget-object v7, p1, v1

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v4}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v3}, Lorg/apache/commons/math3/RealFieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    .line 232
    .local v6, "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v6, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    .line 215
    .end local v2    # "yScale":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v3    # "tol":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v4    # "variation":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v5    # "sign":I
    .end local v6    # "ratio":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 236
    .end local v1    # "i":I
    :cond_3
    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->mainSetDimension:I

    int-to-double v1, v1

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->sqrt()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    return-object v1
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;
    .locals 25
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

    .line 248
    .local p0, "this":Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;, "Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator<TT;>;"
    .local p1, "equations":Lorg/apache/commons/math3/ode/FieldExpandableODE;, "Lorg/apache/commons/math3/ode/FieldExpandableODE<TT;>;"
    .local p2, "initialState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    .local p3, "finalTime":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 249
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEState;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 250
    .local v4, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/apache/commons/math3/ode/FieldEquationsMapper;->mapState(Lorg/apache/commons/math3/ode/FieldODEState;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    .line 251
    .local v5, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v0, v1, v4, v5, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->initIntegration(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v6

    invoke-virtual {v0, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 252
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

    .line 255
    .local v6, "forward":Z
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    invoke-virtual {v0, v1, v11, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 258
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    .line 259
    .local v11, "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v13

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v11, v12, v13, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v12

    .line 265
    .local v12, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v0, v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->setIsLastStep(Z)V

    .line 268
    :goto_1
    const/4 v13, 0x0

    .line 269
    .local v13, "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v14

    array-length v15, v5

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Lorg/apache/commons/math3/RealFieldElement;

    .line 270
    .local v14, "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v15, 0x0

    .line 271
    .local v15, "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getField()Lorg/apache/commons/math3/Field;

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

    move-object v13, v12

    .line 272
    .end local v12    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v7, "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v8, "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v13, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :goto_2
    move-object v12, v11

    .end local v11    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v12, "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-interface {v7, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    cmpl-double v16, v16, v20

    if-ltz v16, :cond_3

    .line 275
    invoke-virtual {v13}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getState()[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    .line 278
    invoke-virtual {v13}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {v0, v9, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->computeDerivatives(Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;)[Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v17

    .line 281
    .local v17, "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_3
    array-length v10, v14

    if-ge v9, v10, :cond_1

    .line 282
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    aget-object v11, v17, v9

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    aput-object v10, v14, v9

    .line 281
    add-int/lit8 v9, v9, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    .line 284
    .end local v9    # "j":I
    :cond_1
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    move-result-object v15

    .line 285
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0, v9, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->updateHighOrderDerivativesPhase2([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)V

    .line 288
    invoke-direct {v0, v5, v8, v14, v15}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->errorEstimation([Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v7

    .line 290
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    invoke-interface {v7, v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->subtract(D)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v9

    cmpl-double v9, v9, v20

    if-ltz v9, :cond_2

    .line 292
    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    .line 293
    .local v10, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    const/4 v11, 0x0

    invoke-virtual {v0, v9, v6, v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    move-object v11, v9

    invoke-virtual {v0, v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->rescale(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 294
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v9, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    move-object/from16 v23, v4

    .end local v4    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v23, "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move/from16 v16, v6

    .end local v6    # "forward":Z
    .local v16, "forward":Z
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v11, v2, v9, v4, v6}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    move-object v13, v2

    .end local v13    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v2, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    goto :goto_4

    .line 290
    .end local v2    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v10    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v16    # "forward":Z
    .end local v23    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v4    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v6    # "forward":Z
    .restart local v13    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :cond_2
    move-object/from16 v23, v4

    move/from16 v16, v6

    .line 301
    .end local v4    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "forward":Z
    .end local v17    # "yDot":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v16    # "forward":Z
    .restart local v23    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_4
    move-object/from16 v2, p2

    move-object v11, v12

    move/from16 v6, v16

    move-object/from16 v4, v23

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 304
    .end local v16    # "forward":Z
    .end local v23    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v4    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v6    # "forward":Z
    :cond_3
    move-object/from16 v23, v4

    move/from16 v16, v6

    .end local v4    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v6    # "forward":Z
    .restart local v16    # "forward":Z
    .restart local v23    # "t0":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v11, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;

    move-object v2, v12

    .end local v12    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v2, "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v17

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/FieldExpandableODE;->getMapper()Lorg/apache/commons/math3/ode/FieldEquationsMapper;

    move-result-object v19

    move-object/from16 v18, v13

    invoke-direct/range {v11 .. v19}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;-><init>(Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;ZLorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/ode/FieldEquationsMapper;)V

    .end local v16    # "forward":Z
    .restart local v6    # "forward":Z
    invoke-virtual {v0, v11, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractFieldStepInterpolator;Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 309
    iput-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    .line 310
    iput-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    .line 312
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->isLastStep()Z

    move-result v4

    if-nez v4, :cond_a

    .line 314
    array-length v4, v5

    const/4 v9, 0x0

    invoke-static {v8, v9, v5, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->resetOccurred()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 319
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v4

    invoke-virtual {v0, v1, v4, v3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->start(Lorg/apache/commons/math3/ode/FieldExpandableODE;Lorg/apache/commons/math3/ode/FieldODEState;Lorg/apache/commons/math3/RealFieldElement;)V

    .line 323
    :cond_4
    invoke-virtual {v0, v7}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->computeStepGrowShrinkFactor(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    .line 324
    .local v4, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v10

    invoke-interface {v10, v4}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 325
    .local v10, "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v11

    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    invoke-interface {v11, v10}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/apache/commons/math3/RealFieldElement;

    .line 326
    .local v11, "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v11, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    if-eqz v6, :cond_5

    cmpl-double v12, v16, v20

    if-ltz v12, :cond_6

    goto :goto_5

    :cond_5
    cmpg-double v12, v16, v20

    if-gtz v12, :cond_6

    :goto_5
    const/16 v16, 0x1

    goto :goto_6

    :cond_6
    move/from16 v16, v9

    :goto_6
    move/from16 v12, v16

    .line 329
    .local v12, "nextIsLast":Z
    invoke-virtual {v0, v10, v6, v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->filterStep(Lorg/apache/commons/math3/RealFieldElement;ZZ)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v9

    .line 331
    .local v9, "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1, v9}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/RealFieldElement;

    .line 332
    .local v1, "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v1, v3}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface/range {v17 .. v17}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v17

    if-eqz v6, :cond_7

    cmpl-double v17, v17, v20

    if-ltz v17, :cond_8

    goto :goto_7

    :cond_7
    cmpg-double v17, v17, v20

    if-gtz v17, :cond_8

    :goto_7
    const/16 v17, 0x1

    goto :goto_8

    :cond_8
    const/16 v17, 0x0

    .line 335
    .local v17, "filteredNextIsLast":Z
    :goto_8
    if-eqz v17, :cond_9

    .line 336
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v18

    move-object/from16 v19, v1

    .end local v1    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v19, "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_9

    .line 335
    .end local v19    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v1    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_9
    move-object/from16 v19, v1

    .line 339
    .end local v1    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v19    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_9
    invoke-virtual {v0, v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->rescale(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 340
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v18

    move-object/from16 v22, v2

    .end local v2    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v22, "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepSize()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    move-object/from16 v18, v4

    .end local v4    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v18, "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->scaled:[Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v24, v5

    .end local v5    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .local v24, "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsFieldStepInterpolator;->taylor(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;[Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    move-object v12, v1

    .end local v13    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .local v1, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    goto :goto_a

    .line 312
    .end local v1    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v9    # "hNew":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v10    # "scaledH":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v11    # "nextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v12    # "nextIsLast":Z
    .end local v17    # "filteredNextIsLast":Z
    .end local v18    # "factor":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v19    # "filteredNextT":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v22    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v24    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v2    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v5    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v13    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :cond_a
    move-object/from16 v22, v2

    move-object/from16 v24, v5

    .end local v2    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v5    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .restart local v22    # "stepStart":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .restart local v24    # "y":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    move-object v12, v13

    .line 345
    .end local v7    # "error":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v8    # "predictedY":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v13    # "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    .end local v14    # "predictedScaled":[Lorg/apache/commons/math3/RealFieldElement;, "[TT;"
    .end local v15    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;, "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<TT;>;"
    .local v12, "stepEnd":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :goto_a
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->isLastStep()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 347
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->getStepStart()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v1

    .line 348
    .local v1, "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->setStepStart(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V

    .line 349
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthFieldIntegrator;->setStepSize(Lorg/apache/commons/math3/RealFieldElement;)V

    .line 350
    return-object v1

    .line 345
    .end local v1    # "finalState":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    :cond_b
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v8, v20

    move-object/from16 v11, v22

    move-object/from16 v4, v23

    move-object/from16 v5, v24

    const/4 v10, 0x0

    goto/16 :goto_1
.end method
