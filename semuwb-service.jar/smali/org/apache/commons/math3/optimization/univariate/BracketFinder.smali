.class public Lorg/apache/commons/math3/optimization/univariate/BracketFinder;
.super Ljava/lang/Object;
.source "BracketFinder.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final EPS_MIN:D = 1.0E-21

.field private static final GOLD:D = 1.618034


# instance fields
.field private final evaluations:Lorg/apache/commons/math3/util/Incrementor;

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

    .line 81
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    const/16 v2, 0x32

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;-><init>(DI)V

    .line 82
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 2
    .param p1, "growLimit"    # D
    .param p3, "maxEvaluations"    # I

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 93
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_1

    .line 96
    if-lez p3, :cond_0

    .line 100
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->growLimit:D

    .line 101
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0, p3}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 102
    return-void

    .line 97
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 94
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

    .line 283
    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    nop

    .line 287
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    return-wide v0

    .line 284
    :catch_0
    move-exception v0

    .line 285
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

    .line 223
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v0

    return v0
.end method

.method public getFHi()D
    .locals 2

    .line 255
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fHi:D

    return-wide v0
.end method

.method public getFLo()D
    .locals 2

    .line 239
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fLo:D

    return-wide v0
.end method

.method public getFMid()D
    .locals 2

    .line 271
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fMid:D

    return-wide v0
.end method

.method public getHi()D
    .locals 2

    .line 247
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->hi:D

    return-wide v0
.end method

.method public getLo()D
    .locals 2

    .line 231
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->lo:D

    return-wide v0
.end method

.method public getMaxEvaluations()I
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result v0

    return v0
.end method

.method public getMid()D
    .locals 2

    .line 263
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->mid:D

    return-wide v0
.end method

