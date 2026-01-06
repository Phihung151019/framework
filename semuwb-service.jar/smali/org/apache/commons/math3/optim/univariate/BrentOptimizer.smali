.class public Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;
.super Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
.source "BrentOptimizer.java"


# static fields
.field private static final GOLDEN_SECTION:D

.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 47
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    sput-wide v2, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    .line 51
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "rel"    # D
    .param p3, "abs"    # D

    .line 109
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "rel":D
    .end local p3    # "abs":D
    .local v1, "rel":D
    .local v3, "abs":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 110
    return-void
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 4
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p5, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    invoke-direct {p0, p5}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 82
    sget-wide v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 85
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-lez v0, :cond_0

    .line 89
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->relativeThreshold:D

    .line 90
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->absoluteThreshold:D

    .line 91
    return-void

    .line 86
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-wide v2, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method private best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 4
    .param p1, "a"    # Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .param p2, "b"    # Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .param p3, "isMinim"    # Z

    .line 301
    if-nez p1, :cond_0

    .line 302
    return-object p2

    .line 304
    :cond_0
    if-nez p2, :cond_1

    .line 305
    return-object p1

    .line 308
    :cond_1
    if-eqz p3, :cond_3

    .line 309
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    move-object v0, p1

    goto :goto_0

    :cond_2
    move-object v0, p2

    :goto_0
    return-object v0

    .line 311
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_4

    move-object v0, p1

    goto :goto_1

    :cond_4
    move-object v0, p2

    :goto_1
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 60

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 116
    .local v1, "isMinim":Z
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getMin()D

    move-result-wide v5

    .line 117
    .local v5, "lo":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getStartValue()D

    move-result-wide v7

    .line 118
    .local v7, "mid":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getMax()D

    move-result-wide v9

    .line 121
    .local v9, "hi":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v2

    .line 126
    .local v2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    cmpg-double v11, v5, v9

    if-gez v11, :cond_1

    .line 127
    move-wide v11, v5

    .line 128
    .local v11, "a":D
    move-wide v13, v9

    .local v13, "b":D
    goto :goto_1

    .line 130
    .end local v11    # "a":D
    .end local v13    # "b":D
    :cond_1
    move-wide v11, v9

    .line 131
    .restart local v11    # "a":D
    move-wide v13, v5

    .line 134
    .restart local v13    # "b":D
    :goto_1
    move-wide v15, v7

    .line 135
    .local v15, "x":D
    move-wide/from16 v17, v15

    .line 136
    .local v17, "v":D
    move-wide/from16 v19, v15

    .line 137
    .local v19, "w":D
    const-wide/16 v21, 0x0

    .line 138
    .local v21, "d":D
    const-wide/16 v23, 0x0

    .line 139
    .local v23, "e":D
    move-wide v3, v15

    move-wide v15, v5

    .end local v5    # "lo":D
    .local v3, "x":D
    .local v15, "lo":D
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 140
    .local v5, "fx":D
    if-nez v1, :cond_2

    .line 141
    neg-double v5, v5

    .line 143
    :cond_2
    move-wide/from16 v25, v5

    .line 144
    .local v25, "fv":D
    move-wide/from16 v27, v5

    .line 146
    .local v27, "fw":D
    const/16 v29, 0x0

    .line 147
    .local v29, "previous":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    move-wide/from16 v30, v7

    .end local v7    # "mid":D
    .local v30, "mid":D
    new-instance v7, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-wide/from16 v32, v9

    if-eqz v1, :cond_3

    move-wide v8, v5

    goto :goto_2

    .end local v9    # "hi":D
    .local v32, "hi":D
    :cond_3
    neg-double v8, v5

    :goto_2
    invoke-direct {v7, v3, v4, v8, v9}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;-><init>(DD)V

    .line 150
    .local v7, "current":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    move-object v8, v7

    move-wide/from16 v9, v17

    move-wide/from16 v17, v5

    move-wide/from16 v5, v19

    move-wide/from16 v19, v11

    move-object/from16 v11, v29

    .line 153
    .end local v29    # "previous":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .local v5, "w":D
    .local v8, "best":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .local v9, "v":D
    .local v11, "previous":Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .local v17, "fx":D
    .local v19, "a":D
    :goto_3
    add-double v34, v19, v13

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    mul-double v34, v34, v36

    .line 154
    .local v34, "m":D
    move-wide/from16 v38, v13

    .end local v13    # "b":D
    .local v38, "b":D
    iget-wide v12, v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->relativeThreshold:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v40

    mul-double v12, v12, v40

    move-wide/from16 v40, v12

    iget-wide v12, v0, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->absoluteThreshold:D

    add-double v12, v40, v12

    .line 155
    .local v12, "tol1":D
    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    mul-double v42, v12, v40

    .line 158
    .local v42, "tol2":D
    sub-double v44, v3, v34

    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v44

    sub-double v46, v38, v19

    mul-double v46, v46, v36

    sub-double v46, v42, v46

    cmpg-double v14, v44, v46

    if-gtz v14, :cond_4

    const/4 v14, 0x1

    goto :goto_4

    :cond_4
    const/4 v14, 0x0

    .line 159
    .local v14, "stop":Z
    :goto_4
    if-nez v14, :cond_1a

    .line 160
    const-wide/16 v44, 0x0

    .line 161
    .local v44, "p":D
    const-wide/16 v46, 0x0

    .line 162
    .local v46, "q":D
    const-wide/16 v48, 0x0

    .line 163
    .local v48, "r":D
    const-wide/16 v50, 0x0

    .line 165
    .local v50, "u":D
    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v52

    cmpl-double v29, v52, v12

    const-wide/16 v52, 0x0

    if-lez v29, :cond_b

    .line 166
    sub-double v54, v3, v5

    sub-double v56, v17, v25

    mul-double v54, v54, v56

    .line 167
    .end local v48    # "r":D
    .local v54, "r":D
    sub-double v48, v3, v9

    sub-double v56, v17, v27

    mul-double v48, v48, v56

    .line 168
    .end local v46    # "q":D
    .local v48, "q":D
    sub-double v46, v3, v9

    mul-double v46, v46, v48

    sub-double v56, v3, v5

    mul-double v56, v56, v54

    move-wide/from16 v58, v15

    move/from16 v16, v14

    .end local v14    # "stop":Z
    .end local v15    # "lo":D
    .local v16, "stop":Z
    .local v58, "lo":D
    sub-double v14, v46, v56

    .line 169
    .end local v44    # "p":D
    .local v14, "p":D
    sub-double v44, v48, v54

    move-wide/from16 v56, v9

    .end local v9    # "v":D
    .local v56, "v":D
    mul-double v9, v44, v40

    .line 171
    .end local v48    # "q":D
    .local v9, "q":D
    cmpl-double v29, v9, v52

    if-lez v29, :cond_5

    .line 172
    neg-double v14, v14

    move-wide/from16 v46, v9

    move-wide/from16 v44, v14

    goto :goto_5

    .line 174
    :cond_5
    neg-double v9, v9

    move-wide/from16 v46, v9

    move-wide/from16 v44, v14

    .line 177
    .end local v9    # "q":D
    .end local v14    # "p":D
    .restart local v44    # "p":D
    .restart local v46    # "q":D
    :goto_5
    move-wide/from16 v48, v23

    .line 178
    .end local v54    # "r":D
    .local v48, "r":D
    move-wide/from16 v9, v21

    .line 180
    .end local v23    # "e":D
    .local v9, "e":D
    sub-double v14, v19, v3

    mul-double v14, v14, v46

    cmpl-double v14, v44, v14

    if-lez v14, :cond_9

    sub-double v14, v38, v3

    mul-double v14, v14, v46

    cmpg-double v14, v44, v14

    if-gez v14, :cond_9

    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    mul-double v36, v36, v46

    mul-double v36, v36, v48

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v23

    cmpg-double v14, v14, v23

    if-gez v14, :cond_9

    .line 184
    div-double v14, v44, v46

    .line 185
    .end local v21    # "d":D
    .local v14, "d":D
    add-double v50, v3, v14

    .line 188
    sub-double v21, v50, v19

    cmpg-double v21, v21, v42

    if-ltz v21, :cond_7

    sub-double v21, v38, v50

    cmpg-double v21, v21, v42

    if-gez v21, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v23, v9

    move-wide/from16 v21, v14

    goto :goto_9

    .line 189
    :cond_7
    :goto_6
    cmpg-double v21, v3, v34

    if-gtz v21, :cond_8

    .line 190
    move-wide v14, v12

    move-wide/from16 v23, v9

    move-wide/from16 v21, v14

    goto :goto_9

    .line 192
    :cond_8
    neg-double v14, v12

    move-wide/from16 v23, v9

    move-wide/from16 v21, v14

    goto :goto_9

    .line 197
    .end local v14    # "d":D
    .restart local v21    # "d":D
    :cond_9
    cmpg-double v14, v3, v34

    if-gez v14, :cond_a

    .line 198
    sub-double v9, v38, v3

    goto :goto_7

    .line 200
    :cond_a
    sub-double v9, v19, v3

    .line 202
    :goto_7
    sget-wide v14, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double/2addr v14, v9

    move-wide/from16 v23, v9

    move-wide/from16 v21, v14

    .end local v21    # "d":D
    .restart local v14    # "d":D
    goto :goto_9

    .line 206
    .end local v16    # "stop":Z
    .end local v56    # "v":D
    .end local v58    # "lo":D
    .local v9, "v":D
    .local v14, "stop":Z
    .restart local v15    # "lo":D
    .restart local v21    # "d":D
    .restart local v23    # "e":D
    :cond_b
    move-wide/from16 v56, v9

    move-wide/from16 v58, v15

    move/from16 v16, v14

    .end local v9    # "v":D
    .end local v14    # "stop":Z
    .end local v15    # "lo":D
    .restart local v16    # "stop":Z
    .restart local v56    # "v":D
    .restart local v58    # "lo":D
    cmpg-double v9, v3, v34

    if-gez v9, :cond_c

    .line 207
    sub-double v9, v38, v3

    .end local v23    # "e":D
    .local v9, "e":D
    goto :goto_8

    .line 209
    .end local v9    # "e":D
    .restart local v23    # "e":D
    :cond_c
    sub-double v9, v19, v3

    .line 211
    .end local v23    # "e":D
    .restart local v9    # "e":D
    :goto_8
    sget-wide v14, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double/2addr v14, v9

    move-wide/from16 v23, v9

    move-wide/from16 v21, v14

    .line 215
    .end local v9    # "e":D
    .restart local v23    # "e":D
    :goto_9
    invoke-static/range {v21 .. v22}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    cmpg-double v9, v9, v12

    if-gez v9, :cond_e

    .line 216
    cmpl-double v9, v21, v52

    if-ltz v9, :cond_d

    .line 217
    add-double v9, v3, v12

    .end local v50    # "u":D
    .local v9, "u":D
    goto :goto_a

    .line 219
    .end local v9    # "u":D
    .restart local v50    # "u":D
    :cond_d
    sub-double v9, v3, v12

    .end local v50    # "u":D
    .restart local v9    # "u":D
    goto :goto_a

    .line 222
    .end local v9    # "u":D
    .restart local v50    # "u":D
    :cond_e
    add-double v9, v3, v21

    .line 225
    .end local v50    # "u":D
    .restart local v9    # "u":D
    :goto_a
    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v14

    .line 226
    .local v14, "fu":D
    if-nez v1, :cond_f

    .line 227
    neg-double v14, v14

    .line 231
    :cond_f
    move-object v11, v7

    .line 232
    move-wide/from16 v36, v12

    .end local v12    # "tol1":D
    .local v36, "tol1":D
    new-instance v12, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-wide/from16 v40, v3

    if-eqz v1, :cond_10

    move-wide v3, v14

    goto :goto_b

    .end local v3    # "x":D
    .local v40, "x":D
    :cond_10
    neg-double v3, v14

    :goto_b
    invoke-direct {v12, v9, v10, v3, v4}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;-><init>(DD)V

    move-object v7, v12

    .line 233
    invoke-direct {v0, v11, v7, v1}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v3

    invoke-direct {v0, v8, v3, v1}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v8

    .line 239
    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->getIterations()I

    move-result v3

    invoke-interface {v2, v3, v11, v7}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 240
    return-object v8

    .line 244
    :cond_11
    cmpg-double v3, v14, v17

    if-gtz v3, :cond_13

    .line 245
    cmpg-double v3, v9, v40

    if-gez v3, :cond_12

    .line 246
    move-wide/from16 v3, v40

    move-wide/from16 v38, v3

    move-wide/from16 v3, v19

    .end local v38    # "b":D
    .local v3, "b":D
    goto :goto_c

    .line 248
    .end local v3    # "b":D
    .restart local v38    # "b":D
    :cond_12
    move-wide/from16 v3, v40

    .line 250
    .end local v19    # "a":D
    .local v3, "a":D
    :goto_c
    move-wide v12, v5

    .line 251
    .end local v56    # "v":D
    .local v12, "v":D
    move-wide/from16 v19, v27

    .line 252
    .end local v25    # "fv":D
    .local v19, "fv":D
    move-wide/from16 v5, v40

    .line 253
    move-wide/from16 v25, v17

    .line 254
    .end local v27    # "fw":D
    .local v25, "fw":D
    move-wide/from16 v27, v9

    .line 255
    .end local v40    # "x":D
    .local v27, "x":D
    move-wide/from16 v17, v14

    move-wide/from16 v9, v19

    move-wide/from16 v19, v3

    move-wide/from16 v3, v27

    move-wide/from16 v27, v25

    move-wide/from16 v25, v9

    move-object/from16 v29, v2

    move-wide v9, v12

    move-wide/from16 v13, v38

    goto/16 :goto_10

    .line 257
    .end local v3    # "a":D
    .end local v12    # "v":D
    .local v19, "a":D
    .local v25, "fv":D
    .local v27, "fw":D
    .restart local v40    # "x":D
    .restart local v56    # "v":D
    :cond_13
    cmpg-double v3, v9, v40

    if-gez v3, :cond_14

    .line 258
    move-wide v3, v9

    move-wide/from16 v19, v3

    move-wide/from16 v3, v38

    .end local v19    # "a":D
    .restart local v3    # "a":D
    goto :goto_d

    .line 260
    .end local v3    # "a":D
    .restart local v19    # "a":D
    :cond_14
    move-wide v3, v9

    .line 262
    .end local v38    # "b":D
    .local v3, "b":D
    :goto_d
    cmpg-double v12, v14, v27

    if-lez v12, :cond_19

    move-wide/from16 v12, v40

    .end local v40    # "x":D
    .local v12, "x":D
    invoke-static {v5, v6, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v29

    if-eqz v29, :cond_15

    move-object/from16 v29, v2

    move-wide/from16 v38, v3

    move-wide/from16 v2, v56

    goto :goto_f

    .line 268
    :cond_15
    cmpg-double v29, v14, v25

    if-lez v29, :cond_17

    move-object/from16 v29, v2

    move-wide/from16 v38, v3

    move-wide/from16 v2, v56

    .end local v3    # "b":D
    .end local v56    # "v":D
    .local v2, "v":D
    .local v29, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    .restart local v38    # "b":D
    invoke-static {v2, v3, v12, v13}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v4

    if-nez v4, :cond_18

    invoke-static {v2, v3, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v4

    if-eqz v4, :cond_16

    goto :goto_e

    :cond_16
    move-wide v9, v2

    move-wide v3, v12

    move-wide/from16 v13, v38

    goto :goto_10

    .end local v29    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    .end local v38    # "b":D
    .local v2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    .restart local v3    # "b":D
    .restart local v56    # "v":D
    :cond_17
    move-object/from16 v29, v2

    move-wide/from16 v38, v3

    move-wide/from16 v2, v56

    .line 271
    .end local v3    # "b":D
    .end local v56    # "v":D
    .local v2, "v":D
    .restart local v29    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    .restart local v38    # "b":D
    :cond_18
    :goto_e
    move-wide v2, v9

    .line 272
    move-wide/from16 v25, v14

    move-wide v3, v12

    move-wide/from16 v13, v38

    goto :goto_10

    .line 262
    .end local v12    # "x":D
    .end local v29    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    .end local v38    # "b":D
    .local v2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    .restart local v3    # "b":D
    .restart local v40    # "x":D
    .restart local v56    # "v":D
    :cond_19
    move-object/from16 v29, v2

    move-wide/from16 v38, v3

    move-wide/from16 v12, v40

    move-wide/from16 v2, v56

    .line 264
    .end local v3    # "b":D
    .end local v40    # "x":D
    .end local v56    # "v":D
    .local v2, "v":D
    .restart local v12    # "x":D
    .restart local v29    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    .restart local v38    # "b":D
    :goto_f
    move-wide v2, v5

    .line 265
    move-wide/from16 v25, v27

    .line 266
    move-wide v4, v9

    .line 267
    .end local v5    # "w":D
    .local v4, "w":D
    move-wide/from16 v27, v14

    move-wide v9, v2

    move-wide v5, v4

    move-wide v3, v12

    move-wide/from16 v13, v38

    .line 275
    .end local v2    # "v":D
    .end local v4    # "w":D
    .end local v12    # "x":D
    .end local v14    # "fu":D
    .end local v38    # "b":D
    .end local v44    # "p":D
    .end local v46    # "q":D
    .end local v48    # "r":D
    .local v3, "x":D
    .restart local v5    # "w":D
    .local v9, "v":D
    .restart local v13    # "b":D
    :goto_10
    nop

    .line 283
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->incrementIterationCount()V

    .line 284
    .end local v16    # "stop":Z
    .end local v34    # "m":D
    .end local v36    # "tol1":D
    .end local v42    # "tol2":D
    move-object/from16 v2, v29

    move-wide/from16 v15, v58

    goto/16 :goto_3

    .line 276
    .end local v13    # "b":D
    .end local v29    # "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    .end local v58    # "lo":D
    .local v2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;>;"
    .local v12, "tol1":D
    .local v14, "stop":Z
    .restart local v15    # "lo":D
    .restart local v34    # "m":D
    .restart local v38    # "b":D
    .restart local v42    # "tol2":D
    :cond_1a
    invoke-direct {v0, v11, v7, v1}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v4

    invoke-direct {v0, v8, v4, v1}, Lorg/apache/commons/math3/optim/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v4

    return-object v4
.end method
