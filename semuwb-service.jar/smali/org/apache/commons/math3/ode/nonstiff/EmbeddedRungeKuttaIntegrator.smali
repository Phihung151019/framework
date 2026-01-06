.class public abstract Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;
.source "EmbeddedRungeKuttaIntegrator.java"


# instance fields
.field private final a:[[D

.field private final b:[D

.field private final c:[D

.field private final exp:D

.field private final fsal:Z

.field private maxGrowth:D

.field private minReduction:D

.field private final prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

.field private safety:D


# direct methods
.method protected constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fsal"    # Z
    .param p3, "c"    # [D
    .param p4, "a"    # [[D
    .param p5, "b"    # [D
    .param p6, "prototype"    # Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .param p7, "minStep"    # D
    .param p9, "maxStep"    # D
    .param p11, "scalAbsoluteTolerance"    # D
    .param p13, "scalRelativeTolerance"    # D

    .line 116
    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p7

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-wide/from16 v8, p13

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DDDD)V

    .line 118
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    .line 119
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    .line 120
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    .line 121
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    .line 122
    move-object/from16 v1, p6

    iput-object v1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 124
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    div-double/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    .line 127
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    .line 128
    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    .line 129
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    .line 131
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fsal"    # Z
    .param p3, "c"    # [D
    .param p4, "a"    # [[D
    .param p5, "b"    # [D
    .param p6, "prototype"    # Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .param p7, "minStep"    # D
    .param p9, "maxStep"    # D
    .param p11, "vecAbsoluteTolerance"    # [D
    .param p12, "vecRelativeTolerance"    # [D

    .line 154
    move-object v0, p0

    move-object v1, p1

    move-wide v2, p7

    move-wide/from16 v4, p9

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/AdaptiveStepsizeIntegrator;-><init>(Ljava/lang/String;DD[D[D)V

    .line 156
    iput-boolean p2, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    .line 157
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    .line 158
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    .line 159
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    .line 160
    iput-object p6, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 162
    invoke-virtual {p0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    div-double/2addr v4, v2

    iput-wide v4, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    .line 165
    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setSafety(D)V

    .line 166
    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMinReduction(D)V

    .line 167
    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setMaxGrowth(D)V

    .line 169
    return-void
.end method


# virtual methods
.method protected abstract estimateError([[D[D[DD)D
.end method

.method public getMaxGrowth()D
    .locals 2

    .line 359
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    return-wide v0
.end method

.method public getMinReduction()D
    .locals 2

    .line 345
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    return-wide v0
.end method

.method public abstract getOrder()I
.end method

.method public getSafety()D
    .locals 2

    .line 180
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    return-wide v0
.end method

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

    .line 196
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p3}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->sanityChecks(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;D)V

    .line 197
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->setEquations(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    cmpl-double v1, p2, v1

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-lez v1, :cond_0

    move v1, v11

    goto :goto_0

    :cond_0
    move v1, v12

    .line 201
    .local v1, "forward":Z
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getCompleteState()[D

    move-result-object v7

    .line 202
    .local v7, "y0":[D
    invoke-virtual {v7}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, [D

    .line 203
    .local v8, "y":[D
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    array-length v2, v2

    add-int/lit8 v13, v2, 0x1

    .line 204
    .local v13, "stages":I
    array-length v2, v8

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v11

    aput v13, v3, v12

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, [[D

    .line 205
    .local v3, "yDotK":[[D
    invoke-virtual {v7}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    .line 206
    .local v2, "yTmp":[D
    array-length v4, v8

    new-array v14, v4, [D

    .line 209
    .local v14, "yDotTmp":[D
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->prototype:Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    invoke-virtual {v4}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->copy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;

    .line 210
    .local v4, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v6

    move/from16 v28, v1

    move-object v1, v0

    move-object v0, v4

    move/from16 v4, v28

    .end local v1    # "forward":Z
    .local v0, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .local v4, "forward":Z
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 212
    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    move-object v9, v2

    move-object v15, v3

    move v6, v4

    .end local v0    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .end local v2    # "yTmp":[D
    .end local v3    # "yDotK":[[D
    .end local v4    # "forward":Z
    .local v1, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .local v6, "forward":Z
    .local v9, "yTmp":[D
    .local v15, "yDotK":[[D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 215
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v2

    iput-wide v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    .line 216
    const-wide/16 v16, 0x0

    .line 217
    .local v16, "hNew":D
    const/16 v18, 0x1

    .line 218
    .local v18, "firstTime":Z
    move-object v3, v1

    .end local v1    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .local v3, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTime()D

    move-result-wide v1

    move-object v4, v7

    move-object v7, v3

    move-object v3, v4

    move-wide/from16 v4, p2

    .local v3, "y0":[D
    .local v7, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->initIntegration(D[DD)V

    .line 221
    iput-boolean v12, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->isLastStep:Z

    .line 224
    :goto_1
    invoke-virtual {v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->shift()V

    .line 227
    const-wide/high16 v1, 0x4024000000000000L    # 10.0

    .line 228
    .local v1, "error":D
    :goto_2
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v1, v19

    if-ltz v4, :cond_f

    .line 230
    if-nez v18, :cond_2

    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    if-nez v4, :cond_1

    goto :goto_3

    :cond_1
    move/from16 v21, v11

    goto :goto_4

    .line 232
    :cond_2
    :goto_3
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move/from16 v21, v11

    aget-object v11, v15, v12

    invoke-virtual {v0, v4, v5, v8, v11}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    .line 235
    :goto_4
    if-eqz v18, :cond_6

    .line 236
    iget v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->mainSetDimension:I

    new-array v4, v4, [D

    .line 237
    .local v4, "scale":[D
    iget-object v5, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->vecAbsoluteTolerance:[D

    if-nez v5, :cond_4

    .line 238
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_5
    array-length v11, v4

    if-ge v5, v11, :cond_3

    .line 239
    move v11, v12

    move/from16 v22, v13

    .end local v13    # "stages":I
    .local v22, "stages":I
    iget-wide v12, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->scalAbsoluteTolerance:D

    move/from16 v23, v11

    move-wide/from16 v24, v12

    iget-wide v11, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->scalRelativeTolerance:D

    aget-wide v26, v8, v5

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    mul-double v11, v11, v26

    add-double v12, v24, v11

    aput-wide v12, v4, v5

    .line 238
    add-int/lit8 v5, v5, 0x1

    move/from16 v13, v22

    move/from16 v12, v23

    goto :goto_5

    .end local v22    # "stages":I
    .restart local v13    # "stages":I
    :cond_3
    move/from16 v23, v12

    move/from16 v22, v13

    .end local v5    # "i":I
    .end local v13    # "stages":I
    .restart local v22    # "stages":I
    goto :goto_7

    .line 242
    .end local v22    # "stages":I
    .restart local v13    # "stages":I
    :cond_4
    move/from16 v23, v12

    move/from16 v22, v13

    .end local v13    # "stages":I
    .restart local v22    # "stages":I
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_6
    array-length v11, v4

    if-ge v5, v11, :cond_5

    .line 243
    iget-object v11, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->vecAbsoluteTolerance:[D

    aget-wide v11, v11, v5

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->vecRelativeTolerance:[D

    aget-wide v24, v13, v5

    aget-wide v26, v8, v5

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v11, v11, v24

    aput-wide v11, v4, v5

    .line 242
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 246
    .end local v5    # "i":I
    :cond_5
    :goto_7
    move-wide v11, v1

    .end local v1    # "error":D
    .local v11, "error":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->getOrder()I

    move-result v2

    move-object v1, v3

    move-object v3, v4

    .end local v4    # "scale":[D
    .local v1, "y0":[D
    .local v3, "scale":[D
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-object v13, v7

    .end local v7    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .local v13, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    aget-object v7, v15, v23

    move-object/from16 v24, v1

    move v1, v6

    move-object v6, v8

    move-object v8, v9

    .end local v9    # "yTmp":[D
    .local v1, "forward":Z
    .local v6, "y":[D
    .local v8, "yTmp":[D
    .local v24, "y0":[D
    aget-object v9, v15, v21

    move-wide v10, v11

    move-object/from16 v12, v24

    .end local v11    # "error":D
    .end local v24    # "y0":[D
    .local v10, "error":D
    .local v12, "y0":[D
    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->initializeStep(ZI[DD[D[D[D[D)D

    move-result-wide v4

    .line 248
    move-object v2, v6

    move v6, v1

    .end local v1    # "forward":Z
    .end local v16    # "hNew":D
    .local v2, "y":[D
    .local v4, "hNew":D
    .local v6, "forward":Z
    const/16 v18, 0x0

    move-wide v3, v4

    goto :goto_8

    .line 235
    .end local v2    # "y":[D
    .end local v4    # "hNew":D
    .end local v10    # "error":D
    .end local v12    # "y0":[D
    .end local v22    # "stages":I
    .local v1, "error":D
    .local v3, "y0":[D
    .restart local v7    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .local v8, "y":[D
    .restart local v9    # "yTmp":[D
    .local v13, "stages":I
    .restart local v16    # "hNew":D
    :cond_6
    move-wide v10, v1

    move-object v2, v8

    move-object v8, v9

    move/from16 v23, v12

    move/from16 v22, v13

    move-object v12, v3

    move-object v13, v7

    .end local v1    # "error":D
    .end local v3    # "y0":[D
    .end local v7    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .end local v9    # "yTmp":[D
    .restart local v2    # "y":[D
    .local v8, "yTmp":[D
    .restart local v10    # "error":D
    .restart local v12    # "y0":[D
    .local v13, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .restart local v22    # "stages":I
    move-wide/from16 v3, v16

    .line 251
    .end local v16    # "hNew":D
    .local v3, "hNew":D
    :goto_8
    iput-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    .line 252
    if-eqz v6, :cond_7

    .line 253
    move-object v5, v2

    .end local v2    # "y":[D
    .local v5, "y":[D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    add-double v1, v16, v1

    cmpl-double v1, v1, p2

    if-ltz v1, :cond_8

    .line 254
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    sub-double v1, p2, v1

    iput-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    goto :goto_9

    .line 257
    .end local v5    # "y":[D
    .restart local v2    # "y":[D
    :cond_7
    move-object v5, v2

    .end local v2    # "y":[D
    .restart local v5    # "y":[D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-wide/from16 v16, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    add-double v1, v16, v1

    cmpg-double v1, v1, p2

    if-gtz v1, :cond_8

    .line 258
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    sub-double v1, p2, v1

    iput-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    .line 263
    :cond_8
    :goto_9
    const/4 v1, 0x1

    .local v1, "k":I
    :goto_a
    move/from16 v7, v22

    .end local v22    # "stages":I
    .local v7, "stages":I
    if-ge v1, v7, :cond_b

    .line 265
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_b
    array-length v9, v12

    if-ge v2, v9, :cond_a

    .line 266
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    add-int/lit8 v16, v1, -0x1

    aget-object v9, v9, v16

    aget-wide v16, v9, v23

    aget-object v9, v15, v23

    aget-wide v24, v9, v2

    mul-double v16, v16, v24

    .line 267
    .local v16, "sum":D
    const/4 v9, 0x1

    .local v9, "l":I
    :goto_c
    if-ge v9, v1, :cond_9

    .line 268
    move/from16 v22, v1

    .end local v1    # "k":I
    .local v22, "k":I
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->a:[[D

    add-int/lit8 v24, v22, -0x1

    aget-object v1, v1, v24

    aget-wide v24, v1, v9

    aget-object v1, v15, v9

    aget-wide v26, v1, v2

    mul-double v24, v24, v26

    add-double v16, v16, v24

    .line 267
    add-int/lit8 v9, v9, 0x1

    move/from16 v1, v22

    goto :goto_c

    .end local v22    # "k":I
    .restart local v1    # "k":I
    :cond_9
    move/from16 v22, v1

    .line 270
    .end local v1    # "k":I
    .end local v9    # "l":I
    .restart local v22    # "k":I
    aget-wide v24, v5, v2

    move v9, v2

    .end local v2    # "j":I
    .local v9, "j":I
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v1, v1, v16

    add-double v24, v24, v1

    aput-wide v24, v8, v9

    .line 265
    .end local v16    # "sum":D
    add-int/lit8 v2, v9, 0x1

    move/from16 v1, v22

    .end local v9    # "j":I
    .restart local v2    # "j":I
    goto :goto_b

    .end local v22    # "k":I
    .restart local v1    # "k":I
    :cond_a
    move/from16 v22, v1

    move v9, v2

    .line 273
    .end local v1    # "k":I
    .end local v2    # "j":I
    .restart local v22    # "k":I
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->c:[D

    add-int/lit8 v16, v22, -0x1

    aget-wide v16, v9, v16

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v16, v16, v1

    add-double v1, v24, v16

    aget-object v9, v15, v22

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->computeDerivatives(D[D[D)V

    .line 263
    add-int/lit8 v1, v22, 0x1

    move/from16 v22, v7

    .end local v22    # "k":I
    .restart local v1    # "k":I
    goto :goto_a

    :cond_b
    move/from16 v22, v1

    .line 278
    .end local v1    # "k":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_d
    array-length v2, v12

    if-ge v1, v2, :cond_d

    .line 279
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    aget-wide v16, v2, v23

    aget-object v2, v15, v23

    aget-wide v24, v2, v1

    mul-double v16, v16, v24

    .line 280
    .restart local v16    # "sum":D
    const/4 v2, 0x1

    .local v2, "l":I
    :goto_e
    if-ge v2, v7, :cond_c

    .line 281
    iget-object v9, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->b:[D

    aget-wide v24, v9, v2

    aget-object v9, v15, v2

    aget-wide v26, v9, v1

    mul-double v24, v24, v26

    add-double v16, v16, v24

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 283
    .end local v2    # "l":I
    :cond_c
    aget-wide v24, v5, v1

    move v9, v1

    .end local v1    # "j":I
    .restart local v9    # "j":I
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double v1, v1, v16

    add-double v24, v24, v1

    aput-wide v24, v8, v9

    .line 278
    .end local v16    # "sum":D
    add-int/lit8 v1, v9, 0x1

    .end local v9    # "j":I
    .restart local v1    # "j":I
    goto :goto_d

    :cond_d
    move v9, v1

    .line 287
    .end local v1    # "j":I
    move-wide/from16 v16, v3

    move-object v2, v5

    .end local v3    # "hNew":D
    .end local v5    # "y":[D
    .local v2, "y":[D
    .local v16, "hNew":D
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    move-object v3, v8

    move-object v1, v15

    .end local v8    # "yTmp":[D
    .end local v15    # "yDotK":[[D
    .local v1, "yDotK":[[D
    .local v3, "yTmp":[D
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->estimateError([[D[D[DD)D

    move-result-wide v4

    .line 288
    .end local v1    # "yDotK":[[D
    .end local v3    # "yTmp":[D
    .end local v10    # "error":D
    .local v4, "error":D
    .restart local v8    # "yTmp":[D
    .restart local v15    # "yDotK":[[D
    cmpl-double v1, v4, v19

    if-ltz v1, :cond_e

    .line 290
    iget-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    move-object v3, v14

    move-object/from16 v19, v15

    .end local v14    # "yDotTmp":[D
    .end local v15    # "yDotK":[[D
    .local v3, "yDotTmp":[D
    .local v19, "yDotK":[[D
    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    move-object/from16 v20, v2

    .end local v2    # "y":[D
    .local v20, "y":[D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    invoke-static {v4, v5, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    mul-double v1, v1, v24

    invoke-static {v14, v15, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    invoke-static {v9, v10, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v1

    .line 293
    .local v1, "factor":D
    iget-wide v9, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double/2addr v9, v1

    move/from16 v11, v23

    invoke-virtual {v0, v9, v10, v6, v11}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->filterStep(DZZ)D

    move-result-wide v16

    .line 294
    .end local v1    # "factor":D
    move-object v1, v13

    move v13, v7

    move-object v7, v1

    move-object v14, v3

    move-wide v1, v4

    move-object v9, v8

    move-object v3, v12

    move-object/from16 v15, v19

    move-object/from16 v8, v20

    move/from16 v11, v21

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 288
    .end local v3    # "yDotTmp":[D
    .end local v19    # "yDotK":[[D
    .end local v20    # "y":[D
    .restart local v2    # "y":[D
    .restart local v14    # "yDotTmp":[D
    .restart local v15    # "yDotK":[[D
    :cond_e
    move-object/from16 v20, v2

    move-object v3, v14

    move-object/from16 v19, v15

    .end local v2    # "y":[D
    .end local v14    # "yDotTmp":[D
    .end local v15    # "yDotK":[[D
    .restart local v3    # "yDotTmp":[D
    .restart local v19    # "yDotK":[[D
    .restart local v20    # "y":[D
    move-object v1, v13

    move v13, v7

    move-object v7, v1

    move-wide v1, v4

    move-object v9, v8

    move-object v3, v12

    move-object/from16 v8, v20

    move/from16 v11, v21

    const/4 v12, 0x0

    goto/16 :goto_2

    .line 299
    .end local v4    # "error":D
    .end local v12    # "y0":[D
    .end local v19    # "yDotK":[[D
    .end local v20    # "y":[D
    .local v1, "error":D
    .local v3, "y0":[D
    .local v7, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .local v8, "y":[D
    .local v9, "yTmp":[D
    .local v13, "stages":I
    .restart local v14    # "yDotTmp":[D
    .restart local v15    # "yDotK":[[D
    :cond_f
    move v10, v13

    move-object v13, v7

    move v7, v10

    move-object v12, v3

    move-object/from16 v20, v8

    move-object v8, v9

    move/from16 v21, v11

    move-object v3, v14

    move-object/from16 v19, v15

    move-wide v10, v1

    .end local v1    # "error":D
    .end local v9    # "yTmp":[D
    .end local v14    # "yDotTmp":[D
    .end local v15    # "yDotK":[[D
    .local v3, "yDotTmp":[D
    .local v7, "stages":I
    .local v8, "yTmp":[D
    .restart local v10    # "error":D
    .restart local v12    # "y0":[D
    .local v13, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .restart local v19    # "yDotK":[[D
    .restart local v20    # "y":[D
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    add-double/2addr v1, v4

    invoke-virtual {v13, v1, v2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 300
    array-length v1, v12

    move-object/from16 v2, v20

    const/4 v9, 0x0

    .end local v20    # "y":[D
    .restart local v2    # "y":[D
    invoke-static {v8, v9, v2, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    add-int/lit8 v1, v7, -0x1

    aget-object v1, v19, v1

    array-length v4, v12

    invoke-static {v1, v9, v3, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 302
    move-wide/from16 v4, p2

    move-object v1, v13

    .end local v13    # "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    .local v1, "interpolator":Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->acceptStep(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;[D[DD)D

    move-result-wide v13

    iput-wide v13, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    .line 303
    array-length v4, v2

    invoke-static {v2, v9, v8, v9, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->isLastStep:Z

    if-nez v4, :cond_16

    .line 308
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    invoke-virtual {v1, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 310
    iget-boolean v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->fsal:Z

    if-eqz v4, :cond_10

    .line 312
    aget-object v4, v19, v9

    array-length v5, v12

    invoke-static {v3, v9, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    :cond_10
    iget-wide v4, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    iget-wide v13, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    move/from16 v22, v7

    move-object v15, v8

    .end local v7    # "stages":I
    .end local v8    # "yTmp":[D
    .local v15, "yTmp":[D
    .local v22, "stages":I
    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    move-wide/from16 v23, v7

    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->exp:D

    invoke-static {v10, v11, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v7

    mul-double v7, v7, v23

    invoke-static {v13, v14, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v4

    .line 318
    .local v4, "factor":D
    iget-wide v7, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepSize:D

    mul-double/2addr v7, v4

    .line 319
    .local v7, "scaledH":D
    iget-wide v13, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    add-double/2addr v13, v7

    .line 320
    .local v13, "nextT":D
    if-eqz v6, :cond_11

    cmpl-double v20, v13, p2

    if-ltz v20, :cond_12

    goto :goto_f

    :cond_11
    cmpg-double v20, v13, p2

    if-gtz v20, :cond_12

    :goto_f
    move/from16 v23, v21

    goto :goto_10

    :cond_12
    move/from16 v23, v9

    :goto_10
    move/from16 v20, v23

    .line 321
    .local v20, "nextIsLast":Z
    move/from16 v9, v20

    .end local v20    # "nextIsLast":Z
    .local v9, "nextIsLast":Z
    invoke-virtual {v0, v7, v8, v6, v9}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->filterStep(DZZ)D

    move-result-wide v16

    .line 323
    move-object/from16 v20, v3

    move-wide/from16 v24, v4

    .end local v3    # "yDotTmp":[D
    .end local v4    # "factor":D
    .local v20, "yDotTmp":[D
    .local v24, "factor":D
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    add-double v3, v3, v16

    .line 324
    .local v3, "filteredNextT":D
    if-eqz v6, :cond_13

    cmpl-double v5, v3, p2

    if-ltz v5, :cond_14

    goto :goto_11

    :cond_13
    cmpg-double v5, v3, p2

    if-gtz v5, :cond_14

    :goto_11
    move/from16 v5, v21

    goto :goto_12

    :cond_14
    const/4 v5, 0x0

    .line 325
    .local v5, "filteredNextIsLast":Z
    :goto_12
    if-eqz v5, :cond_15

    .line 326
    move-wide/from16 v26, v3

    .end local v3    # "filteredNextT":D
    .local v26, "filteredNextT":D
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    sub-double v3, p2, v3

    move-wide/from16 v16, v3

    .end local v16    # "hNew":D
    .local v3, "hNew":D
    goto :goto_13

    .line 325
    .end local v26    # "filteredNextT":D
    .local v3, "filteredNextT":D
    .restart local v16    # "hNew":D
    :cond_15
    move-wide/from16 v26, v3

    .end local v3    # "filteredNextT":D
    .restart local v26    # "filteredNextT":D
    goto :goto_13

    .line 305
    .end local v5    # "filteredNextIsLast":Z
    .end local v9    # "nextIsLast":Z
    .end local v13    # "nextT":D
    .end local v15    # "yTmp":[D
    .end local v20    # "yDotTmp":[D
    .end local v22    # "stages":I
    .end local v24    # "factor":D
    .end local v26    # "filteredNextT":D
    .local v3, "yDotTmp":[D
    .local v7, "stages":I
    .restart local v8    # "yTmp":[D
    :cond_16
    move-object/from16 v20, v3

    move/from16 v22, v7

    move-object v15, v8

    .line 331
    .end local v3    # "yDotTmp":[D
    .end local v7    # "stages":I
    .end local v8    # "yTmp":[D
    .end local v10    # "error":D
    .restart local v15    # "yTmp":[D
    .restart local v20    # "yDotTmp":[D
    .restart local v22    # "stages":I
    :goto_13
    iget-boolean v3, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->isLastStep:Z

    if-eqz v3, :cond_17

    .line 334
    iget-wide v3, v0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->stepStart:D

    move-object/from16 v10, p1

    invoke-virtual {v10, v3, v4}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setTime(D)V

    .line 335
    invoke-virtual {v10, v2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->setCompleteState([D)V

    .line 337
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->resetInternalState()V

    .line 339
    return-void

    .line 331
    :cond_17
    move-object/from16 v10, p1

    move-object v7, v1

    move-object v8, v2

    move-object v3, v12

    move-object v9, v15

    move-object/from16 v15, v19

    move-object/from16 v14, v20

    move/from16 v11, v21

    move/from16 v13, v22

    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method public setMaxGrowth(D)V
    .locals 0
    .param p1, "maxGrowth"    # D

    .line 366
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->maxGrowth:D

    .line 367
    return-void
.end method

.method public setMinReduction(D)V
    .locals 0
    .param p1, "minReduction"    # D

    .line 352
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->minReduction:D

    .line 353
    return-void
.end method

.method public setSafety(D)V
    .locals 0
    .param p1, "safety"    # D

    .line 187
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;->safety:D

    .line 188
    return-void
.end method
