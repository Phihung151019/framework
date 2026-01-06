.class public Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;
.super Ljava/lang/Object;
.source "UnivariateSolverUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDD)[D
    .locals 12
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "initial"    # D
    .param p3, "lowerBound"    # D
    .param p5, "upperBound"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 204
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const v11, 0x7fffffff

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDDDDI)[D

    move-result-object v7

    return-object v7
.end method

.method public static bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDDDDI)[D
    .locals 31
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "initial"    # D
    .param p3, "lowerBound"    # D
    .param p5, "upperBound"    # D
    .param p7, "q"    # D
    .param p9, "r"    # D
    .param p11, "maximumIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 300
    move-object/from16 v0, p0

    move/from16 v7, p11

    if-eqz v0, :cond_7

    .line 303
    const-wide/16 v9, 0x0

    cmpg-double v1, p7, v9

    if-lez v1, :cond_6

    .line 306
    if-lez v7, :cond_5

    .line 309
    move-wide/from16 v3, p1

    move-wide/from16 v1, p3

    move-wide/from16 v5, p5

    invoke-static/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifySequence(DDD)V

    .line 312
    nop

    .line 313
    .local v3, "a":D
    move-wide/from16 v11, p1

    .line 314
    .local v11, "b":D
    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    .line 315
    .local v13, "fa":D
    const-wide/high16 v15, 0x7ff8000000000000L    # Double.NaN

    .line 316
    .local v15, "fb":D
    const-wide/16 v17, 0x0

    .line 318
    .local v17, "delta":D
    const/16 v19, 0x0

    move-wide/from16 v21, v3

    move-wide/from16 v23, v11

    move-wide/from16 v25, v13

    move-wide/from16 v27, v15

    move/from16 v3, v19

    .line 319
    .end local v11    # "b":D
    .end local v13    # "fa":D
    .end local v15    # "fb":D
    .local v3, "numIterations":I
    .local v21, "a":D
    .local v23, "b":D
    .local v25, "fa":D
    .local v27, "fb":D
    :goto_0
    if-ge v3, v7, :cond_4

    cmpl-double v4, v21, v1

    if-gtz v4, :cond_0

    cmpg-double v4, v23, v5

    if-gez v4, :cond_4

    .line 322
    :cond_0
    move-wide/from16 v11, v21

    .line 323
    .local v11, "previousA":D
    move-wide/from16 v13, v25

    .line 324
    .local v13, "previousFa":D
    move-wide/from16 v15, v23

    .line 325
    .local v15, "previousB":D
    move-wide/from16 v19, v27

    .line 327
    .local v19, "previousFb":D
    mul-double v29, p9, v17

    add-double v17, v29, p7

    .line 328
    move-wide/from16 v29, v9

    sub-double v9, p1, v17

    invoke-static {v9, v10, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v9

    .line 329
    .end local v21    # "a":D
    .local v9, "a":D
    move-wide/from16 v21, v9

    const/4 v4, 0x0

    .end local v9    # "a":D
    .restart local v21    # "a":D
    add-double v8, p1, v17

    invoke-static {v8, v9, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v8

    .line 330
    .end local v23    # "b":D
    .local v8, "b":D
    move v6, v4

    move-wide/from16 v4, v21

    .end local v21    # "a":D
    .local v4, "a":D
    invoke-interface {v0, v4, v5}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v25

    .line 331
    invoke-interface {v0, v8, v9}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v27

    .line 333
    const/4 v10, 0x2

    const/16 v21, 0x1

    if-nez v3, :cond_1

    .line 336
    mul-double v22, v25, v27

    cmpg-double v22, v22, v29

    if-gtz v22, :cond_3

    .line 338
    new-array v10, v10, [D

    aput-wide v4, v10, v6

    aput-wide v8, v10, v21

    return-object v10

    .line 343
    :cond_1
    mul-double v22, v25, v13

    cmpg-double v22, v22, v29

    if-gtz v22, :cond_2

    .line 345
    new-array v10, v10, [D

    aput-wide v4, v10, v6

    aput-wide v11, v10, v21

    return-object v10

    .line 346
    :cond_2
    mul-double v22, v27, v19

    cmpg-double v22, v22, v29

    if-gtz v22, :cond_3

    .line 348
    new-array v10, v10, [D

    aput-wide v15, v10, v6

    aput-wide v8, v10, v21

    return-object v10

    .line 320
    .end local v11    # "previousA":D
    .end local v13    # "previousFa":D
    .end local v15    # "previousB":D
    .end local v19    # "previousFb":D
    :cond_3
    add-int/lit8 v3, v3, 0x1

    move-wide/from16 v21, v4

    move-wide/from16 v23, v8

    move-wide/from16 v9, v29

    move-wide/from16 v5, p5

    goto :goto_0

    .line 355
    .end local v3    # "numIterations":I
    .end local v4    # "a":D
    .end local v8    # "b":D
    .restart local v21    # "a":D
    .restart local v23    # "b":D
    :cond_4
    new-instance v20, Lorg/apache/commons/math3/exception/NoBracketingException;

    invoke-direct/range {v20 .. v28}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v20

    .line 307
    .end local v17    # "delta":D
    .end local v21    # "a":D
    .end local v23    # "b":D
    .end local v25    # "fa":D
    .end local v27    # "fb":D
    :cond_5
    move-wide/from16 v1, p3

    new-instance v3, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_MAX_ITERATIONS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v3

    .line 304
    :cond_6
    move-wide/from16 v1, p3

    new-instance v3, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static/range {p7 .. p8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw v3

    .line 301
    :cond_7
    move-wide/from16 v1, p3

    const/4 v6, 0x0

    new-instance v3, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v5, v6, [Ljava/lang/Object;

    invoke-direct {v3, v4, v5}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method

.method public static bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDDI)[D
    .locals 12
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "initial"    # D
    .param p3, "lowerBound"    # D
    .param p5, "upperBound"    # D
    .param p7, "maximumIterations"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 231
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v11, p7

    invoke-static/range {v0 .. v11}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->bracket(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDDDDI)[D

    move-result-object v7

    return-object v7
.end method

.method public static forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 28
    .param p0, "maxEval"    # I
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "baseRoot"    # D
    .param p5, "min"    # D
    .param p7, "max"    # D
    .param p9, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
            "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<",
            "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
            ">;DDD",
            "Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;",
            ")D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 108
    .local p2, "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    move-object/from16 v2, p1

    move-wide/from16 v10, p5

    move-wide/from16 v12, p7

    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v9, p9

    if-ne v9, v0, :cond_0

    .line 110
    return-wide p3

    .line 114
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v0

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v3

    mul-double v3, v3, p3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    invoke-static {v0, v1, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v14

    .line 116
    .local v14, "step":D
    sub-double v0, p3, v14

    invoke-static {v10, v11, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 117
    .local v0, "xLo":D
    invoke-interface {v2, v0, v1}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v3

    .line 118
    .local v3, "fLo":D
    add-double v5, p3, v14

    invoke-static {v12, v13, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v5

    .line 119
    .local v5, "xHi":D
    invoke-interface {v2, v5, v6}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v7

    .line 120
    .local v7, "fHi":D
    add-int/lit8 v16, p0, -0x2

    move-wide/from16 v19, v0

    move-wide/from16 v23, v3

    move-wide/from16 v21, v5

    move-wide/from16 v25, v7

    move/from16 v1, v16

    .line 121
    .end local v0    # "xLo":D
    .end local v3    # "fLo":D
    .end local v5    # "xHi":D
    .end local v7    # "fHi":D
    .local v1, "remainingEval":I
    .local v19, "xLo":D
    .local v21, "xHi":D
    .local v23, "fLo":D
    .local v25, "fHi":D
    :goto_0
    if-lez v1, :cond_a

    .line 123
    const-wide/16 v3, 0x0

    cmpl-double v0, v23, v3

    if-ltz v0, :cond_1

    cmpg-double v0, v25, v3

    if-lez v0, :cond_2

    :cond_1
    cmpg-double v0, v23, v3

    if-gtz v0, :cond_3

    cmpl-double v0, v25, v3

    if-ltz v0, :cond_3

    .line 125
    :cond_2
    move-object/from16 v0, p2

    move-wide/from16 v7, p3

    move-wide/from16 v3, v19

    move-wide/from16 v5, v21

    .end local v19    # "xLo":D
    .end local v21    # "xHi":D
    .local v3, "xLo":D
    .restart local v5    # "xHi":D
    invoke-interface/range {v0 .. v9}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v16

    .end local v3    # "xLo":D
    .end local v5    # "xHi":D
    .restart local v19    # "xLo":D
    .restart local v21    # "xHi":D
    return-wide v16

    .line 129
    :cond_3
    const/4 v0, 0x0

    .line 130
    .local v0, "changeLo":Z
    const/4 v5, 0x0

    .line 131
    .local v5, "changeHi":Z
    cmpg-double v6, v23, v25

    if-gez v6, :cond_5

    .line 133
    cmpl-double v3, v23, v3

    if-ltz v3, :cond_4

    .line 134
    const/4 v0, 0x1

    goto :goto_1

    .line 136
    :cond_4
    const/4 v5, 0x1

    goto :goto_1

    .line 138
    :cond_5
    cmpl-double v6, v23, v25

    if-lez v6, :cond_7

    .line 140
    cmpg-double v3, v23, v3

    if-gtz v3, :cond_6

    .line 141
    const/4 v0, 0x1

    goto :goto_1

    .line 143
    :cond_6
    const/4 v5, 0x1

    goto :goto_1

    .line 147
    :cond_7
    const/4 v0, 0x1

    .line 148
    const/4 v5, 0x1

    .line 152
    :goto_1
    if-eqz v0, :cond_8

    .line 153
    sub-double v3, v19, v14

    invoke-static {v10, v11, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v3

    .line 154
    .end local v19    # "xLo":D
    .restart local v3    # "xLo":D
    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v6

    .line 155
    .end local v23    # "fLo":D
    .local v6, "fLo":D
    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v19, v3

    move-wide/from16 v23, v6

    .line 159
    .end local v3    # "xLo":D
    .end local v6    # "fLo":D
    .restart local v19    # "xLo":D
    .restart local v23    # "fLo":D
    :cond_8
    if-eqz v5, :cond_9

    .line 160
    add-double v3, v21, v14

    invoke-static {v12, v13, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(DD)D

    move-result-wide v3

    .line 161
    .end local v21    # "xHi":D
    .local v3, "xHi":D
    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v6

    .line 162
    .end local v25    # "fHi":D
    .local v6, "fHi":D
    add-int/lit8 v1, v1, -0x1

    move-wide/from16 v21, v3

    move-wide/from16 v25, v6

    .line 165
    .end local v0    # "changeLo":Z
    .end local v3    # "xHi":D
    .end local v5    # "changeHi":Z
    .end local v6    # "fHi":D
    .restart local v21    # "xHi":D
    .restart local v25    # "fHi":D
    :cond_9
    move-object/from16 v9, p9

    goto :goto_0

    .line 167
    :cond_a
    new-instance v17, Lorg/apache/commons/math3/exception/NoBracketingException;

    sget-object v18, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FAILED_BRACKETING:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    sub-int v0, p0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static/range {p3 .. p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    filled-new-array {v0, v3, v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v27

    invoke-direct/range {v17 .. v27}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;DDDD[Ljava/lang/Object;)V

    throw v17
.end method

.method public static isBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Z
    .locals 8
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 386
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 389
    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v1

    .line 390
    .local v1, "fLo":D
    invoke-interface {p0, p3, p4}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v3

    .line 391
    .local v3, "fHi":D
    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-ltz v7, :cond_0

    cmpg-double v7, v3, v5

    if-lez v7, :cond_1

    :cond_0
    cmpg-double v7, v1, v5

    if-gtz v7, :cond_2

    cmpl-double v5, v3, v5

    if-ltz v5, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0

    .line 387
    .end local v1    # "fLo":D
    .end local v3    # "fHi":D
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public static isSequence(DDD)Z
    .locals 1
    .param p0, "start"    # D
    .param p2, "mid"    # D
    .param p4, "end"    # D

    .line 405
    cmpg-double v0, p0, p2

    if-gez v0, :cond_0

    cmpg-double v0, p2, p4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static midpoint(DD)D
    .locals 4
    .param p0, "a"    # D
    .param p2, "b"    # D

    .line 367
    add-double v0, p0, p2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public static solve(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 8
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 52
    if-eqz p0, :cond_0

    .line 55
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>()V

    move-object v1, v0

    .line 56
    .local v1, "solver":Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    const v2, 0x7fffffff

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p0    # "function":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local p1    # "x0":D
    .end local p3    # "x1":D
    .local v3, "function":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .local v4, "x0":D
    .local v6, "x1":D
    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide p0

    return-wide p0

    .line 53
    .end local v1    # "solver":Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    .end local v3    # "function":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local v4    # "x0":D
    .end local v6    # "x1":D
    .restart local p0    # "function":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .restart local p1    # "x0":D
    .restart local p3    # "x1":D
    :cond_0
    move-object v3, p0

    move-wide v4, p1

    .end local p0    # "function":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local p1    # "x0":D
    .restart local v3    # "function":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .restart local v4    # "x0":D
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static solve(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D
    .locals 8
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "x0"    # D
    .param p3, "x1"    # D
    .param p5, "absoluteAccuracy"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 77
    if-eqz p0, :cond_0

    .line 80
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;

    invoke-direct {v0, p5, p6}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>(D)V

    move-object v1, v0

    .line 81
    .local v1, "solver":Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    const v2, 0x7fffffff

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    .end local p0    # "function":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local p1    # "x0":D
    .end local p3    # "x1":D
    .local v3, "function":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .local v4, "x0":D
    .local v6, "x1":D
    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide p0

    return-wide p0

    .line 78
    .end local v1    # "solver":Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    .end local v3    # "function":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local v4    # "x0":D
    .end local v6    # "x1":D
    .restart local p0    # "function":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .restart local p1    # "x0":D
    .restart local p3    # "x1":D
    :cond_0
    move-object v3, p0

    move-wide v4, p1

    .end local p0    # "function":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local p1    # "x0":D
    .restart local v3    # "function":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .restart local v4    # "x0":D
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static verifyBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)V
    .locals 10
    .param p0, "function"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p1, "lower"    # D
    .param p3, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 457
    if-eqz p0, :cond_1

    .line 460
    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    .line 461
    invoke-static {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->isBracketing(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    return-void

    .line 462
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NoBracketingException;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v6

    invoke-interface {p0, p3, p4}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v8

    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "lower":D
    .end local p3    # "upper":D
    .local v2, "lower":D
    .local v4, "upper":D
    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v1

    .line 458
    .end local v2    # "lower":D
    .end local v4    # "upper":D
    .restart local p1    # "lower":D
    .restart local p3    # "upper":D
    :cond_1
    move-wide v2, p1

    move-wide v4, p3

    .end local p1    # "lower":D
    .end local p3    # "upper":D
    .restart local v2    # "lower":D
    .restart local v4    # "upper":D
    new-instance p1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FUNCTION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p3, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-direct {p1, p2, p3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p1
.end method

.method public static verifyInterval(DD)V
    .locals 5
    .param p0, "lower"    # D
    .param p2, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 418
    cmpl-double v0, p0, p2

    if-gez v0, :cond_0

    .line 422
    return-void

    .line 419
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ENDPOINTS_NOT_AN_INTERVAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public static verifySequence(DDD)V
    .locals 0
    .param p0, "lower"    # D
    .param p2, "initial"    # D
    .param p4, "upper"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 437
    invoke-static {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    .line 438
    invoke-static {p2, p3, p4, p5}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->verifyInterval(DD)V

    .line 439
    return-void
.end method
