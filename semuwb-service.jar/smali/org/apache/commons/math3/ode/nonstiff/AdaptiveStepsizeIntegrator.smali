.class public abstract Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.super Lorg/apache/commons/math3/ode/AbstractIntegrator;
.source "AdaptiveStepsizeIntegrator.java"


# instance fields
.field private initialStep:D

.field protected mainSetDimension:I

.field private maxStep:D

.field private minStep:D

.field protected scalAbsoluteTolerance:D

.field protected scalRelativeTolerance:D

.field protected vecAbsoluteTolerance:[D

.field protected vecRelativeTolerance:[D


# direct methods
.method public constructor <init>(Ljava/lang/String;DDDD)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "scalAbsoluteTolerance"    # D
    .param p8, "scalRelativeTolerance"    # D

    .line 109
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    .line 110
    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide v5, p6

    move-wide/from16 v7, p8

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->setStepSizeControl(DDDD)V

    .line 111
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    .line 113
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DD[D[D)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "minStep"    # D
    .param p4, "maxStep"    # D
    .param p6, "vecAbsoluteTolerance"    # [D
    .param p7, "vecRelativeTolerance"    # [D

    .line 132
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/AbstractIntegrator;-><init>(Ljava/lang/String;)V

    .line 133
    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-object v5, p6

    move-object v6, p7

    .end local p2    # "minStep":D
    .end local p4    # "maxStep":D
    .end local p6    # "vecAbsoluteTolerance":[D
    .end local p7    # "vecRelativeTolerance":[D
    .local v1, "minStep":D
    .local v3, "maxStep":D
    .local v5, "vecAbsoluteTolerance":[D
    .local v6, "vecRelativeTolerance":[D
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->setStepSizeControl(DD[D[D)V

    .line 134
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->resetInternalState()V

    .line 136
    return-void
.end method


# virtual methods
.method protected filterStep(DZZ)D
    .locals 7
    .param p1, "h"    # D
    .param p3, "forward"    # Z
    .param p4, "acceptSmall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 323
    move-wide v0, p1

    .line 324
    .local v0, "filteredH":D
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 325
    if-eqz p4, :cond_1

    .line 326
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    neg-double v2, v2

    :goto_0
    move-wide v0, v2

    goto :goto_1

    .line 328
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MINIMAL_STEPSIZE_REACHED_DURING_INTEGRATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2

    .line 333
    :cond_2
    :goto_1
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    cmpl-double v2, v0, v2

    if-lez v2, :cond_3

    .line 334
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    goto :goto_2

    .line 335
    :cond_3
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    neg-double v2, v2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_4

    .line 336
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    neg-double v0, v2

    .line 339
    :cond_4
    :goto_2
    return-wide v0
.end method

.method public getCurrentStepStart()D
    .locals 2

    .line 352
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->stepStart:D

    return-wide v0
.end method

.method public getMaxStep()D
    .locals 2

    .line 372
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    return-wide v0
.end method

.method public getMinStep()D
    .locals 2

    .line 365
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    return-wide v0
.end method

.method public initializeStep(ZI[DD[D[D[D[D)D
    .locals 22
    .param p1, "forward"    # Z
    .param p2, "order"    # I
    .param p3, "scale"    # [D
    .param p4, "t0"    # D
    .param p6, "y0"    # [D
    .param p7, "yDot0"    # [D
    .param p8, "y1"    # [D
    .param p9, "yDot1"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 252
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    iget-wide v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_1

    .line 254
    iget-wide v5, v0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    neg-double v5, v5

    :goto_0
    return-wide v5

    .line 260
    :cond_1
    const-wide/16 v5, 0x0

    .line 261
    .local v5, "yOnScale2":D
    const-wide/16 v7, 0x0

    .line 262
    .local v7, "yDotOnScale2":D
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    array-length v10, v1

    if-ge v9, v10, :cond_2

    .line 263
    aget-wide v10, v2, v9

    aget-wide v12, v1, v9

    div-double/2addr v10, v12

    .line 264
    .local v10, "ratio":D
    mul-double v12, v10, v10

    add-double/2addr v5, v12

    .line 265
    aget-wide v12, p7, v9

    aget-wide v14, v1, v9

    div-double/2addr v12, v14

    .line 266
    .end local v10    # "ratio":D
    .local v12, "ratio":D
    mul-double v10, v12, v12

    add-double/2addr v7, v10

    .line 262
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 269
    .end local v9    # "j":I
    .end local v12    # "ratio":D
    :cond_2
    const-wide v9, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    cmpg-double v11, v5, v9

    const-wide v12, 0x3f847ae147ae147bL    # 0.01

    if-ltz v11, :cond_4

    cmpg-double v9, v7, v9

    if-gez v9, :cond_3

    goto :goto_2

    :cond_3
    div-double v9, v5, v7

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    mul-double/2addr v9, v12

    goto :goto_3

    :cond_4
    :goto_2
    const-wide v9, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 271
    .local v9, "h":D
    :goto_3
    if-nez p1, :cond_5

    .line 272
    neg-double v9, v9

    .line 276
    :cond_5
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_4
    move-wide/from16 v16, v12

    array-length v12, v2

    if-ge v11, v12, :cond_6

    .line 277
    aget-wide v12, v2, v11

    aget-wide v18, p7, v11

    mul-double v18, v18, v9

    add-double v12, v12, v18

    aput-wide v12, v3, v11

    .line 276
    add-int/lit8 v11, v11, 0x1

    move-wide/from16 v12, v16

    goto :goto_4

    .line 279
    .end local v11    # "j":I
    :cond_6
    add-double v11, p4, v9

    invoke-virtual {v0, v11, v12, v3, v4}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->computeDerivatives(D[D[D)V

    .line 282
    const-wide/16 v11, 0x0

    .line 283
    .local v11, "yDDotOnScale":D
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_5
    array-length v14, v1

    if-ge v13, v14, :cond_7

    .line 284
    aget-wide v14, v4, v13

    aget-wide v20, p7, v13

    sub-double v14, v14, v20

    aget-wide v20, v1, v13

    div-double v14, v14, v20

    .line 285
    .local v14, "ratio":D
    mul-double v20, v14, v14

    add-double v11, v11, v20

    .line 283
    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    .line 287
    .end local v13    # "j":I
    .end local v14    # "ratio":D
    :cond_7
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    div-double/2addr v13, v9

    .line 291
    .end local v11    # "yDDotOnScale":D
    .local v13, "yDDotOnScale":D
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    .line 292
    .local v11, "maxInv2":D
    const-wide v20, 0x3cd203af9ee75616L    # 1.0E-15

    cmpg-double v15, v11, v20

    if-gez v15, :cond_8

    const-wide v15, 0x3f50624dd2f1a9fcL    # 0.001

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    mul-double v0, v20, v15

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    move/from16 v15, p2

    goto :goto_6

    :cond_8
    div-double v0, v16, v11

    move/from16 v15, p2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    int-to-double v2, v15

    div-double v2, v16, v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    .line 295
    .local v0, "h1":D
    :goto_6
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    mul-double v2, v2, v16

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v2

    .line 296
    .end local v9    # "h":D
    .local v2, "h":D
    const-wide v9, 0x3d719799812dea11L    # 1.0E-12

    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    mul-double v9, v9, v16

    invoke-static {v2, v3, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    .line 297
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMinStep()D

    move-result-wide v9

    cmpg-double v9, v2, v9

    if-gez v9, :cond_9

    .line 298
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMinStep()D

    move-result-wide v2

    .line 300
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMaxStep()D

    move-result-wide v9

    cmpl-double v9, v2, v9

    if-lez v9, :cond_a

    .line 301
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->getMaxStep()D

    move-result-wide v2

    .line 303
    :cond_a
    if-nez p1, :cond_b

    .line 304
    neg-double v2, v2

    .line 307
    :cond_b
    return-wide v2
.end method

.method public abstract integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation
.end method

.method protected resetInternalState()V
    .locals 4

    .line 357
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->stepStart:D

    .line 358
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->stepSize:D

    .line 359
    return-void
.end method

.method protected sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 3
    .param p1, "equations"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;
    .param p2, "t"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 220
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/ode/AbstractIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 222
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->getDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 228
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    array-length v0, v0

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 229
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget v1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->mainSetDimension:I

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 232
    :cond_3
    :goto_1
    return-void
.end method

.method public setInitialStepSize(D)V
    .locals 2
    .param p1, "initialStepSize"    # D

    .line 208
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 211
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    goto :goto_1

    .line 209
    :cond_1
    :goto_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    .line 213
    :goto_1
    return-void
.end method

.method public setStepSizeControl(DDDD)V
    .locals 2
    .param p1, "minimalStep"    # D
    .param p3, "maximalStep"    # D
    .param p5, "absoluteTolerance"    # D
    .param p7, "relativeTolerance"    # D

    .line 156
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    .line 157
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    .line 158
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    .line 160
    iput-wide p5, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    .line 161
    iput-wide p7, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    .line 163
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    .line 165
    return-void
.end method

.method public setStepSizeControl(DD[D[D)V
    .locals 2
    .param p1, "minimalStep"    # D
    .param p3, "maximalStep"    # D
    .param p5, "absoluteTolerance"    # [D
    .param p6, "relativeTolerance"    # [D

    .line 185
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->minStep:D

    .line 186
    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->maxStep:D

    .line 187
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->initialStep:D

    .line 189
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalAbsoluteTolerance:D

    .line 190
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->scalRelativeTolerance:D

    .line 191
    invoke-virtual {p5}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecAbsoluteTolerance:[D

    .line 192
    invoke-virtual {p6}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->vecRelativeTolerance:[D

    .line 194
    return-void
.end method