.method public search(Lorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;DD)V
    .locals 33
    .param p1, "func"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "goal"    # Lorg/apache/commons/math3/optimization/GoalType;
    .param p3, "xA"    # D
    .param p5, "xB"    # D

    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v2}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 116
    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    move-object/from16 v3, p2

    if-ne v3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 118
    .local v2, "isMinim":Z
    :goto_0
    move-wide/from16 v4, p3

    invoke-direct {v0, v1, v4, v5}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v6

    .line 119
    .local v6, "fA":D
    move-wide/from16 v8, p5

    invoke-direct {v0, v1, v8, v9}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v10

    .line 120
    .local v10, "fB":D
    if-eqz v2, :cond_1

    cmpg-double v12, v6, v10

    if-gez v12, :cond_2

    goto :goto_1

    :cond_1
    cmpl-double v12, v6, v10

    if-lez v12, :cond_2

    .line 124
    :goto_1
    move-wide/from16 v12, p3

    .line 125
    .local v12, "tmp":D
    move-wide/from16 v4, p5

    .line 126
    .end local p3    # "xA":D
    .local v4, "xA":D
    move-wide v8, v12

    .line 128
    .end local p5    # "xB":D
    .local v8, "xB":D
    move-wide v12, v6

    .line 129
    move-wide v6, v10

    .line 130
    move-wide v10, v12

    .line 133
    .end local v12    # "tmp":D
    :cond_2
    sub-double v12, v8, v4

    const-wide v14, 0x3ff9e3779e9d0e99L    # 1.618034

    mul-double/2addr v12, v14

    add-double/2addr v12, v8

    .line 134
    .local v12, "xC":D
    invoke-direct {v0, v1, v12, v13}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v16

    .line 136
    .local v16, "fC":D
    :goto_2
    if-eqz v2, :cond_4

    cmpg-double v18, v16, v10

    if-gez v18, :cond_3

    goto :goto_3

    :cond_3
    move/from16 v26, v2

    goto/16 :goto_9

    :cond_4
    cmpl-double v18, v16, v10

    if-lez v18, :cond_f

    .line 137
    :goto_3
    sub-double v18, v8, v4

    sub-double v20, v10, v16

    mul-double v18, v18, v20

    .line 138
    .local v18, "tmp1":D
    sub-double v20, v8, v12

    sub-double v22, v10, v6

    mul-double v20, v20, v22

    .line 140
    .local v20, "tmp2":D
    sub-double v22, v20, v18

    .line 141
    .local v22, "val":D
    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    const-wide v26, 0x3b92e3b40a0e9b4fL    # 1.0E-21

    cmpg-double v24, v24, v26

    if-gez v24, :cond_5

    const-wide v24, 0x3ba2e3b40a0e9b4fL    # 2.0E-21

    goto :goto_4

    :cond_5
    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    mul-double v24, v24, v22

    .line 143
    .local v24, "denom":D
    :goto_4
    sub-double v26, v8, v12

    mul-double v26, v26, v20

    sub-double v28, v8, v4

    mul-double v28, v28, v18

    sub-double v26, v26, v28

    div-double v26, v26, v24

    move-wide/from16 p3, v14

    sub-double v14, v8, v26

    .line 144
    .local v14, "w":D
    move/from16 v26, v2

    .end local v2    # "isMinim":Z
    .local v26, "isMinim":Z
    iget-wide v2, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->growLimit:D

    sub-double v27, v12, v8

    mul-double v2, v2, v27

    add-double/2addr v2, v8

    .line 147
    .local v2, "wLim":D
    sub-double v27, v14, v12

    sub-double v29, v8, v14

    mul-double v27, v27, v29

    const-wide/16 v29, 0x0

    cmpl-double v27, v27, v29

    if-lez v27, :cond_a

    .line 148
    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v27

    .line 149
    .local v27, "fW":D
    if-eqz v26, :cond_6

    cmpg-double v29, v27, v16

    if-gez v29, :cond_7

    goto :goto_5

    :cond_6
    cmpl-double v29, v27, v16

    if-lez v29, :cond_7

    .line 152
    :goto_5
    move-wide v4, v8

    .line 153
    move-wide v8, v14

    .line 154
    move-wide v6, v10

    .line 155
    move-wide/from16 v10, v27

    .line 156
    move-wide/from16 v2, v16

    goto/16 :goto_a

    .line 157
    :cond_7
    if-eqz v26, :cond_8

    cmpl-double v29, v27, v10

    if-lez v29, :cond_9

    goto :goto_6

    :cond_8
    cmpg-double v29, v27, v10

    if-gez v29, :cond_9

    .line 160
    :goto_6
    move-wide v12, v14

    .line 161
    move-wide/from16 v16, v27

    .line 162
    move-wide/from16 v2, v16

    goto/16 :goto_a

    .line 164
    :cond_9
    sub-double v29, v12, v8

    mul-double v29, v29, p3

    add-double v14, v12, v29

    .line 165
    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v27

    goto :goto_8

    .line 166
    .end local v27    # "fW":D
    :cond_a
    sub-double v27, v14, v2

    sub-double v31, v2, v12

    mul-double v27, v27, v31

    cmpl-double v27, v27, v29

    if-ltz v27, :cond_b

    .line 167
    move-wide v14, v2

    .line 168
    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v27

    .restart local v27    # "fW":D
    goto :goto_8

    .line 169
    .end local v27    # "fW":D
    :cond_b
    sub-double v27, v14, v2

    sub-double v31, v12, v14

    mul-double v27, v27, v31

    cmpl-double v27, v27, v29

    if-lez v27, :cond_d

    .line 170
    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v27

    .line 171
    .restart local v27    # "fW":D
    if-eqz v26, :cond_c

    cmpg-double v29, v27, v16

    if-gez v29, :cond_e

    goto :goto_7

    :cond_c
    cmpl-double v29, v27, v16

    if-lez v29, :cond_e

    .line 174
    :goto_7
    move-wide v8, v12

    .line 175
    move-wide v12, v14

    .line 176
    sub-double v29, v12, v8

    mul-double v29, v29, p3

    add-double v14, v12, v29

    .line 177
    move-wide/from16 v10, v16

    .line 178
    move-wide/from16 v16, v27

    .line 179
    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v27

    goto :goto_8

    .line 182
    .end local v27    # "fW":D
    :cond_d
    sub-double v27, v12, v8

    mul-double v27, v27, p3

    add-double v14, v12, v27

    .line 183
    invoke-direct {v0, v1, v14, v15}, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->eval(Lorg/apache/commons/math3/analysis/UnivariateFunction;D)D

    move-result-wide v27

    .line 186
    .restart local v27    # "fW":D
    :cond_e
    :goto_8
    move-wide v4, v8

    .line 187
    move-wide v6, v10

    .line 188
    move-wide v8, v12

    .line 189
    move-wide/from16 v10, v16

    .line 190
    move-wide v12, v14

    .line 191
    move-wide/from16 v16, v27

    .line 192
    .end local v2    # "wLim":D
    .end local v14    # "w":D
    .end local v18    # "tmp1":D
    .end local v20    # "tmp2":D
    .end local v22    # "val":D
    .end local v24    # "denom":D
    .end local v27    # "fW":D
    move-object/from16 v3, p2

    move-wide/from16 v14, p3

    move/from16 v2, v26

    goto/16 :goto_2

    .line 136
    .end local v26    # "isMinim":Z
    .local v2, "isMinim":Z
    :cond_f
    move/from16 v26, v2

    .line 194
    .end local v2    # "isMinim":Z
    .restart local v26    # "isMinim":Z
    :goto_9
    move-wide/from16 v2, v16

    .end local v16    # "fC":D
    .local v2, "fC":D
    :goto_a
    iput-wide v4, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->lo:D

    .line 195
    iput-wide v6, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fLo:D

    .line 196
    iput-wide v8, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->mid:D

    .line 197
    iput-wide v10, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fMid:D

    .line 198
    iput-wide v12, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->hi:D

    .line 199
    iput-wide v2, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fHi:D

    .line 201
    iget-wide v14, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->lo:D

    move-wide/from16 v16, v2

    .end local v2    # "fC":D
    .restart local v16    # "fC":D
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->hi:D

    cmpl-double v1, v14, v1

    if-lez v1, :cond_10

    .line 202
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->lo:D

    .line 203
    .local v1, "tmp":D
    iget-wide v14, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->hi:D

    iput-wide v14, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->lo:D

    .line 204
    iput-wide v1, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->hi:D

    .line 206
    iget-wide v1, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fLo:D

    .line 207
    iget-wide v14, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fHi:D

    iput-wide v14, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fLo:D

    .line 208
    iput-wide v1, v0, Lorg/apache/commons/math3/optimization/univariate/BracketFinder;->fHi:D

    .line 210
    .end local v1    # "tmp":D
    :cond_10
    return-void
.end method
