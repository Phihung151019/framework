.class public Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "GraggBulirschStoerIntegrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Gragg-Bulirsch-Stoer"


# instance fields
.field private coeff:[[D

.field private costPerStep:[I

.field private costPerTimeUnit:[D

.field private maxChecks:I

.field private maxIter:I

.field private maxOrder:I

.field private mudif:I

.field private optimalStep:[D

.field private orderControl1:D

.field private orderControl2:D

.field private performTest:Z

.field private sequence:[I

.field private stabilityReduction:D

.field private stepControl1:D

.field private stepControl2:D

.field private stepControl3:D

.field private stepControl4:D

.field private useInterpolationError:Z


# direct methods
.method public constructor <init>(DDDD)V
    .locals 11
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "scalAbsoluteTolerance"    # D
    .param p7, "scalRelativeTolerance"    # D

    .line 171
    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    .line 173
    const/4 v5, -0x1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    .line 174
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v2 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setControlFactors(DDDD)V

    .line 175
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v3, -0x1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    .line 176
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    .line 177
    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 11
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "vecAbsoluteTolerance"    # [D
    .param p6, "vecRelativeTolerance"    # [D

    .line 193
    const-string v1, "Gragg-Bulirsch-Stoer"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    .line 195
    const/4 v5, -0x1

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v3, 0x1

    const/4 v4, -0x1

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setStabilityCheck(ZIID)V

    .line 196
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    const-wide/high16 v9, -0x4010000000000000L    # -1.0

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v2 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setControlFactors(DDDD)V

    .line 197
    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const/4 v3, -0x1

    invoke-virtual/range {v2 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setOrderControl(IDD)V

    .line 198
    const/4 v0, 0x1

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setInterpolationControl(ZI)V

    .line 199
    return-void
.end method

.method private extrapolate(II[[D[D)V
    .locals 11
    .param p1, "offset"    # I
    .param p2, "k"    # I
    .param p3, "diag"    # [[D
    .param p4, "last"    # [D

    .line 531
    const/4 v0, 0x1

    .local v0, "j":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 532
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p4

    if-ge v1, v2, :cond_0

    .line 534
    sub-int v2, p2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, p3, v2

    sub-int v3, p2, v0

    aget-object v3, p3, v3

    aget-wide v3, v3, v1

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    add-int v6, p2, p1

    aget-object v5, v5, v6

    add-int/lit8 v6, v0, -0x1

    aget-wide v5, v5, v6

    sub-int v7, p2, v0

    aget-object v7, p3, v7

    aget-wide v7, v7, v1

    sub-int v9, p2, v0

    add-int/lit8 v9, v9, -0x1

    aget-object v9, p3, v9

    aget-wide v9, v9, v1

    sub-double/2addr v7, v9

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    aput-wide v3, v2, v1

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 531
    .end local v1    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 540
    .end local v0    # "j":I
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    array-length v1, p4

    if-ge v0, v1, :cond_2

    .line 542
    const/4 v1, 0x0

    aget-object v2, p3, v1

    aget-wide v2, v2, v0

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    add-int v5, p2, p1

    aget-object v4, v4, v5

    add-int/lit8 v5, p2, -0x1

    aget-wide v4, v4, v5

    aget-object v1, p3, v1

    aget-wide v6, v1, v0

    aget-wide v8, p4, v0

    sub-double/2addr v6, v8

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    aput-wide v2, p4, v0

    .line 540
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 544
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method private initializeArrays()V
    .locals 10

    .line 364
    iget v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxOrder:I

    div-int/lit8 v0, v0, 0x2

    .line 366
    .local v0, "size":I
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v1, v1

    if-eq v1, v0, :cond_1

    .line 368
    :cond_0
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    .line 369
    new-array v1, v0, [I

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    .line 370
    new-array v1, v0, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    .line 371
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    .line 372
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    .line 376
    :cond_1
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 377
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x2

    aput v3, v2, v1

    .line 376
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "k":I
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v3

    .line 383
    const/4 v1, 0x1

    .restart local v1    # "k":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 384
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    iget-object v4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    aput v3, v2, v1

    .line 383
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 388
    .end local v1    # "k":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "k":I
    :goto_2
    if-ge v1, v0, :cond_6

    .line 389
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    if-lez v1, :cond_4

    new-array v3, v1, [D

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    aput-object v3, v2, v1

    .line 390
    const/4 v2, 0x0

    .local v2, "l":I
    :goto_4
    if-ge v2, v1, :cond_5

    .line 391
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v3, v3, v1

    int-to-double v3, v3

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    sub-int v6, v1, v2

    add-int/lit8 v6, v6, -0x1

    aget v5, v5, v6

    int-to-double v5, v5

    div-double/2addr v3, v5

    .line 392
    .local v3, "ratio":D
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->coeff:[[D

    aget-object v5, v5, v1

    mul-double v6, v3, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    div-double/2addr v8, v6

    aput-wide v8, v5, v2

    .line 390
    .end local v3    # "ratio":D
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 388
    .end local v2    # "l":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 396
    .end local v1    # "k":I
    :cond_6
    return-void
.end method

.method private rescale([D[D[D)V
    .locals 7
    .param p1, "y1"    # [D
    .param p2, "y2"    # [D
    .param p3, "scale"    # [D

    .line 427
    iget-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecAbsoluteTolerance:[D

    if-nez v0, :cond_1

    .line 428
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-ge v0, v1, :cond_0

    .line 429
    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    aget-wide v3, p2, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 430
    .local v1, "yi":D
    iget-wide v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->scalAbsoluteTolerance:D

    iget-wide v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->scalRelativeTolerance:D

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    aput-wide v3, p3, v0

    .line 428
    .end local v1    # "yi":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_2

    .line 433
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_2

    .line 434
    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    aget-wide v3, p2, v0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 435
    .restart local v1    # "yi":D
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v3, v3, v0

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecRelativeTolerance:[D

    aget-wide v5, v5, v0

    mul-double/2addr v5, v1

    add-double/2addr v3, v5

    aput-wide v3, p3, v0

    .line 433
    .end local v1    # "yi":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 438
    .end local v0    # "i":I
    :cond_2
    :goto_2
    return-void
.end method

.method private tryStep(D[DDI[D[[D[D[D[D)Z
    .locals 24
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "step"    # D
    .param p6, "k"    # I
    .param p7, "scale"    # [D
    .param p8, "f"    # [[D
    .param p9, "yMiddle"    # [D
    .param p10, "yEnd"    # [D
    .param p11, "yTmp"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 463
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p10

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v5, v5, v2

    .line 464
    .local v5, "n":I
    int-to-double v6, v5

    div-double v6, p4, v6

    .line 465
    .local v6, "subStep":D
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v6

    .line 468
    .local v8, "subStep2":D
    add-double v10, p1, v6

    .line 469
    .local v10, "t":D
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    array-length v13, v1

    const/4 v14, 0x0

    if-ge v12, v13, :cond_0

    .line 470
    aget-wide v15, v1, v12

    aput-wide v15, p11, v12

    .line 471
    aget-wide v15, v1, v12

    aget-object v13, p8, v14

    aget-wide v13, v13, v12

    mul-double/2addr v13, v6

    add-double/2addr v15, v13

    aput-wide v15, v4, v12

    .line 469
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 473
    .end local v12    # "i":I
    :cond_0
    const/4 v12, 0x1

    aget-object v13, p8, v12

    invoke-virtual {v0, v10, v11, v4, v13}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    .line 476
    const/4 v13, 0x1

    .local v13, "j":I
    :goto_1
    if-ge v13, v5, :cond_6

    .line 478
    mul-int/lit8 v15, v13, 0x2

    if-ne v15, v5, :cond_1

    .line 480
    array-length v15, v1

    move/from16 v16, v12

    move-object/from16 v12, p9

    invoke-static {v4, v14, v12, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 478
    :cond_1
    move/from16 v16, v12

    move-object/from16 v12, p9

    .line 483
    :goto_2
    add-double/2addr v10, v6

    .line 484
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3
    move/from16 v17, v14

    array-length v14, v1

    if-ge v15, v14, :cond_2

    .line 485
    aget-wide v18, v4, v15

    .line 486
    .local v18, "middle":D
    aget-wide v20, p11, v15

    aget-object v14, p8, v13

    aget-wide v22, v14, v15

    mul-double v22, v22, v8

    add-double v20, v20, v22

    aput-wide v20, v4, v15

    .line 487
    aput-wide v18, p11, v15

    .line 484
    .end local v18    # "middle":D
    add-int/lit8 v15, v15, 0x1

    move/from16 v14, v17

    goto :goto_3

    .line 490
    .end local v15    # "i":I
    :cond_2
    add-int/lit8 v14, v13, 0x1

    aget-object v14, p8, v14

    invoke-virtual {v0, v10, v11, v4, v14}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    .line 493
    iget-boolean v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->performTest:Z

    if-eqz v14, :cond_5

    iget v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxChecks:I

    if-gt v13, v14, :cond_5

    iget v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxIter:I

    if-ge v2, v14, :cond_5

    .line 494
    const-wide/16 v14, 0x0

    .line 495
    .local v14, "initialNorm":D
    const/16 v18, 0x0

    move/from16 v0, v18

    .local v0, "l":I
    :goto_4
    array-length v2, v3

    if-ge v0, v2, :cond_3

    .line 496
    aget-object v2, p8, v17

    aget-wide v18, v2, v0

    aget-wide v20, v3, v0

    div-double v18, v18, v20

    .line 497
    .local v18, "ratio":D
    mul-double v20, v18, v18

    add-double v14, v14, v20

    .line 495
    .end local v18    # "ratio":D
    add-int/lit8 v0, v0, 0x1

    move/from16 v2, p6

    goto :goto_4

    .line 499
    .end local v0    # "l":I
    :cond_3
    const-wide/16 v18, 0x0

    .line 500
    .local v18, "deltaNorm":D
    const/4 v0, 0x0

    .restart local v0    # "l":I
    :goto_5
    array-length v2, v3

    if-ge v0, v2, :cond_4

    .line 501
    add-int/lit8 v2, v13, 0x1

    aget-object v2, p8, v2

    aget-wide v20, v2, v0

    aget-object v2, p8, v17

    aget-wide v22, v2, v0

    sub-double v20, v20, v22

    aget-wide v22, v3, v0

    div-double v20, v20, v22

    .line 502
    .local v20, "ratio":D
    mul-double v22, v20, v20

    add-double v18, v18, v22

    .line 500
    .end local v20    # "ratio":D
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 504
    .end local v0    # "l":I
    :cond_4
    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    invoke-static {v2, v3, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    mul-double v2, v2, v20

    cmpl-double v0, v18, v2

    if-lez v0, :cond_5

    .line 505
    return v17

    .line 476
    .end local v14    # "initialNorm":D
    .end local v18    # "deltaNorm":D
    :cond_5
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p6

    move-object/from16 v3, p7

    move/from16 v12, v16

    move/from16 v14, v17

    goto/16 :goto_1

    :cond_6
    move/from16 v16, v12

    move-object/from16 v12, p9

    .line 512
    .end local v13    # "j":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    array-length v2, v1

    if-ge v0, v2, :cond_7

    .line 513
    aget-wide v2, p11, v0

    aget-wide v13, v4, v0

    add-double/2addr v2, v13

    aget-object v13, p8, v5

    aget-wide v13, v13, v0

    mul-double/2addr v13, v6

    add-double/2addr v2, v13

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v13

    aput-wide v2, v4, v0

    .line 512
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 516
    .end local v0    # "i":I
    :cond_7
    return v16
.end method


# virtual methods
.method public addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 0
    .param p1, "function"    # Lorg/apache/commons/math3/ode/events/EventHandler;
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I
    .param p7, "solver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .line 353
    invoke-super/range {p0 .. p7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->addEventHandler(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V

    .line 357
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    .line 359
    return-void
.end method

.method public addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V
    .locals 0
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/sampling/StepHandler;

    .line 339
    invoke-super {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;->addStepHandler(Lorg/apache/commons/math3/ode/sampling/StepHandler;)V

    .line 342
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    .line 344
    return-void
.end method

.method public integrate(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V
    .locals 59
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

    .line 552
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 553
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 554
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    cmpl-double v1, p2, v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-lez v1, :cond_0

    move v1, v14

    goto :goto_0

    :cond_0
    move v1, v13

    .line 557
    .local v1, "forward":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v11

    .line 558
    .local v11, "y0":[D
    invoke-virtual {v11}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [D

    .line 559
    .local v3, "y":[D
    array-length v2, v3

    new-array v4, v2, [D

    .line 560
    .local v4, "yDot0":[D
    array-length v2, v3

    new-array v2, v2, [D

    .line 561
    .local v2, "y1":[D
    array-length v5, v3

    new-array v15, v5, [D

    .line 562
    .local v15, "yTmp":[D
    array-length v5, v3

    new-array v5, v5, [D

    .line 564
    .local v5, "yTmpDot":[D
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v6, v6

    sub-int/2addr v6, v14

    new-array v6, v6, [[D

    .line 565
    .local v6, "diagonal":[[D
    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v7, v7

    sub-int/2addr v7, v14

    new-array v7, v7, [[D

    .line 566
    .local v7, "y1Diag":[[D
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v9, v9

    sub-int/2addr v9, v14

    if-ge v8, v9, :cond_1

    .line 567
    array-length v9, v3

    new-array v9, v9, [D

    aput-object v9, v6, v8

    .line 568
    array-length v9, v3

    new-array v9, v9, [D

    aput-object v9, v7, v8

    .line 566
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 571
    .end local v8    # "k":I
    :cond_1
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v8, v8

    new-array v8, v8, [[[D

    .line 572
    .local v8, "fk":[[[D
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_2
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v10, v10

    if-ge v9, v10, :cond_3

    .line 574
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v10, v10, v9

    add-int/2addr v10, v14

    new-array v10, v10, [[D

    aput-object v10, v8, v9

    .line 577
    aget-object v10, v8, v9

    aput-object v4, v10, v13

    .line 579
    const/4 v10, 0x0

    .local v10, "l":I
    :goto_3
    move/from16 v16, v14

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v14, v14, v9

    if-ge v10, v14, :cond_2

    .line 580
    aget-object v14, v8, v9

    add-int/lit8 v17, v10, 0x1

    array-length v13, v11

    new-array v13, v13, [D

    aput-object v13, v14, v17

    .line 579
    add-int/lit8 v10, v10, 0x1

    move/from16 v14, v16

    const/4 v13, 0x0

    goto :goto_3

    .line 572
    .end local v10    # "l":I
    :cond_2
    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v16

    const/4 v13, 0x0

    goto :goto_2

    :cond_3
    move/from16 v16, v14

    .line 585
    .end local v9    # "k":I
    if-eq v3, v11, :cond_4

    .line 586
    array-length v9, v11

    const/4 v10, 0x0

    invoke-static {v11, v10, v3, v10, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 589
    :cond_4
    array-length v9, v11

    new-array v9, v9, [D

    .line 590
    .local v9, "yDot1":[D
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v10, v10

    const/4 v13, 0x2

    mul-int/2addr v10, v13

    add-int/lit8 v10, v10, 0x1

    array-length v14, v11

    move/from16 v17, v1

    .end local v1    # "forward":Z
    .local v17, "forward":Z
    new-array v1, v13, [I

    aput v14, v1, v16

    const/16 v18, 0x0

    aput v10, v1, v18

    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    .line 593
    .local v1, "yMidDots":[[D
    iget v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mainSetDimension:I

    new-array v14, v10, [D

    .line 594
    .local v14, "scale":[D
    invoke-direct {v0, v3, v3, v14}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->rescale([D[D[D)V

    .line 597
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecRelativeTolerance:[D

    if-nez v10, :cond_5

    move/from16 v19, v13

    move-object/from16 v20, v14

    .end local v14    # "scale":[D
    .local v20, "scale":[D
    iget-wide v13, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->scalRelativeTolerance:D

    goto :goto_4

    .end local v20    # "scale":[D
    .restart local v14    # "scale":[D
    :cond_5
    move/from16 v19, v13

    move-object/from16 v20, v14

    .end local v14    # "scale":[D
    .restart local v20    # "scale":[D
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->vecRelativeTolerance:[D

    const/16 v18, 0x0

    aget-wide v13, v10, v18

    .line 599
    .local v13, "tol":D
    :goto_4
    move-object/from16 v21, v1

    move-object v10, v2

    .end local v1    # "yMidDots":[[D
    .end local v2    # "y1":[D
    .local v10, "y1":[D
    .local v21, "yMidDots":[[D
    const-wide v1, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    invoke-static {v1, v2, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log10(D)D

    move-result-wide v22

    .line 600
    .local v22, "log10R":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    const-wide v24, 0x3fe3333333333333L    # 0.6

    mul-double v24, v24, v22

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    sub-double v24, v26, v24

    move-object/from16 v28, v3

    .end local v3    # "y":[D
    .local v28, "y":[D
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    move/from16 v2, v16

    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v24

    .line 605
    .local v24, "targetIter":I
    new-instance v1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    move-object v3, v9

    .end local v9    # "yDot1":[D
    .local v3, "yDot1":[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v9

    move-object v2, v10

    .end local v10    # "y1":[D
    .restart local v2    # "y1":[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v10

    move-object/from16 v58, v2

    move-object v2, v1

    move-object v1, v6

    move-object v6, v3

    move-object/from16 v3, v28

    move-wide/from16 v28, v13

    move-object v14, v8

    move/from16 v8, v17

    move-object/from16 v17, v5

    move-object/from16 v5, v58

    move-object v13, v7

    move-object/from16 v7, v21

    .end local v2    # "y1":[D
    .end local v21    # "yMidDots":[[D
    .local v1, "diagonal":[[D
    .local v3, "y":[D
    .local v5, "y1":[D
    .local v6, "yDot1":[D
    .local v7, "yMidDots":[[D
    .local v8, "forward":Z
    .local v13, "y1Diag":[[D
    .local v14, "fk":[[[D
    .local v17, "yTmpDot":[D
    .local v28, "tol":D
    invoke-direct/range {v2 .. v10}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;-><init>([D[D[D[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    move-object v10, v5

    move-object v9, v6

    move-object v6, v3

    move-object v7, v4

    .line 611
    .end local v3    # "y":[D
    .end local v4    # "yDot0":[D
    .end local v5    # "y1":[D
    .local v2, "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .local v6, "y":[D
    .local v7, "yDot0":[D
    .restart local v9    # "yDot1":[D
    .restart local v10    # "y1":[D
    .restart local v21    # "yMidDots":[[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 613
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v3

    iput-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    .line 614
    const-wide/16 v30, 0x0

    .line 615
    .local v30, "hNew":D
    const-wide v32, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 616
    .local v32, "maxError":D
    const/16 v25, 0x0

    .line 617
    .local v25, "previousRejected":Z
    const/16 v34, 0x1

    .line 618
    .local v34, "firstTime":Z
    const/16 v35, 0x1

    .line 619
    .local v35, "newStep":Z
    const/16 v36, 0x0

    .line 620
    .local v36, "firstStepAlreadyComputed":Z
    move-object v3, v1

    move-object v4, v2

    .end local v1    # "diagonal":[[D
    .end local v2    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .local v3, "diagonal":[[D
    .local v4, "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v5, v11

    move-object v11, v3

    move-object v3, v5

    move-object/from16 v37, v4

    move-wide/from16 v4, p2

    .end local v4    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .local v3, "y0":[D
    .local v11, "diagonal":[[D
    .local v37, "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initIntegration(D[DD)V

    .line 621
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    aput-wide v4, v1, v2

    .line 622
    iput-boolean v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    .line 626
    :goto_5
    const/16 v38, 0x0

    .line 628
    .local v38, "reject":Z
    if-eqz v35, :cond_8

    .line 630
    invoke-virtual/range {v37 .. v37}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->shift()V

    .line 633
    if-nez v36, :cond_6

    .line 634
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    .line 637
    :cond_6
    if-eqz v34, :cond_7

    .line 638
    mul-int/lit8 v1, v24, 0x2

    const/16 v16, 0x1

    add-int/lit8 v2, v1, 0x1

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object v1, v14

    move-object v14, v9

    move-object/from16 v9, v17

    move-object/from16 v17, v1

    move v1, v8

    move-object v8, v15

    move-object v15, v3

    move-object/from16 v3, v20

    .end local v20    # "scale":[D
    .local v1, "forward":Z
    .local v3, "scale":[D
    .local v8, "yTmp":[D
    .local v9, "yTmpDot":[D
    .local v14, "yDot1":[D
    .local v15, "y0":[D
    .local v17, "fk":[[[D
    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeStep(ZI[DD[D[D[D[D)D

    move-result-wide v4

    move-object v2, v8

    move v8, v1

    move-object v1, v11

    move-object v11, v2

    move-object v2, v3

    move-object v3, v6

    move-object/from16 v20, v9

    move-wide/from16 v30, v4

    .end local v6    # "y":[D
    .end local v9    # "yTmpDot":[D
    .end local v30    # "hNew":D
    .local v1, "diagonal":[[D
    .local v2, "scale":[D
    .local v3, "y":[D
    .local v4, "hNew":D
    .local v8, "forward":Z
    .local v11, "yTmp":[D
    .local v20, "yTmpDot":[D
    goto :goto_6

    .line 637
    .end local v1    # "diagonal":[[D
    .end local v2    # "scale":[D
    .end local v4    # "hNew":D
    .local v3, "y0":[D
    .restart local v6    # "y":[D
    .local v9, "yDot1":[D
    .local v11, "diagonal":[[D
    .local v14, "fk":[[[D
    .local v15, "yTmp":[D
    .local v17, "yTmpDot":[D
    .local v20, "scale":[D
    .restart local v30    # "hNew":D
    :cond_7
    move-object v1, v11

    move-object v11, v15

    move-object/from16 v2, v20

    move-object v15, v3

    move-object v3, v6

    move-object/from16 v20, v17

    move-object/from16 v17, v14

    move-object v14, v9

    .line 642
    .end local v6    # "y":[D
    .end local v9    # "yDot1":[D
    .restart local v1    # "diagonal":[[D
    .restart local v2    # "scale":[D
    .local v3, "y":[D
    .local v11, "yTmp":[D
    .local v14, "yDot1":[D
    .local v15, "y0":[D
    .local v17, "fk":[[[D
    .local v20, "yTmpDot":[D
    :goto_6
    const/16 v35, 0x0

    move-wide/from16 v4, v30

    goto :goto_7

    .line 628
    .end local v1    # "diagonal":[[D
    .end local v2    # "scale":[D
    .local v3, "y0":[D
    .restart local v6    # "y":[D
    .restart local v9    # "yDot1":[D
    .local v11, "diagonal":[[D
    .local v14, "fk":[[[D
    .local v15, "yTmp":[D
    .local v17, "yTmpDot":[D
    .local v20, "scale":[D
    :cond_8
    move-object v1, v11

    move-object v11, v15

    move-object/from16 v2, v20

    move-object v15, v3

    move-object v3, v6

    move-object/from16 v20, v17

    move-object/from16 v17, v14

    move-object v14, v9

    .end local v6    # "y":[D
    .end local v9    # "yDot1":[D
    .restart local v1    # "diagonal":[[D
    .restart local v2    # "scale":[D
    .local v3, "y":[D
    .local v11, "yTmp":[D
    .local v14, "yDot1":[D
    .local v15, "y0":[D
    .local v17, "fk":[[[D
    .local v20, "yTmpDot":[D
    move-wide/from16 v4, v30

    .line 646
    .end local v30    # "hNew":D
    .restart local v4    # "hNew":D
    :goto_7
    iput-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    .line 649
    if-eqz v8, :cond_9

    move-object v6, v1

    move-object v9, v2

    .end local v1    # "diagonal":[[D
    .end local v2    # "scale":[D
    .local v6, "diagonal":[[D
    .local v9, "scale":[D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-wide/from16 v30, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double v1, v30, v1

    cmpl-double v1, v1, p2

    if-gtz v1, :cond_a

    goto :goto_8

    .end local v6    # "diagonal":[[D
    .end local v9    # "scale":[D
    .restart local v1    # "diagonal":[[D
    .restart local v2    # "scale":[D
    :cond_9
    move-object v6, v1

    move-object v9, v2

    .end local v1    # "diagonal":[[D
    .end local v2    # "scale":[D
    .restart local v6    # "diagonal":[[D
    .restart local v9    # "scale":[D
    :goto_8
    if-nez v8, :cond_b

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-wide/from16 v30, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double v1, v30, v1

    cmpg-double v1, v1, p2

    if-gez v1, :cond_b

    .line 651
    :cond_a
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    sub-double v1, p2, v1

    iput-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    .line 653
    :cond_b
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-wide/from16 v30, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double v30, v30, v1

    .line 654
    .local v30, "nextT":D
    if-eqz v8, :cond_c

    cmpl-double v1, v30, p2

    if-ltz v1, :cond_d

    goto :goto_9

    :cond_c
    cmpg-double v1, v30, p2

    if-gtz v1, :cond_d

    :goto_9
    const/4 v1, 0x1

    goto :goto_a

    :cond_d
    const/4 v1, 0x0

    :goto_a
    iput-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    .line 657
    const/4 v1, -0x1

    .line 658
    .local v1, "k":I
    const/4 v2, 0x1

    move/from16 v39, v24

    move/from16 v24, v2

    move/from16 v2, v39

    move/from16 v40, v38

    move-wide/from16 v38, v32

    move-wide/from16 v32, v4

    .end local v4    # "hNew":D
    .local v2, "targetIter":I
    .local v24, "loop":Z
    .local v32, "hNew":D
    .local v38, "maxError":D
    .local v40, "reject":Z
    :goto_b
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-eqz v24, :cond_21

    .line 660
    add-int/lit8 v1, v1, 0x1

    .line 663
    move/from16 v42, v2

    move-object/from16 v41, v6

    move v6, v1

    .end local v1    # "k":I
    .end local v2    # "targetIter":I
    .local v6, "k":I
    .local v41, "diagonal":[[D
    .local v42, "targetIter":I
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-wide/from16 v43, v4

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    move/from16 v45, v8

    .end local v8    # "forward":Z
    .local v45, "forward":Z
    aget-object v8, v17, v6

    if-nez v6, :cond_e

    const/16 v18, 0x0

    aget-object v46, v21, v18

    goto :goto_c

    :cond_e
    add-int/lit8 v46, v6, -0x1

    aget-object v46, v41, v46

    :goto_c
    if-nez v6, :cond_f

    move-object/from16 v47, v10

    goto :goto_d

    :cond_f
    add-int/lit8 v47, v6, -0x1

    aget-object v47, v13, v47

    :goto_d
    move-object/from16 v48, v7

    move-object v7, v9

    move-object/from16 v49, v41

    move/from16 v12, v42

    move-object/from16 v9, v46

    move-object/from16 v42, v14

    move-object/from16 v41, v15

    move/from16 v15, v45

    move-object v14, v10

    move-object/from16 v10, v47

    .end local v9    # "scale":[D
    .end local v10    # "y1":[D
    .end local v45    # "forward":Z
    .local v7, "scale":[D
    .local v12, "targetIter":I
    .local v14, "y1":[D
    .local v15, "forward":Z
    .local v41, "y0":[D
    .local v42, "yDot1":[D
    .local v48, "yDot0":[D
    .local v49, "diagonal":[[D
    invoke-direct/range {v0 .. v11}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->tryStep(D[DDI[D[[D[D[D[D)Z

    move-result v1

    move-object v9, v7

    move-object v7, v3

    .end local v3    # "y":[D
    .local v7, "y":[D
    .restart local v9    # "scale":[D
    if-nez v1, :cond_10

    .line 669
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    mul-double/2addr v1, v3

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v2, v15, v10}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    .line 670
    const/16 v40, 0x1

    .line 671
    const/16 v24, 0x0

    move v1, v6

    move-object v3, v7

    move v2, v12

    move-object v10, v14

    move v8, v15

    move-object/from16 v15, v41

    move-object/from16 v14, v42

    move-object/from16 v7, v48

    move-object/from16 v6, v49

    goto :goto_b

    .line 676
    :cond_10
    const/4 v10, 0x0

    if-lez v6, :cond_20

    .line 680
    invoke-direct {v0, v10, v6, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    .line 681
    invoke-direct {v0, v7, v14, v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->rescale([D[D[D)V

    .line 684
    const-wide/16 v1, 0x0

    .line 685
    .local v1, "error":D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_e
    iget v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mainSetDimension:I

    if-ge v3, v4, :cond_11

    .line 686
    aget-wide v4, v14, v3

    const/16 v18, 0x0

    aget-object v8, v13, v18

    aget-wide v43, v8, v3

    sub-double v4, v4, v43

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    aget-wide v43, v9, v3

    div-double v4, v4, v43

    .line 687
    .local v4, "e":D
    mul-double v43, v4, v4

    add-double v1, v1, v43

    .line 685
    .end local v4    # "e":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 689
    .end local v3    # "j":I
    :cond_11
    iget v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mainSetDimension:I

    int-to-double v3, v3

    div-double v3, v1, v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 691
    const-wide v3, 0x430c6bf526340000L    # 1.0E15

    cmpl-double v3, v1, v3

    if-gtz v3, :cond_1f

    const/4 v3, 0x1

    if-le v6, v3, :cond_12

    cmpl-double v3, v1, v38

    if-lez v3, :cond_12

    move-wide/from16 v45, v1

    move v8, v6

    goto/16 :goto_15

    .line 698
    :cond_12
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    mul-double/2addr v3, v1

    move v8, v6

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .end local v6    # "k":I
    .local v8, "k":I
    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v38

    .line 701
    mul-int/lit8 v3, v8, 0x2

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    int-to-double v3, v3

    div-double v3, v5, v3

    .line 702
    .local v3, "exp":D
    move-wide/from16 v43, v5

    iget-wide v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    move-wide/from16 v45, v1

    .end local v1    # "error":D
    .local v45, "error":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    div-double v1, v45, v1

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    div-double/2addr v5, v1

    .line 703
    .local v5, "fac":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    .line 704
    .local v1, "pow":D
    move-wide/from16 v50, v1

    .end local v1    # "pow":D
    .local v50, "pow":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    div-double v1, v50, v1

    move-wide/from16 v52, v3

    .end local v3    # "exp":D
    .local v52, "exp":D
    div-double v3, v43, v50

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 705
    .end local v5    # "fac":D
    .local v1, "fac":D
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    mul-double/2addr v4, v1

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v5, v15, v6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    aput-wide v4, v3, v8

    .line 706
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v4, v4, v8

    int-to-double v4, v4

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v54, v6, v8

    div-double v4, v4, v54

    aput-wide v4, v3, v8

    .line 709
    sub-int v3, v8, v12

    packed-switch v3, :pswitch_data_0

    .line 779
    move-wide/from16 v54, v1

    .end local v1    # "fac":D
    .local v54, "fac":D
    if-nez v34, :cond_1d

    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    if-eqz v1, :cond_1e

    goto/16 :goto_13

    .line 766
    .end local v54    # "fac":D
    .restart local v1    # "fac":D
    :pswitch_0
    cmpl-double v3, v45, v43

    if-lez v3, :cond_14

    .line 767
    const/16 v40, 0x1

    .line 768
    const/4 v3, 0x1

    if-le v12, v3, :cond_13

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v4, v12, -0x1

    aget-wide v3, v3, v4

    iget-wide v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v43, v10, v12

    mul-double v5, v5, v43

    cmpg-double v3, v3, v5

    if-gez v3, :cond_13

    .line 771
    add-int/lit8 v3, v12, -0x1

    move v12, v3

    .line 773
    :cond_13
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v32, v3, v12

    .line 775
    :cond_14
    const/4 v3, 0x0

    .line 776
    .end local v24    # "loop":Z
    .local v3, "loop":Z
    move/from16 v24, v3

    move v2, v12

    goto/16 :goto_14

    .line 742
    .end local v3    # "loop":Z
    .restart local v24    # "loop":Z
    :pswitch_1
    cmpg-double v3, v45, v43

    if-gtz v3, :cond_15

    .line 744
    const/4 v3, 0x0

    move/from16 v24, v3

    move v2, v12

    .end local v24    # "loop":Z
    .restart local v3    # "loop":Z
    goto/16 :goto_14

    .line 749
    .end local v3    # "loop":Z
    .restart local v24    # "loop":Z
    :cond_15
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int/lit8 v4, v8, 0x1

    aget v3, v3, v4

    int-to-double v3, v3

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    const/16 v18, 0x0

    aget v5, v5, v18

    int-to-double v5, v5

    div-double/2addr v3, v5

    .line 750
    .local v3, "ratio":D
    mul-double v5, v3, v3

    cmpl-double v5, v45, v5

    if-lez v5, :cond_18

    .line 753
    const/16 v40, 0x1

    .line 754
    const/16 v24, 0x0

    .line 755
    const/4 v6, 0x1

    if-le v12, v6, :cond_16

    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v6, v12, -0x1

    aget-wide v5, v5, v6

    move-wide/from16 v54, v1

    .end local v1    # "fac":D
    .restart local v54    # "fac":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v43, v10, v12

    mul-double v1, v1, v43

    cmpg-double v1, v5, v1

    if-gez v1, :cond_17

    .line 758
    add-int/lit8 v2, v12, -0x1

    .end local v12    # "targetIter":I
    .restart local v2    # "targetIter":I
    goto :goto_f

    .line 755
    .end local v2    # "targetIter":I
    .end local v54    # "fac":D
    .restart local v1    # "fac":D
    .restart local v12    # "targetIter":I
    :cond_16
    move-wide/from16 v54, v1

    .line 760
    .end local v1    # "fac":D
    .restart local v54    # "fac":D
    :cond_17
    move v2, v12

    .end local v12    # "targetIter":I
    .restart local v2    # "targetIter":I
    :goto_f
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v32, v1, v2

    goto :goto_10

    .line 750
    .end local v2    # "targetIter":I
    .end local v54    # "fac":D
    .restart local v1    # "fac":D
    .restart local v12    # "targetIter":I
    :cond_18
    move-wide/from16 v54, v1

    .end local v1    # "fac":D
    .restart local v54    # "fac":D
    move v2, v12

    .line 763
    .end local v3    # "ratio":D
    .end local v12    # "targetIter":I
    .restart local v2    # "targetIter":I
    :goto_10
    goto/16 :goto_14

    .line 712
    .end local v2    # "targetIter":I
    .end local v54    # "fac":D
    .restart local v1    # "fac":D
    .restart local v12    # "targetIter":I
    :pswitch_2
    move-wide/from16 v54, v1

    .end local v1    # "fac":D
    .restart local v54    # "fac":D
    const/4 v3, 0x1

    if-le v12, v3, :cond_1e

    if-nez v25, :cond_1e

    .line 715
    cmpg-double v1, v45, v43

    if-gtz v1, :cond_19

    .line 717
    const/4 v1, 0x0

    move/from16 v24, v1

    move v2, v12

    .end local v24    # "loop":Z
    .local v1, "loop":Z
    goto :goto_14

    .line 722
    .end local v1    # "loop":Z
    .restart local v24    # "loop":Z
    :cond_19
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v1, v1, v12

    int-to-double v1, v1

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int/lit8 v4, v12, 0x1

    aget v3, v3, v4

    int-to-double v3, v3

    mul-double/2addr v1, v3

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    const/16 v18, 0x0

    aget v3, v3, v18

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v4, v4, v18

    mul-int/2addr v3, v4

    int-to-double v3, v3

    div-double/2addr v1, v3

    .line 724
    .local v1, "ratio":D
    mul-double v3, v1, v1

    cmpl-double v3, v45, v3

    if-lez v3, :cond_1c

    .line 727
    const/16 v40, 0x1

    .line 728
    const/16 v24, 0x0

    .line 729
    move v3, v8

    .line 730
    .end local v12    # "targetIter":I
    .local v3, "targetIter":I
    const/4 v6, 0x1

    if-le v3, v6, :cond_1a

    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v5, v3, -0x1

    aget-wide v4, v4, v5

    move-wide/from16 v43, v1

    .end local v1    # "ratio":D
    .local v43, "ratio":D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v56, v6, v3

    mul-double v1, v1, v56

    cmpg-double v1, v4, v1

    if-gez v1, :cond_1b

    .line 733
    add-int/lit8 v3, v3, -0x1

    move v2, v3

    goto :goto_11

    .line 730
    .end local v43    # "ratio":D
    .restart local v1    # "ratio":D
    :cond_1a
    move-wide/from16 v43, v1

    .line 735
    .end local v1    # "ratio":D
    .restart local v43    # "ratio":D
    :cond_1b
    move v2, v3

    .end local v3    # "targetIter":I
    .restart local v2    # "targetIter":I
    :goto_11
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v32, v1, v2

    goto :goto_12

    .line 724
    .end local v2    # "targetIter":I
    .end local v43    # "ratio":D
    .restart local v1    # "ratio":D
    .restart local v12    # "targetIter":I
    :cond_1c
    move-wide/from16 v43, v1

    .end local v1    # "ratio":D
    .restart local v43    # "ratio":D
    move v2, v12

    .line 737
    .end local v12    # "targetIter":I
    .end local v43    # "ratio":D
    .restart local v2    # "targetIter":I
    :goto_12
    goto :goto_14

    .line 779
    .end local v2    # "targetIter":I
    .restart local v12    # "targetIter":I
    :cond_1d
    :goto_13
    cmpg-double v1, v45, v43

    if-gtz v1, :cond_1e

    .line 780
    const/4 v1, 0x0

    move/from16 v24, v1

    move v2, v12

    .end local v24    # "loop":Z
    .local v1, "loop":Z
    goto :goto_14

    .line 786
    .end local v1    # "loop":Z
    .end local v50    # "pow":D
    .end local v52    # "exp":D
    .end local v54    # "fac":D
    .restart local v24    # "loop":Z
    :cond_1e
    move v2, v12

    .end local v12    # "targetIter":I
    .restart local v2    # "targetIter":I
    :goto_14
    move-object v3, v7

    move v1, v8

    move-object v10, v14

    move v8, v15

    move-object/from16 v15, v41

    move-object/from16 v14, v42

    move-object/from16 v7, v48

    move-object/from16 v6, v49

    goto/16 :goto_b

    .line 691
    .end local v2    # "targetIter":I
    .end local v8    # "k":I
    .end local v45    # "error":D
    .local v1, "error":D
    .restart local v6    # "k":I
    .restart local v12    # "targetIter":I
    :cond_1f
    move-wide/from16 v45, v1

    move v8, v6

    .line 693
    .end local v1    # "error":D
    .end local v6    # "k":I
    .restart local v8    # "k":I
    .restart local v45    # "error":D
    :goto_15
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    mul-double/2addr v1, v3

    const/4 v10, 0x0

    invoke-virtual {v0, v1, v2, v15, v10}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    .line 694
    const/16 v40, 0x1

    .line 695
    const/16 v24, 0x0

    move-object v3, v7

    move v1, v8

    move v2, v12

    move-object v10, v14

    move v8, v15

    move-object/from16 v15, v41

    move-object/from16 v14, v42

    move-object/from16 v7, v48

    move-object/from16 v6, v49

    goto/16 :goto_b

    .line 676
    .end local v8    # "k":I
    .end local v45    # "error":D
    .restart local v6    # "k":I
    :cond_20
    move v8, v6

    .end local v6    # "k":I
    .restart local v8    # "k":I
    move-object v3, v7

    move v1, v8

    move v2, v12

    move-object v10, v14

    move v8, v15

    move-object/from16 v15, v41

    move-object/from16 v14, v42

    move-object/from16 v7, v48

    move-object/from16 v6, v49

    goto/16 :goto_b

    .line 658
    .end local v12    # "targetIter":I
    .end local v41    # "y0":[D
    .end local v42    # "yDot1":[D
    .end local v48    # "yDot0":[D
    .end local v49    # "diagonal":[[D
    .local v1, "k":I
    .restart local v2    # "targetIter":I
    .local v3, "y":[D
    .local v6, "diagonal":[[D
    .local v7, "yDot0":[D
    .local v8, "forward":Z
    .restart local v10    # "y1":[D
    .local v14, "yDot1":[D
    .local v15, "y0":[D
    :cond_21
    move v12, v2

    move-wide/from16 v43, v4

    move-object/from16 v49, v6

    move-object/from16 v48, v7

    move-object/from16 v42, v14

    move-object/from16 v41, v15

    move-object v7, v3

    move v15, v8

    move-object v14, v10

    .line 791
    .end local v2    # "targetIter":I
    .end local v3    # "y":[D
    .end local v6    # "diagonal":[[D
    .end local v8    # "forward":Z
    .end local v10    # "y1":[D
    .end local v24    # "loop":Z
    .local v7, "y":[D
    .restart local v12    # "targetIter":I
    .local v14, "y1":[D
    .local v15, "forward":Z
    .restart local v41    # "y0":[D
    .restart local v42    # "yDot1":[D
    .restart local v48    # "yDot0":[D
    .restart local v49    # "diagonal":[[D
    if-nez v40, :cond_22

    .line 793
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double/2addr v2, v4

    move-object/from16 v6, v42

    .end local v42    # "yDot1":[D
    .local v6, "yDot1":[D
    invoke-virtual {v0, v2, v3, v14, v6}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->computeDerivatives(D[D[D)V

    goto :goto_16

    .line 791
    .end local v6    # "yDot1":[D
    .restart local v42    # "yDot1":[D
    :cond_22
    move-object/from16 v6, v42

    .line 797
    .end local v42    # "yDot1":[D
    .restart local v6    # "yDot1":[D
    :goto_16
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->getMaxStep()D

    move-result-wide v2

    .line 798
    .local v2, "hInt":D
    if-nez v40, :cond_2f

    .line 801
    const/4 v4, 0x1

    .local v4, "j":I
    :goto_17
    if-gt v4, v1, :cond_23

    .line 802
    const/4 v10, 0x0

    aget-object v5, v21, v10

    move-object/from16 v8, v49

    .end local v49    # "diagonal":[[D
    .local v8, "diagonal":[[D
    invoke-direct {v0, v10, v4, v8, v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    .line 801
    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    .end local v8    # "diagonal":[[D
    .restart local v49    # "diagonal":[[D
    :cond_23
    move-object/from16 v8, v49

    .line 805
    .end local v4    # "j":I
    .end local v49    # "diagonal":[[D
    .restart local v8    # "diagonal":[[D
    mul-int/lit8 v4, v1, 0x2

    iget v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x3

    .line 807
    .local v4, "mu":I
    const/4 v5, 0x0

    .local v5, "l":I
    :goto_18
    if-ge v5, v4, :cond_2b

    .line 810
    div-int/lit8 v10, v5, 0x2

    .line 811
    .local v10, "l2":I
    move-wide/from16 v45, v2

    .end local v2    # "hInt":D
    .local v45, "hInt":D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    aget v2, v2, v10

    int-to-double v2, v2

    mul-double v2, v2, v26

    invoke-static {v2, v3, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v2

    .line 812
    .local v2, "factor":D
    move-wide/from16 v49, v2

    .end local v2    # "factor":D
    .local v49, "factor":D
    aget-object v2, v17, v10

    array-length v2, v2

    div-int/lit8 v2, v2, 0x2

    .line 813
    .local v2, "middleIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_19
    move/from16 v24, v2

    move-object/from16 v42, v6

    move-object/from16 v6, v41

    .end local v2    # "middleIndex":I
    .end local v41    # "y0":[D
    .local v6, "y0":[D
    .local v24, "middleIndex":I
    .restart local v42    # "yDot1":[D
    array-length v2, v6

    if-ge v3, v2, :cond_24

    .line 814
    add-int/lit8 v2, v5, 0x1

    aget-object v2, v21, v2

    aget-object v41, v17, v10

    add-int v47, v24, v5

    aget-object v41, v41, v47

    aget-wide v51, v41, v3

    mul-double v51, v51, v49

    aput-wide v51, v2, v3

    .line 813
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v41, v6

    move/from16 v2, v24

    move-object/from16 v6, v42

    goto :goto_19

    .line 816
    .end local v3    # "i":I
    :cond_24
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1a
    sub-int v3, v1, v10

    if-gt v2, v3, :cond_26

    .line 817
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    add-int v41, v2, v10

    aget v3, v3, v41

    move-object/from16 v41, v13

    move-object/from16 v47, v14

    .end local v13    # "y1Diag":[[D
    .end local v14    # "y1":[D
    .local v41, "y1Diag":[[D
    .local v47, "y1":[D
    int-to-double v13, v3

    mul-double v13, v13, v26

    invoke-static {v13, v14, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v49

    .line 818
    add-int v3, v10, v2

    aget-object v3, v17, v3

    array-length v3, v3

    div-int/lit8 v24, v3, 0x2

    .line 819
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1b
    array-length v13, v6

    if-ge v3, v13, :cond_25

    .line 820
    add-int/lit8 v13, v2, -0x1

    aget-object v13, v8, v13

    add-int v14, v10, v2

    aget-object v14, v17, v14

    add-int v51, v24, v5

    aget-object v14, v14, v51

    aget-wide v51, v14, v3

    mul-double v51, v51, v49

    aput-wide v51, v13, v3

    .line 819
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 822
    .end local v3    # "i":I
    :cond_25
    add-int/lit8 v3, v5, 0x1

    aget-object v3, v21, v3

    invoke-direct {v0, v10, v2, v8, v3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->extrapolate(II[[D[D)V

    .line 816
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v13, v41

    move-object/from16 v14, v47

    goto :goto_1a

    .end local v41    # "y1Diag":[[D
    .end local v47    # "y1":[D
    .restart local v13    # "y1Diag":[[D
    .restart local v14    # "y1":[D
    :cond_26
    move-object/from16 v41, v13

    move-object/from16 v47, v14

    .line 824
    .end local v2    # "j":I
    .end local v13    # "y1Diag":[[D
    .end local v14    # "y1":[D
    .restart local v41    # "y1Diag":[[D
    .restart local v47    # "y1":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1c
    array-length v3, v6

    if-ge v2, v3, :cond_27

    .line 825
    add-int/lit8 v3, v5, 0x1

    aget-object v3, v21, v3

    aget-wide v13, v3, v2

    move/from16 v51, v2

    move-object/from16 v52, v3

    .end local v2    # "i":I
    .local v51, "i":I
    iget-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    mul-double/2addr v13, v2

    aput-wide v13, v52, v51

    .line 824
    add-int/lit8 v2, v51, 0x1

    .end local v51    # "i":I
    .restart local v2    # "i":I
    goto :goto_1c

    :cond_27
    move/from16 v51, v2

    .line 829
    .end local v2    # "i":I
    add-int/lit8 v2, v5, 0x1

    div-int/lit8 v2, v2, 0x2

    .local v2, "j":I
    :goto_1d
    if-gt v2, v1, :cond_2a

    .line 830
    aget-object v3, v17, v2

    array-length v3, v3

    const/16 v16, 0x1

    add-int/lit8 v3, v3, -0x1

    .local v3, "m":I
    :goto_1e
    add-int/lit8 v13, v5, 0x1

    mul-int/lit8 v13, v13, 0x2

    if-lt v3, v13, :cond_29

    .line 831
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1f
    array-length v14, v6

    if-ge v13, v14, :cond_28

    .line 832
    aget-object v14, v17, v2

    aget-object v14, v14, v3

    aget-wide v51, v14, v13

    aget-object v53, v17, v2

    add-int/lit8 v54, v3, -0x2

    aget-object v53, v53, v54

    aget-wide v53, v53, v13

    sub-double v51, v51, v53

    aput-wide v51, v14, v13

    .line 831
    add-int/lit8 v13, v13, 0x1

    goto :goto_1f

    .line 830
    .end local v13    # "i":I
    :cond_28
    add-int/lit8 v3, v3, -0x1

    goto :goto_1e

    .line 829
    .end local v3    # "m":I
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 807
    .end local v2    # "j":I
    .end local v10    # "l2":I
    .end local v24    # "middleIndex":I
    .end local v49    # "factor":D
    :cond_2a
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v13, v41

    move-wide/from16 v2, v45

    move-object/from16 v14, v47

    move-object/from16 v41, v6

    move-object/from16 v6, v42

    goto/16 :goto_18

    .end local v42    # "yDot1":[D
    .end local v45    # "hInt":D
    .end local v47    # "y1":[D
    .local v2, "hInt":D
    .local v6, "yDot1":[D
    .local v13, "y1Diag":[[D
    .restart local v14    # "y1":[D
    .local v41, "y0":[D
    :cond_2b
    move-wide/from16 v45, v2

    move-object/from16 v42, v6

    move-object/from16 v47, v14

    move-object/from16 v6, v41

    move-object/from16 v41, v13

    .line 839
    .end local v2    # "hInt":D
    .end local v5    # "l":I
    .end local v13    # "y1Diag":[[D
    .end local v14    # "y1":[D
    .local v6, "y0":[D
    .local v41, "y1Diag":[[D
    .restart local v42    # "yDot1":[D
    .restart local v45    # "hInt":D
    .restart local v47    # "y1":[D
    if-ltz v4, :cond_2e

    .line 842
    move-object/from16 v2, v37

    check-cast v2, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    .line 844
    .local v2, "gbsInterpolator":Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    iget-wide v13, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    invoke-virtual {v2, v4, v13, v14}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->computeCoefficients(ID)V

    .line 846
    iget-boolean v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->useInterpolationError:Z

    if-eqz v3, :cond_2d

    .line 848
    invoke-virtual {v2, v9}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->estimateError([D)D

    move-result-wide v13

    .line 849
    .local v13, "interpError":D
    move v3, v1

    move-object v5, v2

    .end local v1    # "k":I
    .end local v2    # "gbsInterpolator":Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    .local v3, "k":I
    .local v5, "gbsInterpolator":Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-int/lit8 v10, v4, 0x4

    move-wide/from16 v49, v1

    int-to-double v1, v10

    div-double v1, v43, v1

    invoke-static {v13, v14, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    move/from16 v24, v3

    move v10, v4

    .end local v3    # "k":I
    .end local v4    # "mu":I
    .local v10, "mu":I
    .local v24, "k":I
    const-wide v3, 0x3f847ae147ae147bL    # 0.01

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    div-double v1, v49, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    .line 851
    .end local v45    # "hInt":D
    .local v2, "hInt":D
    const-wide/high16 v43, 0x4024000000000000L    # 10.0

    cmpl-double v1, v13, v43

    if-lez v1, :cond_2c

    .line 852
    move-wide/from16 v32, v2

    .line 853
    const/16 v40, 0x1

    move-wide v13, v2

    goto :goto_21

    .line 851
    :cond_2c
    move-wide v13, v2

    goto :goto_21

    .line 846
    .end local v5    # "gbsInterpolator":Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    .end local v10    # "mu":I
    .end local v13    # "interpError":D
    .end local v24    # "k":I
    .restart local v1    # "k":I
    .local v2, "gbsInterpolator":Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    .restart local v4    # "mu":I
    .restart local v45    # "hInt":D
    :cond_2d
    move/from16 v24, v1

    move-object v5, v2

    move v10, v4

    .end local v1    # "k":I
    .end local v2    # "gbsInterpolator":Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    .end local v4    # "mu":I
    .restart local v5    # "gbsInterpolator":Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    .restart local v10    # "mu":I
    .restart local v24    # "k":I
    goto :goto_20

    .line 839
    .end local v5    # "gbsInterpolator":Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
    .end local v10    # "mu":I
    .end local v24    # "k":I
    .restart local v1    # "k":I
    .restart local v4    # "mu":I
    :cond_2e
    move/from16 v24, v1

    move v10, v4

    .end local v1    # "k":I
    .end local v4    # "mu":I
    .restart local v10    # "mu":I
    .restart local v24    # "k":I
    goto :goto_20

    .line 798
    .end local v8    # "diagonal":[[D
    .end local v10    # "mu":I
    .end local v24    # "k":I
    .end local v42    # "yDot1":[D
    .end local v45    # "hInt":D
    .end local v47    # "y1":[D
    .restart local v1    # "k":I
    .local v2, "hInt":D
    .local v6, "yDot1":[D
    .local v13, "y1Diag":[[D
    .restart local v14    # "y1":[D
    .local v41, "y0":[D
    .local v49, "diagonal":[[D
    :cond_2f
    move/from16 v24, v1

    move-wide/from16 v45, v2

    move-object/from16 v42, v6

    move-object/from16 v47, v14

    move-object/from16 v6, v41

    move-object/from16 v8, v49

    move-object/from16 v41, v13

    .line 861
    .end local v1    # "k":I
    .end local v2    # "hInt":D
    .end local v13    # "y1Diag":[[D
    .end local v14    # "y1":[D
    .end local v49    # "diagonal":[[D
    .local v6, "y0":[D
    .restart local v8    # "diagonal":[[D
    .restart local v24    # "k":I
    .local v41, "y1Diag":[[D
    .restart local v42    # "yDot1":[D
    .restart local v45    # "hInt":D
    .restart local v47    # "y1":[D
    :goto_20
    move-wide/from16 v13, v45

    .end local v45    # "hInt":D
    .local v13, "hInt":D
    :goto_21
    if-nez v40, :cond_3b

    .line 864
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    add-double/2addr v1, v3

    move-object/from16 v4, v37

    .end local v37    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .local v4, "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    invoke-virtual {v4, v1, v2}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 865
    move-object v1, v4

    move-object/from16 v49, v8

    move/from16 v10, v24

    move-object/from16 v3, v42

    move-object/from16 v2, v47

    move-wide/from16 v4, p2

    move-object/from16 v24, v9

    .end local v4    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .end local v8    # "diagonal":[[D
    .end local v9    # "scale":[D
    .end local v42    # "yDot1":[D
    .end local v47    # "y1":[D
    .local v1, "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .local v2, "y1":[D
    .local v3, "yDot1":[D
    .local v10, "k":I
    .local v24, "scale":[D
    .restart local v49    # "diagonal":[[D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v8

    move-object v4, v1

    .end local v1    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .restart local v4    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    iput-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    .line 868
    iget-wide v8, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    invoke-virtual {v4, v8, v9}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;->storeTime(D)V

    .line 869
    array-length v1, v6

    const/4 v5, 0x0

    invoke-static {v2, v5, v7, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 870
    array-length v1, v6

    move-object/from16 v8, v48

    .end local v48    # "yDot0":[D
    .local v8, "yDot0":[D
    invoke-static {v3, v5, v8, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 871
    const/4 v1, 0x1

    .line 874
    .end local v36    # "firstStepAlreadyComputed":Z
    .local v1, "firstStepAlreadyComputed":Z
    const/4 v5, 0x1

    if-ne v10, v5, :cond_31

    .line 875
    const/4 v9, 0x2

    .line 876
    .local v9, "optimalIter":I
    if-eqz v25, :cond_30

    .line 877
    const/4 v9, 0x1

    move/from16 v42, v1

    move-object v5, v2

    goto/16 :goto_23

    .line 876
    :cond_30
    move/from16 v42, v1

    move-object v5, v2

    goto/16 :goto_23

    .line 879
    .end local v9    # "optimalIter":I
    :cond_31
    if-gt v10, v12, :cond_33

    .line 880
    move v9, v10

    .line 881
    .restart local v9    # "optimalIter":I
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v36, v10, -0x1

    aget-wide v36, v5, v36

    move/from16 v42, v1

    move-object v5, v2

    .end local v1    # "firstStepAlreadyComputed":Z
    .end local v2    # "y1":[D
    .local v5, "y1":[D
    .local v42, "firstStepAlreadyComputed":Z
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    move-wide/from16 v43, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v1, v1, v10

    mul-double v1, v1, v43

    cmpg-double v1, v36, v1

    if-gez v1, :cond_32

    .line 882
    add-int/lit8 v9, v10, -0x1

    goto/16 :goto_23

    .line 883
    :cond_32
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v1, v1, v10

    move-wide/from16 v36, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    move-wide/from16 v43, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v2, v10, -0x1

    aget-wide v1, v1, v2

    mul-double v1, v1, v43

    cmpg-double v1, v36, v1

    if-gez v1, :cond_37

    .line 884
    add-int/lit8 v1, v10, 0x1

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    goto :goto_23

    .line 887
    .end local v5    # "y1":[D
    .end local v9    # "optimalIter":I
    .end local v42    # "firstStepAlreadyComputed":Z
    .restart local v1    # "firstStepAlreadyComputed":Z
    .restart local v2    # "y1":[D
    :cond_33
    move/from16 v42, v1

    move-object v5, v2

    .end local v1    # "firstStepAlreadyComputed":Z
    .end local v2    # "y1":[D
    .restart local v5    # "y1":[D
    .restart local v42    # "firstStepAlreadyComputed":Z
    add-int/lit8 v1, v10, -0x1

    .line 888
    .local v1, "optimalIter":I
    move/from16 v2, v19

    if-le v10, v2, :cond_34

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v9, v10, -0x2

    aget-wide v36, v2, v9

    move v9, v1

    .end local v1    # "optimalIter":I
    .restart local v9    # "optimalIter":I
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    move-wide/from16 v43, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v2, v10, -0x1

    aget-wide v1, v1, v2

    mul-double v1, v1, v43

    cmpg-double v1, v36, v1

    if-gez v1, :cond_35

    .line 890
    add-int/lit8 v1, v10, -0x2

    move v9, v1

    .end local v9    # "optimalIter":I
    .restart local v1    # "optimalIter":I
    goto :goto_22

    .line 888
    :cond_34
    move v9, v1

    .line 892
    .end local v1    # "optimalIter":I
    .restart local v9    # "optimalIter":I
    :cond_35
    :goto_22
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v1, v1, v10

    move-wide/from16 v36, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    move-wide/from16 v43, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v1, v1, v9

    mul-double v1, v1, v43

    cmpg-double v1, v36, v1

    if-gez v1, :cond_36

    .line 893
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->sequence:[I

    array-length v1, v1

    const/16 v19, 0x2

    add-int/lit8 v1, v1, -0x2

    invoke-static {v10, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    goto :goto_23

    .line 892
    :cond_36
    const/16 v19, 0x2

    .line 897
    :cond_37
    :goto_23
    if-eqz v25, :cond_38

    .line 900
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v1

    .line 901
    .end local v12    # "targetIter":I
    .local v1, "targetIter":I
    move v12, v1

    .end local v1    # "targetIter":I
    .restart local v12    # "targetIter":I
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepSize:D

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    move-object/from16 v37, v3

    .end local v3    # "yDot1":[D
    .local v37, "yDot1":[D
    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    move-object/from16 v43, v4

    .end local v4    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .local v43, "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    aget-wide v3, v3, v12

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    move-wide/from16 v32, v1

    move v1, v12

    .end local v32    # "hNew":D
    .local v1, "hNew":D
    goto :goto_25

    .line 904
    .end local v1    # "hNew":D
    .end local v37    # "yDot1":[D
    .end local v43    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .restart local v3    # "yDot1":[D
    .restart local v4    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .restart local v32    # "hNew":D
    :cond_38
    move-object/from16 v37, v3

    move-object/from16 v43, v4

    .end local v3    # "yDot1":[D
    .end local v4    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .restart local v37    # "yDot1":[D
    .restart local v43    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    if-gt v9, v10, :cond_39

    .line 905
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v1, v1, v9

    .end local v32    # "hNew":D
    .restart local v1    # "hNew":D
    goto :goto_24

    .line 907
    .end local v1    # "hNew":D
    .restart local v32    # "hNew":D
    :cond_39
    if-ge v10, v12, :cond_3a

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    aget-wide v1, v1, v10

    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    move-wide/from16 v44, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerTimeUnit:[D

    add-int/lit8 v2, v10, -0x1

    aget-wide v1, v1, v2

    mul-double/2addr v3, v1

    cmpg-double v1, v44, v3

    if-gez v1, :cond_3a

    .line 909
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v1, v1, v10

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    add-int/lit8 v4, v9, 0x1

    aget v3, v3, v4

    int-to-double v3, v3

    mul-double/2addr v1, v3

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v3, v3, v10

    int-to-double v3, v3

    div-double/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v15, v3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    .end local v32    # "hNew":D
    .restart local v1    # "hNew":D
    goto :goto_24

    .line 912
    .end local v1    # "hNew":D
    .restart local v32    # "hNew":D
    :cond_3a
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->optimalStep:[D

    aget-wide v1, v1, v10

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v3, v3, v9

    int-to-double v3, v3

    mul-double/2addr v1, v3

    iget-object v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->costPerStep:[I

    aget v3, v3, v10

    int-to-double v3, v3

    div-double/2addr v1, v3

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v15, v3}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->filterStep(DZZ)D

    move-result-wide v1

    .line 917
    .end local v32    # "hNew":D
    .restart local v1    # "hNew":D
    :goto_24
    move v3, v9

    move-wide/from16 v32, v1

    move v1, v3

    .line 921
    .end local v12    # "targetIter":I
    .local v1, "targetIter":I
    .restart local v32    # "hNew":D
    :goto_25
    const/4 v2, 0x1

    move v12, v1

    move/from16 v35, v2

    move/from16 v36, v42

    move-wide/from16 v1, v32

    .end local v35    # "newStep":Z
    .local v2, "newStep":Z
    goto :goto_26

    .line 861
    .end local v1    # "targetIter":I
    .end local v2    # "newStep":Z
    .end local v5    # "y1":[D
    .end local v10    # "k":I
    .end local v43    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .end local v49    # "diagonal":[[D
    .local v8, "diagonal":[[D
    .local v9, "scale":[D
    .restart local v12    # "targetIter":I
    .local v24, "k":I
    .restart local v35    # "newStep":Z
    .restart local v36    # "firstStepAlreadyComputed":Z
    .local v37, "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .local v42, "yDot1":[D
    .restart local v47    # "y1":[D
    .restart local v48    # "yDot0":[D
    :cond_3b
    move-object/from16 v49, v8

    move/from16 v10, v24

    move-object/from16 v43, v37

    move-object/from16 v37, v42

    move-object/from16 v5, v47

    move-object/from16 v8, v48

    move-object/from16 v24, v9

    .end local v9    # "scale":[D
    .end local v42    # "yDot1":[D
    .end local v47    # "y1":[D
    .end local v48    # "yDot0":[D
    .restart local v5    # "y1":[D
    .local v8, "yDot0":[D
    .restart local v10    # "k":I
    .local v24, "scale":[D
    .local v37, "yDot1":[D
    .restart local v43    # "interpolator":Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
    .restart local v49    # "diagonal":[[D
    move-wide/from16 v1, v32

    .line 925
    .end local v32    # "hNew":D
    .local v1, "hNew":D
    :goto_26
    invoke-static {v1, v2, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    .line 926
    if-nez v15, :cond_3c

    .line 927
    neg-double v1, v1

    .line 930
    :cond_3c
    const/16 v34, 0x0

    .line 932
    if-eqz v40, :cond_3d

    .line 933
    const/4 v3, 0x0

    iput-boolean v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    .line 934
    const/4 v4, 0x1

    move/from16 v25, v4

    .end local v25    # "previousRejected":Z
    .local v4, "previousRejected":Z
    goto :goto_27

    .line 936
    .end local v4    # "previousRejected":Z
    .restart local v25    # "previousRejected":Z
    :cond_3d
    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v25, v4

    .line 939
    .end local v10    # "k":I
    .end local v13    # "hInt":D
    .end local v30    # "nextT":D
    .end local v40    # "reject":Z
    :goto_27
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->isLastStep:Z

    if-eqz v4, :cond_3e

    .line 942
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepStart:D

    move-object/from16 v9, p1

    invoke-virtual {v9, v3, v4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 943
    invoke-virtual {v9, v7}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 945
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->resetInternalState()V

    .line 947
    return-void

    .line 939
    :cond_3e
    move-object/from16 v9, p1

    move-wide/from16 v30, v1

    move-object v10, v5

    move-object v3, v6

    move-object v6, v7

    move-object v7, v8

    move v8, v15

    move-object/from16 v14, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v24

    move-object/from16 v9, v37

    move-wide/from16 v32, v38

    move-object/from16 v13, v41

    move-object/from16 v37, v43

    move-object v15, v11

    move/from16 v24, v12

    move-object/from16 v11, v49

    goto/16 :goto_5

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setControlFactors(DDDD)V
    .locals 7
    .param p1, "control1"    # D
    .param p3, "control2"    # D
    .param p5, "control3"    # D
    .param p7, "control4"    # D

    .line 262
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, p1, v0

    const-wide v3, 0x3fefff2e48e8a71eL    # 0.9999

    if-ltz v2, :cond_1

    cmpl-double v2, p1, v3

    if-lez v2, :cond_0

    goto :goto_0

    .line 265
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    goto :goto_1

    .line 263
    :cond_1
    :goto_0
    const-wide v5, 0x3fe4cccccccccccdL    # 0.65

    iput-wide v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl1:D

    .line 268
    :goto_1
    cmpg-double v2, p3, v0

    if-ltz v2, :cond_3

    cmpl-double v2, p3, v3

    if-lez v2, :cond_2

    goto :goto_2

    .line 271
    :cond_2
    iput-wide p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    goto :goto_3

    .line 269
    :cond_3
    :goto_2
    const-wide v5, 0x3fee147ae147ae14L    # 0.94

    iput-wide v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl2:D

    .line 274
    :goto_3
    cmpg-double v0, p5, v0

    if-ltz v0, :cond_5

    cmpl-double v0, p5, v3

    if-lez v0, :cond_4

    goto :goto_4

    .line 277
    :cond_4
    iput-wide p5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    goto :goto_5

    .line 275
    :cond_5
    :goto_4
    const-wide v0, 0x3f947ae147ae147bL    # 0.02

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl3:D

    .line 280
    :goto_5
    const-wide v0, 0x3ff00068db8bac71L    # 1.0001

    cmpg-double v0, p7, v0

    if-ltz v0, :cond_7

    const-wide v0, 0x408f3f3333333333L    # 999.9

    cmpl-double v0, p7, v0

    if-lez v0, :cond_6

    goto :goto_6

    .line 283
    :cond_6
    iput-wide p7, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    goto :goto_7

    .line 281
    :cond_7
    :goto_6
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stepControl4:D

    .line 286
    :goto_7
    return-void
.end method

.method public setInterpolationControl(ZI)V
    .locals 1
    .param p1, "useInterpolationErrorForControl"    # Z
    .param p2, "mudifControlParameter"    # I

    .line 411
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->useInterpolationError:Z

    .line 413
    if-lez p2, :cond_1

    const/4 v0, 0x7

    if-lt p2, v0, :cond_0

    goto :goto_0

    .line 416
    :cond_0
    iput p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    goto :goto_1

    .line 414
    :cond_1
    :goto_0
    const/4 v0, 0x4

    iput v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->mudif:I

    .line 419
    :goto_1
    return-void
.end method

.method public setOrderControl(IDD)V
    .locals 7
    .param p1, "maximalOrder"    # I
    .param p2, "control1"    # D
    .param p4, "control2"    # D

    .line 314
    const/4 v0, 0x6

    if-le p1, v0, :cond_0

    rem-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_1

    .line 315
    :cond_0
    const/16 v0, 0x12

    iput v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxOrder:I

    .line 318
    :cond_1
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v2, p2, v0

    const-wide v3, 0x3fefff2e48e8a71eL    # 0.9999

    if-ltz v2, :cond_3

    cmpl-double v2, p2, v3

    if-lez v2, :cond_2

    goto :goto_0

    .line 321
    :cond_2
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    goto :goto_1

    .line 319
    :cond_3
    :goto_0
    const-wide v5, 0x3fe999999999999aL    # 0.8

    iput-wide v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl1:D

    .line 324
    :goto_1
    cmpg-double v0, p4, v0

    if-ltz v0, :cond_5

    cmpl-double v0, p4, v3

    if-lez v0, :cond_4

    goto :goto_2

    .line 327
    :cond_4
    iput-wide p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    goto :goto_3

    .line 325
    :cond_5
    :goto_2
    const-wide v0, 0x3feccccccccccccdL    # 0.9

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->orderControl2:D

    .line 331
    :goto_3
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->initializeArrays()V

    .line 333
    return-void
.end method

.method public setStabilityCheck(ZIID)V
    .locals 2
    .param p1, "performStabilityCheck"    # Z
    .param p2, "maxNumIter"    # I
    .param p3, "maxNumChecks"    # I
    .param p4, "stepsizeReductionFactor"    # D

    .line 223
    iput-boolean p1, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->performTest:Z

    .line 224
    if-gtz p2, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxIter:I

    .line 225
    if-gtz p3, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p3

    :goto_1
    iput v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->maxChecks:I

    .line 227
    const-wide v0, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, p4, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, p4, v0

    if-lez v0, :cond_2

    goto :goto_2

    .line 230
    :cond_2
    iput-wide p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    goto :goto_3

    .line 228
    :cond_3
    :goto_2
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerIntegrator;->stabilityReduction:D

    .line 233
    :goto_3
    return-void
.end method
