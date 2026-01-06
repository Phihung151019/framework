.class public Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;
.source "AdamsMoultonIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;
    }
.end annotation


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Adams-Moulton"


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

    .line 182
    add-int/lit8 v3, p1, 0x1

    const-string v1, "Adams-Moulton"

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDDDD)V

    .line 184
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

    .line 204
    add-int/lit8 v3, p1, 0x1

    const-string v1, "Adams-Moulton"

    move-object v0, p0

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdamsIntegrator;-><init>(Ljava/lang/String;IIDD[D[D)V

    .line 206
    return-void
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

    .line 214
    move-object/from16 v6, p1

    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 215
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 216
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v0

    cmpl-double v0, p2, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v9, v0

    .line 219
    .local v9, "forward":Z
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v3

    .line 220
    .local v3, "y0":[D
    invoke-virtual {v3}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, [D

    .line 221
    .local v10, "y":[D
    array-length v0, v10

    new-array v11, v0, [D

    .line 222
    .local v11, "yDot":[D
    array-length v0, v10

    new-array v12, v0, [D

    .line 223
    .local v12, "yTmp":[D
    array-length v0, v10

    new-array v13, v0, [D

    .line 224
    .local v13, "predictedScaled":[D
    const/4 v14, 0x0

    .line 227
    .local v14, "nordsieckTmp":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    new-instance v1, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;

    invoke-direct {v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;-><init>()V

    move-object v15, v1

    .line 228
    .local v15, "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-virtual {v15, v10, v9, v0, v1}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 232
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object/from16 v0, p0

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->initIntegration(D[DD)V

    .line 235
    invoke-virtual {v6}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v0, v10

    move-object v10, v3

    move-object v3, v0

    move-object/from16 v0, p0

    .local v3, "y":[D
    .local v10, "y0":[D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->start(D[DD)V

    .line 236
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v16, v1

    move-wide/from16 v18, v4

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    invoke-virtual/range {v15 .. v21}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 237
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 239
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    .line 240
    .local v1, "hNew":D
    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    .line 242
    const/4 v4, 0x0

    iput-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->isLastStep:Z

    .line 245
    :goto_1
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    move-wide v7, v1

    .line 246
    .end local v1    # "hNew":D
    .local v4, "error":D
    .local v7, "hNew":D
    :goto_2
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v4, v1

    if-ltz v16, :cond_4

    .line 248
    iput-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    .line 251
    move-wide/from16 v16, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    add-double v1, v18, v1

    .line 252
    .local v1, "stepEnd":D
    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->setInterpolatedTime(D)V

    .line 253
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->getExpandable()Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    move-result-object v18

    .line 254
    .local v18, "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    move-wide/from16 v22, v4

    .end local v4    # "error":D
    .local v22, "error":D
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v4

    .line 255
    .local v4, "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-virtual {v15}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedState()[D

    move-result-object v5

    invoke-virtual {v4, v5, v12}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 256
    const/4 v5, 0x0

    .line 257
    .local v5, "index":I
    move-object/from16 v19, v4

    .end local v4    # "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    .local v19, "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-virtual/range {v18 .. v18}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v4

    move/from16 v20, v5

    .end local v5    # "index":I
    .local v4, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .local v20, "index":I
    array-length v5, v4

    .local v5, "len$":I
    const/16 v21, 0x0

    move-object/from16 v24, v4

    move-wide/from16 v25, v7

    move/from16 v4, v20

    move/from16 v7, v21

    .end local v20    # "index":I
    .local v4, "index":I
    .local v7, "i$":I
    .local v24, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .local v25, "hNew":D
    :goto_3
    if-ge v7, v5, :cond_1

    aget-object v8, v24, v7

    .line 258
    .local v8, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    move/from16 v20, v5

    .end local v5    # "len$":I
    .local v20, "len$":I
    invoke-virtual {v15, v4}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v5

    invoke-virtual {v8, v5, v12}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 259
    nop

    .end local v8    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v4, v4, 0x1

    .line 257
    add-int/lit8 v7, v7, 0x1

    move/from16 v5, v20

    goto :goto_3

    .end local v20    # "len$":I
    .restart local v5    # "len$":I
    :cond_1
    move/from16 v20, v5

    .line 263
    .end local v5    # "len$":I
    .end local v7    # "i$":I
    .end local v24    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    invoke-virtual {v0, v1, v2, v12, v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeDerivatives(D[D[D)V

    .line 266
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_4
    array-length v7, v10

    if-ge v5, v7, :cond_2

    .line 267
    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    aget-wide v20, v11, v5

    mul-double v7, v7, v20

    aput-wide v7, v13, v5

    .line 266
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 269
    .end local v5    # "j":I
    :cond_2
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->updateHighOrderDerivativesPhase1(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-result-object v14

    .line 270
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    invoke-virtual {v0, v5, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 273
    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;

    invoke-direct {v5, v0, v3, v13, v12}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator$Corrector;-><init>(Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;[D[D[D)V

    invoke-virtual {v14, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D

    move-result-wide v7

    .line 275
    .end local v22    # "error":D
    .local v7, "error":D
    cmpl-double v5, v7, v16

    if-ltz v5, :cond_3

    .line 277
    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v16

    .line 278
    .local v16, "factor":D
    move-wide/from16 v20, v1

    .end local v1    # "stepEnd":D
    .local v20, "stepEnd":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    mul-double v1, v1, v16

    const/4 v5, 0x0

    invoke-virtual {v0, v1, v2, v9, v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    .line 279
    .end local v25    # "hNew":D
    .local v1, "hNew":D
    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto :goto_5

    .line 275
    .end local v16    # "factor":D
    .end local v20    # "stepEnd":D
    .local v1, "stepEnd":D
    .restart local v25    # "hNew":D
    :cond_3
    move-wide/from16 v20, v1

    .end local v1    # "stepEnd":D
    .restart local v20    # "stepEnd":D
    move-wide/from16 v1, v25

    .line 281
    .end local v4    # "index":I
    .end local v18    # "expandable":Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .end local v19    # "primary":Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v20    # "stepEnd":D
    .end local v25    # "hNew":D
    .local v1, "hNew":D
    :goto_5
    move-wide v4, v7

    move-wide v7, v1

    goto/16 :goto_2

    .line 284
    .end local v1    # "hNew":D
    .local v4, "error":D
    .local v7, "hNew":D
    :cond_4
    move-wide/from16 v22, v4

    move-wide/from16 v25, v7

    .end local v4    # "error":D
    .end local v7    # "hNew":D
    .restart local v22    # "error":D
    .restart local v25    # "hNew":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    add-double/2addr v1, v4

    .line 285
    .local v1, "stepEnd":D
    invoke-virtual {v0, v1, v2, v12, v11}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeDerivatives(D[D[D)V

    .line 288
    array-length v4, v10

    new-array v4, v4, [D

    .line 289
    .local v4, "correctedScaled":[D
    const/4 v5, 0x0

    .restart local v5    # "j":I
    :goto_6
    array-length v7, v10

    if-ge v5, v7, :cond_5

    .line 290
    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    aget-wide v16, v11, v5

    mul-double v7, v7, v16

    aput-wide v7, v4, v5

    .line 289
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 292
    .end local v5    # "j":I
    :cond_5
    invoke-virtual {v0, v13, v4, v14}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->updateHighOrderDerivativesPhase2([D[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 295
    array-length v5, v3

    const/4 v7, 0x0

    invoke-static {v12, v7, v3, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    move-wide/from16 v16, v1

    move-object/from16 v20, v4

    move-wide/from16 v18, v7

    move-object/from16 v21, v14

    .end local v1    # "stepEnd":D
    .end local v4    # "correctedScaled":[D
    .end local v14    # "nordsieckTmp":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .local v16, "stepEnd":D
    .local v20, "correctedScaled":[D
    .local v21, "nordsieckTmp":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    invoke-virtual/range {v15 .. v21}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 297
    move-wide/from16 v7, v16

    .end local v16    # "stepEnd":D
    .end local v21    # "nordsieckTmp":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .local v7, "stepEnd":D
    .restart local v14    # "nordsieckTmp":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 298
    invoke-virtual {v15}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->shift()V

    .line 299
    invoke-virtual {v15, v7, v8}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 300
    move-wide/from16 v4, p2

    move-object v2, v3

    move-wide/from16 v27, v7

    move-object v3, v11

    move-object v1, v15

    move-object/from16 v11, v20

    move-wide/from16 v7, v22

    move-object/from16 v22, v12

    move-object/from16 v23, v13

    .end local v12    # "yTmp":[D
    .end local v13    # "predictedScaled":[D
    .end local v15    # "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .end local v20    # "correctedScaled":[D
    .local v1, "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .local v2, "y":[D
    .local v3, "yDot":[D
    .local v7, "error":D
    .local v11, "correctedScaled":[D
    .local v22, "yTmp":[D
    .local v23, "predictedScaled":[D
    .local v27, "stepEnd":D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v12

    move-object/from16 v24, v3

    move-object v3, v2

    .end local v1    # "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .end local v2    # "y":[D
    .local v3, "y":[D
    .restart local v15    # "interpolator":Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;
    .local v24, "yDot":[D
    iput-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    .line 301
    iput-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    .line 302
    iput-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    .line 304
    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->isLastStep:Z

    if-nez v1, :cond_c

    .line 307
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->storeTime(D)V

    .line 309
    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->resetOccurred:Z

    if-eqz v1, :cond_6

    .line 312
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    move-wide/from16 v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->start(D[DD)V

    .line 313
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->scaled:[D

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->nordsieck:Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    move-wide/from16 v16, v1

    move-wide/from16 v18, v4

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    invoke-virtual/range {v15 .. v21}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->reinitialize(DD[DLorg/apache/commons/math3/linear/Array2DRowRealMatrix;)V

    .line 318
    :cond_6
    invoke-virtual {v0, v7, v8}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->computeStepGrowShrinkFactor(D)D

    move-result-wide v1

    .line 319
    .local v1, "factor":D
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepSize:D

    mul-double/2addr v4, v1

    .line 320
    .local v4, "scaledH":D
    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    add-double/2addr v12, v4

    .line 321
    .local v12, "nextT":D
    if-eqz v9, :cond_7

    cmpl-double v16, v12, p2

    if-ltz v16, :cond_8

    goto :goto_7

    :cond_7
    cmpg-double v16, v12, p2

    if-gtz v16, :cond_8

    :goto_7
    const/16 v16, 0x1

    goto :goto_8

    :cond_8
    const/16 v16, 0x0

    :goto_8
    move/from16 v17, v16

    .line 322
    .local v17, "nextIsLast":Z
    move-wide/from16 v18, v1

    move/from16 v1, v17

    .end local v17    # "nextIsLast":Z
    .local v1, "nextIsLast":Z
    .local v18, "factor":D
    invoke-virtual {v0, v4, v5, v9, v1}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->filterStep(DZZ)D

    move-result-wide v16

    .line 324
    .end local v25    # "hNew":D
    .local v16, "hNew":D
    move/from16 v20, v1

    .end local v1    # "nextIsLast":Z
    .local v20, "nextIsLast":Z
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    add-double v1, v1, v16

    .line 325
    .local v1, "filteredNextT":D
    if-eqz v9, :cond_9

    cmpl-double v21, v1, p2

    if-ltz v21, :cond_a

    goto :goto_9

    :cond_9
    cmpg-double v21, v1, p2

    if-gtz v21, :cond_a

    :goto_9
    const/16 v21, 0x1

    goto :goto_a

    :cond_a
    const/16 v21, 0x0

    .line 326
    .local v21, "filteredNextIsLast":Z
    :goto_a
    if-eqz v21, :cond_b

    .line 327
    move-wide/from16 v25, v1

    .end local v1    # "filteredNextT":D
    .local v25, "filteredNextT":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    sub-double v16, p2, v1

    move-wide/from16 v1, v16

    goto :goto_b

    .line 326
    .end local v25    # "filteredNextT":D
    .restart local v1    # "filteredNextT":D
    :cond_b
    move-wide/from16 v25, v1

    .end local v1    # "filteredNextT":D
    .restart local v25    # "filteredNextT":D
    move-wide/from16 v1, v16

    .line 330
    .end local v16    # "hNew":D
    .local v1, "hNew":D
    :goto_b
    invoke-virtual {v15, v1, v2}, Lorg/apache/commons/math3/ode/sampling/NordsieckStepInterpolator;->rescale(D)V

    goto :goto_c

    .line 304
    .end local v1    # "hNew":D
    .end local v4    # "scaledH":D
    .end local v12    # "nextT":D
    .end local v18    # "factor":D
    .end local v20    # "nextIsLast":Z
    .end local v21    # "filteredNextIsLast":Z
    .local v25, "hNew":D
    :cond_c
    move-wide/from16 v1, v25

    .line 333
    .end local v7    # "error":D
    .end local v11    # "correctedScaled":[D
    .end local v25    # "hNew":D
    .end local v27    # "stepEnd":D
    .restart local v1    # "hNew":D
    :goto_c
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->isLastStep:Z

    if-eqz v4, :cond_d

    .line 336
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->stepStart:D

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 337
    invoke-virtual {v6, v3}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 339
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/AdamsMoultonIntegrator;->resetInternalState()V

    .line 341
    return-void

    .line 333
    :cond_d
    move-object/from16 v12, v22

    move-object/from16 v13, v23

    move-object/from16 v11, v24

    goto/16 :goto_1
.end method
