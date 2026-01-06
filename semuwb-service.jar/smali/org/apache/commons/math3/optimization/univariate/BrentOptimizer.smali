.class public Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;
.super Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;
.source "BrentOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final GOLDEN_SECTION:D

.field private static final MIN_RELATIVE_TOLERANCE:D


# instance fields
.field private final absoluteThreshold:D

.field private final relativeThreshold:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 49
    const-wide/high16 v0, 0x4014000000000000L    # 5.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v0

    sput-wide v2, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    .line 53
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    sput-wide v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .param p1, "rel"    # D
    .param p3, "abs"    # D

    .line 111
    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .end local p1    # "rel":D
    .end local p3    # "abs":D
    .local v1, "rel":D
    .local v3, "abs":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;-><init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 112
    return-void
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 4
    .param p1, "rel"    # D
    .param p3, "abs"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 82
    .local p5, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;>;"
    invoke-direct {p0, p5}, Lorg/apache/commons/math3/optimization/univariate/BaseAbstractUnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 84
    sget-wide v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_1

    .line 87
    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-lez v0, :cond_0

    .line 91
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->relativeThreshold:D

    .line 92
    iput-wide p3, p0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->absoluteThreshold:D

    .line 93
    return-void

    .line 88
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v0

    .line 85
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    sget-wide v2, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->MIN_RELATIVE_TOLERANCE:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method private best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 4
    .param p1, "a"    # Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .param p2, "b"    # Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .param p3, "isMinim"    # Z

    .line 303
    if-nez p1, :cond_0

    .line 304
    return-object p2

    .line 306
    :cond_0
    if-nez p2, :cond_1

    .line 307
    return-object p1

    .line 310
    :cond_1
    if-eqz p3, :cond_3

    .line 311
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2

    move-object v0, p1

    goto :goto_0

    :cond_2
    move-object v0, p2

    :goto_0
    return-object v0

    .line 313
    :cond_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

    move-result-wide v0

    invoke-virtual {p2}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;->getValue()D

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
.method protected doOptimize()Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .locals 63

    .line 117
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 118
    .local v1, "isMinim":Z
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getMin()D

    move-result-wide v5

    .line 119
    .local v5, "lo":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getStartValue()D

    move-result-wide v7

    .line 120
    .local v7, "mid":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getMax()D

    move-result-wide v9

    .line 123
    .local v9, "hi":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v2

    .line 128
    .local v2, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;>;"
    cmpg-double v11, v5, v9

    if-gez v11, :cond_1

    .line 129
    move-wide v11, v5

    .line 130
    .local v11, "a":D
    move-wide v13, v9

    .local v13, "b":D
    goto :goto_1

    .line 132
    .end local v11    # "a":D
    .end local v13    # "b":D
    :cond_1
    move-wide v11, v9

    .line 133
    .restart local v11    # "a":D
    move-wide v13, v5

    .line 136
    .restart local v13    # "b":D
    :goto_1
    move-wide v15, v7

    .line 137
    .local v15, "x":D
    move-wide/from16 v17, v15

    .line 138
    .local v17, "v":D
    move-wide/from16 v19, v15

    .line 139
    .local v19, "w":D
    const-wide/16 v21, 0x0

    .line 140
    .local v21, "d":D
    const-wide/16 v23, 0x0

    .line 141
    .local v23, "e":D
    move-wide v3, v15

    move-wide v15, v5

    .end local v5    # "lo":D
    .local v3, "x":D
    .local v15, "lo":D
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 142
    .local v5, "fx":D
    if-nez v1, :cond_2

    .line 143
    neg-double v5, v5

    .line 145
    :cond_2
    move-wide/from16 v25, v5

    .line 146
    .local v25, "fv":D
    move-wide/from16 v27, v5

    .line 148
    .local v27, "fw":D
    const/16 v29, 0x0

    .line 149
    .local v29, "previous":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    move-wide/from16 v30, v7

    .end local v7    # "mid":D
    .local v30, "mid":D
    new-instance v7, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-wide/from16 v32, v9

    if-eqz v1, :cond_3

    move-wide v8, v5

    goto :goto_2

    .end local v9    # "hi":D
    .local v32, "hi":D
    :cond_3
    neg-double v8, v5

    :goto_2
    invoke-direct {v7, v3, v4, v8, v9}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;-><init>(DD)V

    .line 152
    .local v7, "current":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    move-object v8, v7

    .line 154
    .local v8, "best":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    const/4 v9, 0x0

    move-wide/from16 v61, v17

    move-wide/from16 v17, v5

    move-wide/from16 v5, v61

    move-wide/from16 v61, v19

    move-wide/from16 v19, v11

    move-wide/from16 v10, v61

    move-object/from16 v12, v29

    .line 156
    .end local v11    # "a":D
    .end local v29    # "previous":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .local v5, "v":D
    .local v9, "iter":I
    .local v10, "w":D
    .local v12, "previous":Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;
    .local v17, "fx":D
    .local v19, "a":D
    :goto_3
    add-double v34, v19, v13

    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    mul-double v34, v34, v36

    .line 157
    .local v34, "m":D
    move-wide/from16 v38, v13

    .end local v13    # "b":D
    .local v38, "b":D
    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->relativeThreshold:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v40

    mul-double v13, v13, v40

    move-wide/from16 v40, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->absoluteThreshold:D

    add-double v13, v40, v13

    .line 158
    .local v13, "tol1":D
    const-wide/high16 v40, 0x4000000000000000L    # 2.0

    mul-double v42, v13, v40

    .line 161
    .local v42, "tol2":D
    sub-double v44, v3, v34

    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v44

    sub-double v46, v38, v19

    mul-double v46, v46, v36

    sub-double v46, v42, v46

    cmpg-double v29, v44, v46

    if-gtz v29, :cond_4

    const/16 v29, 0x1

    goto :goto_4

    :cond_4
    const/16 v29, 0x0

    .line 162
    .local v29, "stop":Z
    :goto_4
    if-nez v29, :cond_1a

    .line 163
    const-wide/16 v44, 0x0

    .line 164
    .local v44, "p":D
    const-wide/16 v46, 0x0

    .line 165
    .local v46, "q":D
    const-wide/16 v48, 0x0

    .line 166
    .local v48, "r":D
    const-wide/16 v50, 0x0

    .line 168
    .local v50, "u":D
    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v52

    cmpl-double v52, v52, v13

    const-wide/16 v53, 0x0

    if-lez v52, :cond_b

    .line 169
    sub-double v55, v3, v10

    sub-double v57, v17, v25

    mul-double v55, v55, v57

    .line 170
    .end local v48    # "r":D
    .local v55, "r":D
    sub-double v48, v3, v5

    sub-double v57, v17, v27

    mul-double v48, v48, v57

    .line 171
    .end local v46    # "q":D
    .local v48, "q":D
    sub-double v46, v3, v5

    mul-double v46, v46, v48

    sub-double v57, v3, v10

    mul-double v57, v57, v55

    move-wide/from16 v59, v5

    .end local v5    # "v":D
    .local v59, "v":D
    sub-double v5, v46, v57

    .line 172
    .end local v44    # "p":D
    .local v5, "p":D
    sub-double v44, v48, v55

    move-wide/from16 v57, v3

    .end local v3    # "x":D
    .local v57, "x":D
    mul-double v3, v44, v40

    .line 174
    .end local v48    # "q":D
    .local v3, "q":D
    cmpl-double v40, v3, v53

    if-lez v40, :cond_5

    .line 175
    neg-double v5, v5

    move-wide/from16 v46, v3

    move-wide/from16 v44, v5

    goto :goto_5

    .line 177
    :cond_5
    neg-double v3, v3

    move-wide/from16 v46, v3

    move-wide/from16 v44, v5

    .line 180
    .end local v3    # "q":D
    .end local v5    # "p":D
    .restart local v44    # "p":D
    .restart local v46    # "q":D
    :goto_5
    move-wide/from16 v48, v23

    .line 181
    .end local v55    # "r":D
    .local v48, "r":D
    move-wide/from16 v3, v21

    .line 183
    .end local v23    # "e":D
    .local v3, "e":D
    sub-double v5, v19, v57

    mul-double v5, v5, v46

    cmpl-double v5, v44, v5

    if-lez v5, :cond_9

    sub-double v5, v38, v57

    mul-double v5, v5, v46

    cmpg-double v5, v44, v5

    if-gez v5, :cond_9

    invoke-static/range {v44 .. v45}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    mul-double v36, v36, v46

    mul-double v36, v36, v48

    invoke-static/range {v36 .. v37}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v23

    cmpg-double v5, v5, v23

    if-gez v5, :cond_9

    .line 187
    div-double v5, v44, v46

    .line 188
    .end local v21    # "d":D
    .local v5, "d":D
    add-double v50, v57, v5

    .line 191
    sub-double v21, v50, v19

    cmpg-double v21, v21, v42

    if-ltz v21, :cond_7

    sub-double v21, v38, v50

    cmpg-double v21, v21, v42

    if-gez v21, :cond_6

    goto :goto_6

    :cond_6
    move-wide/from16 v23, v3

    move-wide/from16 v21, v5

    goto :goto_9

    .line 192
    :cond_7
    :goto_6
    cmpg-double v21, v57, v34

    if-gtz v21, :cond_8

    .line 193
    move-wide v5, v13

    move-wide/from16 v23, v3

    move-wide/from16 v21, v5

    goto :goto_9

    .line 195
    :cond_8
    neg-double v5, v13

    move-wide/from16 v23, v3

    move-wide/from16 v21, v5

    goto :goto_9

    .line 200
    .end local v5    # "d":D
    .restart local v21    # "d":D
    :cond_9
    cmpg-double v5, v57, v34

    if-gez v5, :cond_a

    .line 201
    sub-double v3, v38, v57

    goto :goto_7

    .line 203
    :cond_a
    sub-double v3, v19, v57

    .line 205
    :goto_7
    sget-wide v5, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double/2addr v5, v3

    move-wide/from16 v23, v3

    move-wide/from16 v21, v5

    .end local v21    # "d":D
    .restart local v5    # "d":D
    goto :goto_9

    .line 209
    .end local v57    # "x":D
    .end local v59    # "v":D
    .local v3, "x":D
    .local v5, "v":D
    .restart local v21    # "d":D
    .restart local v23    # "e":D
    :cond_b
    move-wide/from16 v57, v3

    move-wide/from16 v59, v5

    .end local v3    # "x":D
    .end local v5    # "v":D
    .restart local v57    # "x":D
    .restart local v59    # "v":D
    cmpg-double v3, v57, v34

    if-gez v3, :cond_c

    .line 210
    sub-double v3, v38, v57

    .end local v23    # "e":D
    .local v3, "e":D
    goto :goto_8

    .line 212
    .end local v3    # "e":D
    .restart local v23    # "e":D
    :cond_c
    sub-double v3, v19, v57

    .line 214
    .end local v23    # "e":D
    .restart local v3    # "e":D
    :goto_8
    sget-wide v5, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->GOLDEN_SECTION:D

    mul-double/2addr v5, v3

    move-wide/from16 v23, v3

    move-wide/from16 v21, v5

    .line 218
    .end local v3    # "e":D
    .restart local v23    # "e":D
    :goto_9
    invoke-static/range {v21 .. v22}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, v13

    if-gez v3, :cond_e

    .line 219
    cmpl-double v3, v21, v53

    if-ltz v3, :cond_d

    .line 220
    add-double v3, v57, v13

    .end local v50    # "u":D
    .local v3, "u":D
    goto :goto_a

    .line 222
    .end local v3    # "u":D
    .restart local v50    # "u":D
    :cond_d
    sub-double v3, v57, v13

    .end local v50    # "u":D
    .restart local v3    # "u":D
    goto :goto_a

    .line 225
    .end local v3    # "u":D
    .restart local v50    # "u":D
    :cond_e
    add-double v3, v57, v21

    .line 228
    .end local v50    # "u":D
    .restart local v3    # "u":D
    :goto_a
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 229
    .local v5, "fu":D
    if-nez v1, :cond_f

    .line 230
    neg-double v5, v5

    .line 234
    :cond_f
    move-object v12, v7

    .line 235
    move-wide/from16 v36, v13

    .end local v13    # "tol1":D
    .local v36, "tol1":D
    new-instance v13, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-wide/from16 v40, v15

    if-eqz v1, :cond_10

    move-wide v14, v5

    goto :goto_b

    .end local v15    # "lo":D
    .local v40, "lo":D
    :cond_10
    neg-double v14, v5

    :goto_b
    invoke-direct {v13, v3, v4, v14, v15}, Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;-><init>(DD)V

    move-object v7, v13

    .line 236
    invoke-direct {v0, v12, v7, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v13

    invoke-direct {v0, v8, v13, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v8

    .line 242
    if-eqz v2, :cond_11

    invoke-interface {v2, v9, v12, v7}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 243
    return-object v8

    .line 247
    :cond_11
    cmpg-double v13, v5, v17

    if-gtz v13, :cond_13

    .line 248
    cmpg-double v13, v3, v57

    if-gez v13, :cond_12

    .line 249
    move-wide/from16 v13, v57

    .end local v38    # "b":D
    .local v13, "b":D
    goto :goto_c

    .line 251
    .end local v13    # "b":D
    .restart local v38    # "b":D
    :cond_12
    move-wide/from16 v13, v57

    move-wide/from16 v19, v13

    move-wide/from16 v13, v38

    .line 253
    .end local v38    # "b":D
    .restart local v13    # "b":D
    :goto_c
    move-wide v15, v10

    .line 254
    .end local v59    # "v":D
    .local v15, "v":D
    move-wide/from16 v25, v27

    .line 255
    move-wide/from16 v10, v57

    .line 256
    move-wide/from16 v27, v17

    .line 257
    move-wide/from16 v38, v3

    .line 258
    .end local v57    # "x":D
    .local v38, "x":D
    move-wide/from16 v17, v5

    move-wide v5, v15

    move-object v15, v2

    goto/16 :goto_10

    .line 260
    .end local v13    # "b":D
    .end local v15    # "v":D
    .local v38, "b":D
    .restart local v57    # "x":D
    .restart local v59    # "v":D
    :cond_13
    cmpg-double v13, v3, v57

    if-gez v13, :cond_14

    .line 261
    move-wide v13, v3

    move-wide/from16 v19, v13

    move-wide/from16 v13, v38

    .end local v19    # "a":D
    .local v13, "a":D
    goto :goto_d

    .line 263
    .end local v13    # "a":D
    .restart local v19    # "a":D
    :cond_14
    move-wide v13, v3

    .line 265
    .end local v38    # "b":D
    .local v13, "b":D
    :goto_d
    cmpg-double v15, v5, v27

    if-lez v15, :cond_19

    move-object v15, v2

    move-wide/from16 v50, v3

    move-wide/from16 v2, v57

    .end local v3    # "u":D
    .end local v57    # "x":D
    .local v2, "x":D
    .local v15, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;>;"
    .restart local v50    # "u":D
    invoke-static {v10, v11, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v4

    if-eqz v4, :cond_15

    move-wide/from16 v52, v5

    move-wide/from16 v4, v59

    goto :goto_f

    .line 271
    :cond_15
    cmpg-double v4, v5, v25

    if-lez v4, :cond_17

    move-wide/from16 v52, v5

    move-wide/from16 v4, v59

    .end local v5    # "fu":D
    .end local v59    # "v":D
    .local v4, "v":D
    .local v52, "fu":D
    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v6

    if-nez v6, :cond_18

    invoke-static {v4, v5, v10, v11}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v6

    if-eqz v6, :cond_16

    goto :goto_e

    :cond_16
    move-wide v5, v4

    move-wide v3, v2

    goto :goto_10

    .end local v4    # "v":D
    .end local v52    # "fu":D
    .restart local v5    # "fu":D
    .restart local v59    # "v":D
    :cond_17
    move-wide/from16 v52, v5

    move-wide/from16 v4, v59

    .line 274
    .end local v5    # "fu":D
    .end local v59    # "v":D
    .restart local v4    # "v":D
    .restart local v52    # "fu":D
    :cond_18
    :goto_e
    move-wide/from16 v4, v50

    .line 275
    move-wide/from16 v25, v52

    move-wide v5, v4

    move-wide v3, v2

    goto :goto_10

    .line 265
    .end local v4    # "v":D
    .end local v15    # "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;>;"
    .end local v50    # "u":D
    .end local v52    # "fu":D
    .local v2, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;>;"
    .restart local v3    # "u":D
    .restart local v5    # "fu":D
    .restart local v57    # "x":D
    .restart local v59    # "v":D
    :cond_19
    move-object v15, v2

    move-wide/from16 v50, v3

    move-wide/from16 v52, v5

    move-wide/from16 v2, v57

    move-wide/from16 v4, v59

    .line 267
    .end local v3    # "u":D
    .end local v5    # "fu":D
    .end local v57    # "x":D
    .end local v59    # "v":D
    .local v2, "x":D
    .restart local v4    # "v":D
    .restart local v15    # "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;>;"
    .restart local v50    # "u":D
    .restart local v52    # "fu":D
    :goto_f
    move-wide v4, v10

    .line 268
    move-wide/from16 v25, v27

    .line 269
    move-wide/from16 v10, v50

    .line 270
    move-wide/from16 v27, v52

    move-wide v5, v4

    move-wide v3, v2

    .line 278
    .end local v2    # "x":D
    .end local v4    # "v":D
    .end local v44    # "p":D
    .end local v46    # "q":D
    .end local v48    # "r":D
    .end local v50    # "u":D
    .end local v52    # "fu":D
    .local v3, "x":D
    .local v5, "v":D
    :goto_10
    nop

    .line 285
    nop

    .end local v29    # "stop":Z
    .end local v34    # "m":D
    .end local v36    # "tol1":D
    .end local v42    # "tol2":D
    add-int/lit8 v9, v9, 0x1

    .line 286
    move-object v2, v15

    move-wide/from16 v15, v40

    goto/16 :goto_3

    .line 279
    .end local v40    # "lo":D
    .local v2, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;>;"
    .local v13, "tol1":D
    .local v15, "lo":D
    .restart local v29    # "stop":Z
    .restart local v34    # "m":D
    .restart local v38    # "b":D
    .restart local v42    # "tol2":D
    :cond_1a
    invoke-direct {v0, v12, v7, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v6

    invoke-direct {v0, v8, v6, v1}, Lorg/apache/commons/math3/optimization/univariate/BrentOptimizer;->best(Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;Z)Lorg/apache/commons/math3/optimization/univariate/UnivariatePointValuePair;

    move-result-object v6

    return-object v6
.end method
