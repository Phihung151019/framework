.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.source "AdamsBashforthIntegrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Bashforth"


# direct methods
.method public constructor <init>(IDDDD)V
    .locals 12
    .param p1, "nSteps"    # I
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "scalAbsoluteTolerance"    # D
    .param p8, "scalRelativeTolerance"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 167
    const-string v1, "Adams-Bashforth"

    move v3, p1

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    .line 169
    return-void
.end method

.method public constructor <init>(IDD[D[D)V
    .locals 10
    .param p1, "nSteps"    # I
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "vecAbsoluteTolerance"    # [D
    .param p7, "vecRelativeTolerance"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 189
    const-string v1, "Adams-Bashforth"

    move v3, p1

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    .line 191
    return-void
.end method

.method private errorEstimation([D[D[DLorg/apache/commons/math3/linear/RealMatrix;)D
    .locals 17
    .param p1, "previousState"    # [D
    .param p2, "predictedState"    # [D
    .param p3, "predictedScaled"    # [D
    .param p4, "predictedNordsieck"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 209
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    .line 210
    .local v1, "error":D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->mainSetDimension:I

    if-ge v3, v4, :cond_3

    .line 211
    aget-wide v4, p2, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    .line 212
    .local v4, "yScale":D
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecAbsoluteTolerance:[D

    if-nez v6, :cond_0

    iget-wide v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scalAbsoluteTolerance:D

    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scalRelativeTolerance:D

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v6, v6, v3

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->vecRelativeTolerance:[D

    aget-wide v8, v8, v3

    :goto_1
    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    .line 218
    .local v6, "tol":D
    const-wide/16 v8, 0x0

    .line 219
    .local v8, "variation":D
    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v10

    rem-int/lit8 v10, v10, 0x2

    const/4 v11, 0x1

    if-nez v10, :cond_1

    const/4 v10, -0x1

    goto :goto_2

    :cond_1
    move v10, v11

    .line 220
    .local v10, "sign":I
    :goto_2
    invoke-interface/range {p4 .. p4}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v12

    sub-int/2addr v12, v11

    .local v12, "k":I
    :goto_3
    if-ltz v12, :cond_2

    .line 221
    int-to-double v13, v10

    move-object/from16 v11, p4

    invoke-interface {v11, v12, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v8, v13

    .line 222
    neg-int v10, v10

    .line 220
    add-int/lit8 v12, v12, -0x1

    goto :goto_3

    :cond_2
    move-object/from16 v11, p4

    .line 224
    .end local v12    # "k":I
    aget-wide v12, p3, v3

    sub-double/2addr v8, v12

    .line 226
    aget-wide v12, p2, v3

    aget-wide v14, p1, v3

    sub-double/2addr v12, v14

    add-double/2addr v12, v8

    div-double/2addr v12, v6

    .line 227
    .local v12, "ratio":D
    mul-double v14, v12, v12

    add-double/2addr v1, v14

    .line 210
    .end local v4    # "yScale":D
    .end local v6    # "tol":D
    .end local v8    # "variation":D
    .end local v10    # "sign":I
    .end local v12    # "ratio":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v11, p4

    .line 231
    .end local v3    # "i":I
    iget v3, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->mainSetDimension:I

    int-to-double v3, v3

    div-double v3, v1, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    return-wide v3
.end method


# virtual methods
.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 29
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 241
    move-object/from16 v6, p1

    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 242
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 243
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    const/4 v8, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v8

    :goto_0
    move v9, v0

    .line 246
    .local v9, "forward":Z
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v3

    .line 247
    .local v3, "y":[D
    array-length v0, v3

    new-array v10, v0, [D

    .line 250
    .local v10, "yDot":[D
    new-instance v1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>()V

    move-object v11, v1

    .line 251
    .local v11, "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-virtual {v11, v3, v9, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 255
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->initIntegration(D[DD)V

    .line 258
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->start(D[DD)V

    .line 259
    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v11 .. v17}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 260
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    invoke-virtual {v11, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 263
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    .line 264
    .local v1, "hNew":D
    invoke-virtual {v11, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 267
    iput-boolean v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    .line 270
    :goto_1
    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->shift()V

    .line 271
    array-length v4, v3

    new-array v4, v4, [D

    .line 272
    .local v4, "predictedY":[D
    array-length v5, v3

    new-array v5, v5, [D

    .line 273
    .local v5, "predictedScaled":[D
    const/4 v12, 0x0

    .line 274
    .local v12, "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    move-object/from16 v17, v12

    .line 275
    .end local v12    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .local v13, "error":D
    .local v17, "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    :goto_2
    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v13, v15

    if-ltz v12, :cond_4

    .line 278
    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    add-double/2addr v7, v1

    .line 279
    .local v7, "stepEnd":D
    invoke-virtual {v11, v7, v8}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 280
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v12

    .line 281
    .local v12, "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    move-wide/from16 v19, v15

    invoke-virtual {v12}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v15

    .line 282
    .local v15, "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    move-object/from16 v16, v12

    .end local v12    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .local v16, "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    invoke-virtual {v11}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedState()[D

    move-result-object v12

    invoke-virtual {v15, v12, v4}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 283
    const/4 v12, 0x0

    .line 284
    .local v12, "index":I
    move/from16 v21, v12

    .end local v12    # "index":I
    .local v21, "index":I
    invoke-virtual/range {v16 .. v16}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v12

    move-wide/from16 v22, v13

    .end local v13    # "error":D
    .local v12, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .local v22, "error":D
    array-length v13, v12

    .local v13, "len$":I
    const/4 v14, 0x0

    move/from16 v28, v21

    move-object/from16 v21, v12

    move v12, v14

    move/from16 v14, v28

    .local v12, "i$":I
    .local v14, "index":I
    .local v21, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    :goto_3
    if-ge v12, v13, :cond_1

    move/from16 v24, v12

    .end local v12    # "i$":I
    .local v24, "i$":I
    aget-object v12, v21, v24

    .line 285
    .local v12, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    move/from16 v25, v13

    .end local v13    # "len$":I
    .local v25, "len$":I
    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 286
    nop

    .end local v12    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v14, v14, 0x1

    .line 284
    add-int/lit8 v12, v24, 0x1

    move/from16 v13, v25

    .end local v24    # "i$":I
    .local v12, "i$":I
    goto :goto_3

    .end local v25    # "len$":I
    .restart local v13    # "len$":I
    :cond_1
    move/from16 v24, v12

    move/from16 v25, v13

    .line 290
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    .end local v21    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-virtual {v0, v7, v8, v4, v10}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeDerivatives(D[D[D)V

    .line 293
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    array-length v13, v5

    if-ge v12, v13, :cond_2

    .line 294
    aget-wide v24, v10, v12

    mul-double v24, v24, v1

    aput-wide v24, v5, v12

    .line 293
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 296
    .end local v12    # "j":I
    :cond_2
    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v12

    .line 297
    .end local v17    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .local v12, "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    invoke-virtual {v0, v13, v5, v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 300
    move-wide/from16 v24, v7

    .end local v7    # "stepEnd":D
    .local v24, "stepEnd":D
    invoke-direct {v0, v3, v4, v5, v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->errorEstimation([D[D[DLorg/apache/commons/math3/linear/RealMatrix;)D

    move-result-wide v7

    .line 302
    .end local v22    # "error":D
    .local v7, "error":D
    cmpl-double v13, v7, v19

    if-ltz v13, :cond_3

    .line 304
    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v19

    .line 305
    .local v19, "factor":D
    move-wide/from16 v21, v7

    .end local v7    # "error":D
    .local v21, "error":D
    mul-double v7, v1, v19

    const/4 v13, 0x0

    invoke-virtual {v0, v7, v8, v9, v13}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    .line 306
    invoke-virtual {v11, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto :goto_5

    .line 302
    .end local v19    # "factor":D
    .end local v21    # "error":D
    .restart local v7    # "error":D
    :cond_3
    move-wide/from16 v21, v7

    .line 309
    .end local v7    # "error":D
    .end local v14    # "index":I
    .end local v15    # "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v16    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .end local v24    # "stepEnd":D
    .restart local v21    # "error":D
    :goto_5
    move-wide/from16 v13, v21

    const/4 v8, 0x0

    move-object/from16 v17, v12

    goto/16 :goto_2

    .line 311
    .end local v12    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .end local v21    # "error":D
    .local v13, "error":D
    .restart local v17    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    :cond_4
    move-wide/from16 v22, v13

    .end local v13    # "error":D
    .restart local v22    # "error":D
    iput-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    .line 312
    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    add-double/2addr v12, v7

    .line 313
    .local v12, "stepEnd":D
    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    move-object/from16 v16, v5

    move-wide/from16 v7, v22

    .end local v5    # "predictedScaled":[D
    .end local v22    # "error":D
    .restart local v7    # "error":D
    .local v16, "predictedScaled":[D
    invoke-virtual/range {v11 .. v17}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 316
    move-wide v13, v12

    move-object/from16 v12, v16

    move-object/from16 v15, v17

    .end local v16    # "predictedScaled":[D
    .end local v17    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .local v12, "predictedScaled":[D
    .local v13, "stepEnd":D
    .local v15, "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    invoke-virtual {v11, v13, v14}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 317
    array-length v5, v3

    move-object/from16 v16, v10

    const/4 v10, 0x0

    .end local v10    # "yDot":[D
    .local v16, "yDot":[D
    invoke-static {v4, v10, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    move-wide/from16 v19, v1

    move-object v2, v3

    move-object/from16 v18, v4

    move-object v1, v11

    move-object/from16 v3, v16

    move-wide/from16 v4, p2

    .end local v4    # "predictedY":[D
    .end local v11    # "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .end local v16    # "yDot":[D
    .local v1, "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .local v2, "y":[D
    .local v3, "yDot":[D
    .local v18, "predictedY":[D
    .local v19, "hNew":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v10

    move-object/from16 v22, v3

    move-object v3, v2

    .end local v2    # "y":[D
    .local v3, "y":[D
    .local v22, "yDot":[D
    iput-wide v10, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    .line 319
    iput-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    .line 320
    iput-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 321
    move-object/from16 v16, v12

    move-wide v12, v13

    .end local v13    # "stepEnd":D
    .end local v15    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .local v12, "stepEnd":D
    .local v16, "predictedScaled":[D
    .restart local v17    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object v11, v1

    move-object/from16 v10, v16

    move-object/from16 v23, v17

    move-object/from16 v16, v2

    move-object/from16 v17, v4

    .end local v1    # "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .end local v16    # "predictedScaled":[D
    .end local v17    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .local v10, "predictedScaled":[D
    .restart local v11    # "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .local v23, "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    invoke-virtual/range {v11 .. v17}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 323
    move-wide/from16 v24, v12

    .end local v12    # "stepEnd":D
    .restart local v24    # "stepEnd":D
    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    if-nez v1, :cond_b

    .line 326
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    invoke-virtual {v11, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 328
    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->resetOccurred:Z

    if-eqz v1, :cond_5

    .line 331
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->start(D[DD)V

    .line 332
    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->scaled:[D

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v11 .. v17}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 336
    :cond_5
    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v1

    .line 337
    .local v1, "factor":D
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepSize:D

    mul-double/2addr v4, v1

    .line 338
    .local v4, "scaledH":D
    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    add-double/2addr v12, v4

    .line 339
    .local v12, "nextT":D
    if-eqz v9, :cond_6

    cmpl-double v14, v12, p2

    if-ltz v14, :cond_7

    goto :goto_6

    :cond_6
    cmpg-double v14, v12, p2

    if-gtz v14, :cond_7

    :goto_6
    const/4 v14, 0x1

    goto :goto_7

    :cond_7
    const/4 v14, 0x0

    .line 340
    .local v14, "nextIsLast":Z
    :goto_7
    invoke-virtual {v0, v4, v5, v9, v14}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->filterStep(DZZ)D

    move-result-wide v15

    .line 342
    .end local v19    # "hNew":D
    .local v15, "hNew":D
    move-wide/from16 v26, v1

    .end local v1    # "factor":D
    .local v26, "factor":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    add-double/2addr v1, v15

    .line 343
    .local v1, "filteredNextT":D
    if-eqz v9, :cond_8

    cmpl-double v17, v1, p2

    if-ltz v17, :cond_9

    goto :goto_8

    :cond_8
    cmpg-double v17, v1, p2

    if-gtz v17, :cond_9

    :goto_8
    const/16 v17, 0x1

    goto :goto_9

    :cond_9
    const/16 v17, 0x0

    .line 344
    .local v17, "filteredNextIsLast":Z
    :goto_9
    if-eqz v17, :cond_a

    .line 345
    move-wide/from16 v19, v1

    .end local v1    # "filteredNextT":D
    .local v19, "filteredNextT":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    sub-double v15, p2, v1

    move-wide v1, v15

    goto :goto_a

    .line 344
    .end local v19    # "filteredNextT":D
    .restart local v1    # "filteredNextT":D
    :cond_a
    move-wide/from16 v19, v1

    .end local v1    # "filteredNextT":D
    .restart local v19    # "filteredNextT":D
    move-wide v1, v15

    .line 348
    .end local v15    # "hNew":D
    .local v1, "hNew":D
    :goto_a
    invoke-virtual {v11, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto :goto_b

    .line 323
    .end local v1    # "hNew":D
    .end local v4    # "scaledH":D
    .end local v12    # "nextT":D
    .end local v14    # "nextIsLast":Z
    .end local v17    # "filteredNextIsLast":Z
    .end local v26    # "factor":D
    .local v19, "hNew":D
    :cond_b
    move-wide/from16 v1, v19

    .line 352
    .end local v7    # "error":D
    .end local v10    # "predictedScaled":[D
    .end local v18    # "predictedY":[D
    .end local v19    # "hNew":D
    .end local v23    # "predictedNordsieck":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .end local v24    # "stepEnd":D
    .restart local v1    # "hNew":D
    :goto_b
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->isLastStep:Z

    if-eqz v4, :cond_c

    .line 355
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->stepStart:D

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 356
    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 358
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsBashforthIntegrator;->resetInternalState()V

    .line 360
    return-void

    .line 352
    :cond_c
    move-object/from16 v10, v22

    const/4 v8, 0x0

    goto/16 :goto_1
.end method
