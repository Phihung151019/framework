.class public Lorg/apache/commons/math3/optim/univariate/BracketFinder;
.super Ljava/lang/Object;
.source "BracketFinder.java"


# static fields
.field private static final EPS_MIN:D = 1.0E-21

.field private static final GOLD:D = 1.618034


# instance fields
.field private evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

.field private fHi:D

.field private fLo:D

.field private fMid:D

.field private final growLimit:D

.field private hi:D

.field private lo:D

.field private mid:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 79
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;-><init>(DI)V

    .line 80
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 2
    .param p1, "growLimit"    # D
    .param p3, "maxEvaluations"    # I

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_1

    .line 94
    if-lez p3, :cond_0

    .line 98
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->growLimit:D

    .line 99
    invoke-static {}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->create()Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    invoke-virtual {v0, p3}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withMaximalCount(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 100
    return-void

    .line 95
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 92
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method

.method private eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D
    .locals 3
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "x"    # D

    .line 284
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->increment()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    nop

    .line 288
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    return-wide v0

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Lorg/apache/commons/math3/exception/MaxCountExceededException;
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {v0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method


# virtual methods
.method public getEvaluations()I
    .locals 1

    .line 224
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getFHi()D
    .locals 2

    .line 256
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fHi:D

    return-wide v0
.end method

.method public getFLo()D
    .locals 2

    .line 240
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fLo:D

    return-wide v0
.end method

.method public getFMid()D
    .locals 2

    .line 272
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fMid:D

    return-wide v0
.end method

.method public getHi()D
    .locals 2

    .line 248
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    return-wide v0
.end method

.method public getLo()D
    .locals 2

    .line 232
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    return-wide v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMid()D
    .locals 2

    .line 264
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->mid:D

    return-wide v0
.end method

.method public search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;DD)V
    .locals 34
    .param p1, "func"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "goal"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .param p3, "xA"    # D
    .param p5, "xB"    # D

    .line 116
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;->withStart(I)Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/IntegerSequence$Incrementor;

    .line 117
    sget-object v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-object/from16 v4, p2

    if-ne v4, v2, :cond_0

    const/4 v3, 0x1

    .line 119
    .local v3, "isMinim":Z
    :cond_0
    move-wide/from16 v5, p3

    invoke-direct {v0, v1, v5, v6}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v7

    .line 120
    .local v7, "fA":D
    move-wide/from16 v9, p5

    invoke-direct {v0, v1, v9, v10}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v11

    .line 121
    .local v11, "fB":D
    if-eqz v3, :cond_1

    cmpg-double v2, v7, v11

    if-gez v2, :cond_2

    goto :goto_0

    :cond_1
    cmpl-double v2, v7, v11

    if-lez v2, :cond_2

    .line 125
    :goto_0
    move-wide/from16 v13, p3

    .line 126
    .local v13, "tmp":D
    move-wide/from16 v5, p5

    .line 127
    .end local p3    # "xA":D
    .local v5, "xA":D
    move-wide v9, v13

    .line 129
    .end local p5    # "xB":D
    .local v9, "xB":D
    move-wide v13, v7

    .line 130
    move-wide v7, v11

    .line 131
    move-wide v11, v13

    .line 134
    .end local v13    # "tmp":D
    :cond_2
    sub-double v13, v9, v5

    const-wide v15, 0x3ff9e3779e9d0e99L    # 1.618034

    mul-double/2addr v13, v15

    add-double/2addr v13, v9

    .line 135
    .local v13, "xC":D
    invoke-direct {v0, v1, v13, v14}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v17

    .line 137
    .local v17, "fC":D
    :goto_1
    if-eqz v3, :cond_4

    cmpg-double v2, v17, v11

    if-gez v2, :cond_3

    goto :goto_2

    :cond_3
    move/from16 v29, v3

    move-wide/from16 p3, v5

    goto/16 :goto_8

    :cond_4
    cmpl-double v2, v17, v11

    if-lez v2, :cond_f

    .line 138
    :goto_2
    sub-double v19, v9, v5

    sub-double v21, v11, v17

    mul-double v19, v19, v21

    .line 139
    .local v19, "tmp1":D
    sub-double v21, v9, v13

    sub-double v23, v11, v7

    mul-double v21, v21, v23

    .line 141
    .local v21, "tmp2":D
    sub-double v23, v21, v19

    .line 142
    .local v23, "val":D
    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    const-wide v27, 0x3b92e3b40a0e9b4fL    # 1.0E-21

    cmpg-double v2, v25, v27

    if-gez v2, :cond_5

    const-wide v25, 0x3ba2e3b40a0e9b4fL    # 2.0E-21

    goto :goto_3

    :cond_5
    const-wide/high16 v25, 0x4000000000000000L    # 2.0

    mul-double v25, v25, v23

    .line 144
    .local v25, "denom":D
    :goto_3
    sub-double v27, v9, v13

    mul-double v27, v27, v21

    sub-double v29, v9, v5

    mul-double v29, v29, v19

    sub-double v27, v27, v29

    div-double v27, v27, v25

    move/from16 v29, v3

    .end local v3    # "isMinim":Z
    .local v29, "isMinim":Z
    sub-double v2, v9, v27

    .line 145
    .local v2, "w":D
    move-wide/from16 p3, v5

    .end local v5    # "xA":D
    .restart local p3    # "xA":D
    iget-wide v4, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->growLimit:D

    sub-double v27, v13, v9

    mul-double v4, v4, v27

    add-double/2addr v4, v9

    .line 148
    .local v4, "wLim":D
    sub-double v27, v2, v13

    sub-double v30, v9, v2

    mul-double v27, v27, v30

    const-wide/16 v30, 0x0

    cmpl-double v6, v27, v30

    if-lez v6, :cond_a

    .line 149
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v27

    .line 150
    .local v27, "fW":D
    if-eqz v29, :cond_6

    cmpg-double v6, v27, v17

    if-gez v6, :cond_7

    goto :goto_4

    :cond_6
    cmpl-double v6, v27, v17

    if-lez v6, :cond_7

    .line 153
    :goto_4
    move-wide v15, v9

    .line 154
    .end local p3    # "xA":D
    .local v15, "xA":D
    move-wide v9, v2

    .line 155
    move-wide v7, v11

    .line 156
    move-wide/from16 v11, v27

    .line 157
    move-wide v5, v15

    move-wide/from16 v2, v17

    goto/16 :goto_9

    .line 158
    .end local v15    # "xA":D
    .restart local p3    # "xA":D
    :cond_7
    if-eqz v29, :cond_8

    cmpl-double v6, v27, v11

    if-lez v6, :cond_9

    goto :goto_5

    :cond_8
    cmpg-double v6, v27, v11

    if-gez v6, :cond_9

    .line 161
    :goto_5
    move-wide v13, v2

    .line 162
    move-wide/from16 v17, v27

    .line 163
    move-wide/from16 v5, p3

    move-wide/from16 v2, v17

    goto/16 :goto_9

    .line 165
    :cond_9
    sub-double v30, v13, v9

    mul-double v30, v30, v15

    add-double v2, v13, v30

    .line 166
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v27

    goto :goto_7

    .line 167
    .end local v27    # "fW":D
    :cond_a
    sub-double v27, v2, v4

    sub-double v32, v4, v13

    mul-double v27, v27, v32

    cmpl-double v6, v27, v30

    if-ltz v6, :cond_b

    .line 168
    move-wide v2, v4

    .line 169
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v27

    .restart local v27    # "fW":D
    goto :goto_7

    .line 170
    .end local v27    # "fW":D
    :cond_b
    sub-double v27, v2, v4

    sub-double v32, v13, v2

    mul-double v27, v27, v32

    cmpl-double v6, v27, v30

    if-lez v6, :cond_d

    .line 171
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v27

    .line 172
    .restart local v27    # "fW":D
    if-eqz v29, :cond_c

    cmpg-double v6, v27, v17

    if-gez v6, :cond_e

    goto :goto_6

    :cond_c
    cmpl-double v6, v27, v17

    if-lez v6, :cond_e

    .line 175
    :goto_6
    move-wide v9, v13

    .line 176
    move-wide v13, v2

    .line 177
    sub-double v30, v13, v9

    mul-double v30, v30, v15

    add-double v2, v13, v30

    .line 178
    move-wide/from16 v11, v17

    .line 179
    move-wide/from16 v17, v27

    .line 180
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v27

    goto :goto_7

    .line 183
    .end local v27    # "fW":D
    :cond_d
    sub-double v27, v13, v9

    mul-double v27, v27, v15

    add-double v2, v13, v27

    .line 184
    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v27

    .line 187
    .restart local v27    # "fW":D
    :cond_e
    :goto_7
    move-wide/from16 v30, v9

    .line 188
    .end local p3    # "xA":D
    .local v30, "xA":D
    move-wide v7, v11

    .line 189
    move-wide v9, v13

    .line 190
    move-wide/from16 v11, v17

    .line 191
    move-wide v13, v2

    .line 192
    move-wide/from16 v17, v27

    .line 193
    .end local v2    # "w":D
    .end local v4    # "wLim":D
    .end local v19    # "tmp1":D
    .end local v21    # "tmp2":D
    .end local v23    # "val":D
    .end local v25    # "denom":D
    .end local v27    # "fW":D
    move-object/from16 v4, p2

    move/from16 v3, v29

    move-wide/from16 v5, v30

    goto/16 :goto_1

    .line 137
    .end local v29    # "isMinim":Z
    .end local v30    # "xA":D
    .restart local v3    # "isMinim":Z
    .restart local v5    # "xA":D
    :cond_f
    move/from16 v29, v3

    move-wide/from16 p3, v5

    .line 195
    .end local v3    # "isMinim":Z
    .end local v5    # "xA":D
    .restart local v29    # "isMinim":Z
    .restart local p3    # "xA":D
    :goto_8
    move-wide/from16 v5, p3

    move-wide/from16 v2, v17

    .end local v17    # "fC":D
    .end local p3    # "xA":D
    .local v2, "fC":D
    .restart local v5    # "xA":D
    :goto_9
    iput-wide v5, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    .line 196
    iput-wide v7, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fLo:D

    .line 197
    iput-wide v9, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->mid:D

    .line 198
    iput-wide v11, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fMid:D

    .line 199
    iput-wide v13, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    .line 200
    iput-wide v2, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fHi:D

    .line 202
    move-wide v15, v2

    .end local v2    # "fC":D
    .local v15, "fC":D
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    iget-wide v3, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    cmpl-double v1, v1, v3

    if-lez v1, :cond_10

    .line 203
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    .line 204
    .local v1, "tmp":D
    iget-wide v3, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    iput-wide v3, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->lo:D

    .line 205
    iput-wide v1, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->hi:D

    .line 207
    iget-wide v1, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fLo:D

    .line 208
    iget-wide v3, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fHi:D

    iput-wide v3, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fLo:D

    .line 209
    iput-wide v1, v0, Lorg/apache/commons/math3/optim/univariate/BracketFinder;->fHi:D

    .line 211
    .end local v1    # "tmp":D
    :cond_10
    return-void
.end method
