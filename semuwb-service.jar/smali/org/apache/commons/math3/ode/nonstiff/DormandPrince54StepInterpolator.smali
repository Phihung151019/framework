.class Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;
.source "DormandPrince54StepInterpolator.java"


# static fields
.field private static final A70:D = 0.09114583333333333

.field private static final A72:D = 0.44923629829290207

.field private static final A73:D = 0.6510416666666666

.field private static final A74:D = -0.322376179245283

.field private static final A75:D = 0.13095238095238096

.field private static final D0:D = -1.1270175653862835

.field private static final D2:D = 2.675424484351598

.field private static final D3:D = -5.685526961588504

.field private static final D4:D = 3.5219323679207912

.field private static final D5:D = -1.7672812570757455

.field private static final D6:D = 2.382468931778144

.field private static final serialVersionUID:J = 0x132df10L


# instance fields
.field private v1:[D

.field private v2:[D

.field private v3:[D

.field private v4:[D

.field private vectorsInitialized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 105
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 106
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 107
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    .line 109
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;)V
    .locals 1
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;

    .line 119
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;)V

    .line 121
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    if-nez v0, :cond_0

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 124
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 125
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 126
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 132
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 133
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 134
    iget-object v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    .line 135
    iget-boolean v0, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    .line 139
    :goto_0
    return-void
.end method


# virtual methods
.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 25
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .line 174
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    if-nez v1, :cond_2

    .line 176
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    if-nez v1, :cond_0

    .line 177
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v1, v1

    new-array v1, v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 178
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v1, v1

    new-array v1, v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 179
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v1, v1

    new-array v1, v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 180
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v1, v1

    new-array v1, v1, [D

    iput-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    .line 186
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 187
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->yDotK:[[D

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-wide v2, v2, v1

    .line 188
    .local v2, "yDot0":D
    iget-object v4, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->yDotK:[[D

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget-wide v4, v4, v1

    .line 189
    .local v4, "yDot2":D
    iget-object v6, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->yDotK:[[D

    const/4 v7, 0x3

    aget-object v6, v6, v7

    aget-wide v6, v6, v1

    .line 190
    .local v6, "yDot3":D
    iget-object v8, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->yDotK:[[D

    const/4 v9, 0x4

    aget-object v8, v8, v9

    aget-wide v8, v8, v1

    .line 191
    .local v8, "yDot4":D
    iget-object v10, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->yDotK:[[D

    const/4 v11, 0x5

    aget-object v10, v10, v11

    aget-wide v10, v10, v1

    .line 192
    .local v10, "yDot5":D
    iget-object v12, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->yDotK:[[D

    const/4 v13, 0x6

    aget-object v12, v12, v13

    aget-wide v12, v12, v1

    .line 193
    .local v12, "yDot6":D
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    const-wide v15, 0x3fb7555555555555L    # 0.09114583333333333

    mul-double/2addr v15, v2

    const-wide v17, 0x3fdcc0499a5605fbL    # 0.44923629829290207

    mul-double v17, v17, v4

    add-double v15, v15, v17

    const-wide v17, 0x3fe4d55555555555L    # 0.6510416666666666

    mul-double v17, v17, v6

    add-double v15, v15, v17

    const-wide v17, -0x402b5e304d4873edL    # -0.322376179245283

    mul-double v17, v17, v8

    add-double v15, v15, v17

    const-wide v17, 0x3fc0c30c30c30c31L    # 0.13095238095238096

    mul-double v17, v17, v10

    add-double v15, v15, v17

    aput-wide v15, v14, v1

    .line 194
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    aget-wide v15, v15, v1

    sub-double v15, v2, v15

    aput-wide v15, v14, v1

    .line 195
    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    aget-wide v15, v15, v1

    move/from16 v17, v1

    .end local v1    # "i":I
    .local v17, "i":I
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    aget-wide v18, v1, v17

    sub-double v15, v15, v18

    sub-double/2addr v15, v12

    aput-wide v15, v14, v17

    .line 196
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    const-wide v14, -0x400df7bc6dea5fbaL    # -1.1270175653862835

    mul-double/2addr v14, v2

    const-wide v18, 0x40056744f3b9a987L    # 2.675424484351598

    mul-double v18, v18, v4

    add-double v14, v14, v18

    const-wide v18, -0x3fe94205385dcdf4L    # -5.685526961588504

    mul-double v18, v18, v6

    add-double v14, v14, v18

    const-wide v18, 0x400c2ceae0978c92L    # 3.5219323679207912

    mul-double v18, v18, v8

    add-double v14, v14, v18

    const-wide v18, -0x4003b93749e06a1bL    # -1.7672812570757455

    mul-double v18, v18, v10

    add-double v14, v14, v18

    const-wide v18, 0x40030f4bdf0dc914L    # 2.382468931778144

    mul-double v18, v18, v12

    add-double v14, v14, v18

    aput-wide v14, v1, v17

    .line 186
    .end local v2    # "yDot0":D
    .end local v4    # "yDot2":D
    .end local v6    # "yDot3":D
    .end local v8    # "yDot4":D
    .end local v10    # "yDot5":D
    .end local v12    # "yDot6":D
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "i":I
    .restart local v1    # "i":I
    goto/16 :goto_0

    :cond_1
    move/from16 v17, v1

    .line 199
    .end local v1    # "i":I
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    .line 204
    :cond_2
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    sub-double v3, v1, p1

    .line 205
    .local v3, "eta":D
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double v7, p1, v5

    .line 206
    .local v7, "twoTheta":D
    sub-double v9, v1, v7

    .line 207
    .local v9, "dot2":D
    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    mul-double v13, p1, v11

    sub-double/2addr v5, v13

    mul-double v5, v5, p1

    .line 208
    .local v5, "dot3":D
    sub-double v11, v7, v11

    mul-double v11, v11, p1

    add-double/2addr v11, v1

    mul-double/2addr v11, v7

    .line 209
    .local v11, "dot4":D
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->previousState:[D

    if-eqz v1, :cond_4

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, p1, v1

    if-gtz v1, :cond_4

    .line 210
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 211
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->previousState:[D

    aget-wide v13, v13, v1

    move v15, v1

    move-object/from16 v16, v2

    .end local v1    # "i":I
    .local v15, "i":I
    iget-wide v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->h:D

    mul-double v1, v1, p1

    move-wide/from16 v17, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    aget-wide v1, v1, v15

    move-wide/from16 v19, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    aget-wide v1, v1, v15

    move-wide/from16 v21, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    aget-wide v1, v1, v15

    move-wide/from16 v23, v1

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    aget-wide v1, v1, v15

    mul-double/2addr v1, v3

    add-double v1, v23, v1

    mul-double v1, v1, p1

    add-double v1, v21, v1

    mul-double/2addr v1, v3

    add-double v1, v19, v1

    mul-double v1, v1, v17

    add-double/2addr v13, v1

    aput-wide v13, v16, v15

    .line 213
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedDerivatives:[D

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    aget-wide v13, v2, v15

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    aget-wide v16, v2, v15

    mul-double v16, v16, v9

    add-double v13, v13, v16

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    aget-wide v16, v2, v15

    mul-double v16, v16, v5

    add-double v13, v13, v16

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    aget-wide v16, v2, v15

    mul-double v16, v16, v11

    add-double v13, v13, v16

    aput-wide v13, v1, v15

    .line 210
    add-int/lit8 v1, v15, 0x1

    .end local v15    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    :cond_3
    move v15, v1

    .end local v1    # "i":I
    goto :goto_3

    .line 216
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 217
    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedState:[D

    iget-object v13, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->currentState:[D

    aget-wide v13, v13, v1

    iget-object v15, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    aget-wide v15, v15, v1

    move/from16 v17, v1

    .end local v1    # "i":I
    .restart local v17    # "i":I
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    aget-wide v18, v1, v17

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    aget-wide v20, v1, v17

    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    aget-wide v22, v1, v17

    mul-double v22, v22, v3

    add-double v20, v20, v22

    mul-double v20, v20, p1

    add-double v18, v18, v20

    mul-double v18, v18, p1

    sub-double v15, v15, v18

    mul-double v15, v15, p3

    sub-double/2addr v13, v15

    aput-wide v13, v2, v17

    .line 219
    iget-object v1, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->interpolatedDerivatives:[D

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    aget-wide v13, v2, v17

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    aget-wide v15, v2, v17

    mul-double/2addr v15, v9

    add-double/2addr v13, v15

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    aget-wide v15, v2, v17

    mul-double/2addr v15, v5

    add-double/2addr v13, v15

    iget-object v2, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    aget-wide v15, v2, v17

    mul-double/2addr v15, v11

    add-double/2addr v13, v15

    aput-wide v13, v1, v17

    .line 216
    add-int/lit8 v1, v17, 0x1

    .end local v17    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    :cond_5
    move/from16 v17, v1

    .line 223
    .end local v1    # "i":I
    :goto_3
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .line 144
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;)V

    return-object v0
.end method

.method public reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 2
    .param p1, "integrator"    # Lorg/apache/commons/math3/ode/AbstractIntegrator;
    .param p2, "y"    # [D
    .param p3, "yDotK"    # [[D
    .param p4, "forward"    # Z
    .param p5, "primaryMapper"    # Lorg/apache/commons/math3/ode/EquationsMapper;
    .param p6, "secondaryMappers"    # [Lorg/apache/commons/math3/ode/EquationsMapper;

    .line 154
    invoke-super/range {p0 .. p6}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->reinitialize(Lorg/apache/commons/math3/ode/AbstractIntegrator;[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 155
    move-object v0, p6

    move-object p6, p5

    move p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    move-object p1, p0

    .end local p1    # "integrator":Lorg/apache/commons/math3/ode/AbstractIntegrator;
    .local v0, "secondaryMappers":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .local p2, "integrator":Lorg/apache/commons/math3/ode/AbstractIntegrator;
    .local p3, "y":[D
    .local p4, "yDotK":[[D
    .local p5, "forward":Z
    .local p6, "primaryMapper":Lorg/apache/commons/math3/ode/EquationsMapper;
    const/4 v1, 0x0

    iput-object v1, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v1:[D

    .line 156
    iput-object v1, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v2:[D

    .line 157
    iput-object v1, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v3:[D

    .line 158
    iput-object v1, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->v4:[D

    .line 159
    const/4 v1, 0x0

    iput-boolean v1, p1, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    .line 160
    return-void
.end method

.method public storeTime(D)V
    .locals 1
    .param p1, "t"    # D

    .line 165
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;->storeTime(D)V

    .line 166
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;->vectorsInitialized:Z

    .line 167
    return-void
.end method
