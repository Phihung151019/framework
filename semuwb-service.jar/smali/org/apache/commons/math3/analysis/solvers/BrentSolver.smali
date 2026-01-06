.class public Lorg/apache/commons/math3/analysis/solvers/BrentSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "BrentSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 54
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>(D)V

    .line 55
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "absoluteAccuracy"    # D

    .line 62
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 63
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 73
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D

    .line 86
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    .line 87
    return-void
.end method

.method private brent(DDDD)D
    .locals 43
    .param p1, "lo"    # D
    .param p3, "hi"    # D
    .param p5, "fLo"    # D
    .param p7, "fHi"    # D

    .line 153
    move-wide/from16 v0, p1

    .line 154
    .local v0, "a":D
    move-wide/from16 v2, p5

    .line 155
    .local v2, "fa":D
    move-wide/from16 v4, p3

    .line 156
    .local v4, "b":D
    move-wide/from16 v6, p7

    .line 157
    .local v6, "fb":D
    move-wide v8, v0

    .line 158
    .local v8, "c":D
    move-wide v10, v2

    .line 159
    .local v10, "fc":D
    sub-double v12, v4, v0

    .line 160
    .local v12, "d":D
    move-wide v14, v12

    .line 162
    .local v14, "e":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getAbsoluteAccuracy()D

    move-result-wide v16

    .line 163
    .local v16, "t":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getRelativeAccuracy()D

    move-result-wide v18

    .line 166
    .local v18, "eps":D
    :goto_0
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    cmpg-double v20, v20, v22

    if-gez v20, :cond_0

    .line 167
    move-wide v0, v4

    .line 168
    move-wide v4, v8

    .line 169
    move-wide v8, v0

    .line 170
    move-wide v2, v6

    .line 171
    move-wide v6, v10

    .line 172
    move-wide v10, v2

    .line 175
    :cond_0
    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    mul-double v22, v18, v20

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    add-double v22, v22, v16

    .line 176
    .local v22, "tol":D
    sub-double v24, v8, v4

    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    mul-double v24, v24, v26

    .line 178
    .local v24, "m":D
    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v28

    cmpg-double v28, v28, v22

    if-lez v28, :cond_d

    move-wide/from16 v28, v0

    .end local v0    # "a":D
    .local v28, "a":D
    const-wide/16 v0, 0x0

    invoke-static {v6, v7, v0, v1}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v30

    if-eqz v30, :cond_1

    move-object/from16 v0, p0

    move-wide/from16 v20, v2

    goto/16 :goto_7

    .line 182
    :cond_1
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    cmpg-double v30, v30, v22

    if-ltz v30, :cond_7

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v32

    cmpg-double v30, v30, v32

    if-gtz v30, :cond_2

    move-wide/from16 v35, v0

    move-wide/from16 v20, v2

    goto/16 :goto_4

    .line 188
    :cond_2
    div-double v30, v6, v2

    .line 194
    .local v30, "s":D
    cmpl-double v32, v28, v8

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    if-nez v32, :cond_3

    .line 196
    mul-double v20, v20, v24

    mul-double v20, v20, v30

    .line 197
    .local v20, "p":D
    sub-double v33, v33, v30

    move-wide/from16 v35, v0

    move-wide/from16 v0, v20

    move-wide/from16 v20, v2

    move-wide/from16 v2, v33

    .local v33, "q":D
    goto :goto_1

    .line 200
    .end local v20    # "p":D
    .end local v33    # "q":D
    :cond_3
    div-double v35, v2, v10

    .line 201
    .local v35, "q":D
    div-double v37, v6, v10

    .line 202
    .local v37, "r":D
    mul-double v20, v20, v24

    mul-double v20, v20, v35

    sub-double v39, v35, v37

    mul-double v20, v20, v39

    sub-double v39, v4, v28

    sub-double v41, v37, v33

    mul-double v39, v39, v41

    sub-double v20, v20, v39

    mul-double v20, v20, v30

    .line 203
    .restart local v20    # "p":D
    sub-double v39, v35, v33

    sub-double v41, v37, v33

    mul-double v39, v39, v41

    sub-double v32, v30, v33

    mul-double v33, v39, v32

    move-wide/from16 v35, v0

    move-wide/from16 v0, v20

    move-wide/from16 v20, v2

    move-wide/from16 v2, v33

    .line 205
    .end local v35    # "q":D
    .end local v37    # "r":D
    .local v0, "p":D
    .local v2, "q":D
    .local v20, "fa":D
    :goto_1
    cmpl-double v32, v0, v35

    if-lez v32, :cond_4

    .line 206
    neg-double v2, v2

    goto :goto_2

    .line 208
    :cond_4
    neg-double v0, v0

    .line 210
    :goto_2
    move-wide/from16 v30, v14

    .line 211
    move-wide v14, v12

    .line 212
    const-wide/high16 v32, 0x3ff8000000000000L    # 1.5

    mul-double v32, v32, v24

    mul-double v32, v32, v2

    mul-double v37, v22, v2

    invoke-static/range {v37 .. v38}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v37

    sub-double v32, v32, v37

    cmpl-double v32, v0, v32

    if-gez v32, :cond_6

    mul-double v26, v26, v30

    mul-double v26, v26, v2

    invoke-static/range {v26 .. v27}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    cmpl-double v26, v0, v26

    if-ltz v26, :cond_5

    goto :goto_3

    .line 220
    :cond_5
    div-double v12, v0, v2

    goto :goto_5

    .line 217
    :cond_6
    :goto_3
    move-wide/from16 v12, v24

    .line 218
    move-wide v14, v12

    goto :goto_5

    .line 182
    .end local v0    # "p":D
    .end local v20    # "fa":D
    .end local v30    # "s":D
    .local v2, "fa":D
    :cond_7
    move-wide/from16 v35, v0

    move-wide/from16 v20, v2

    .line 185
    .end local v2    # "fa":D
    .restart local v20    # "fa":D
    :goto_4
    move-wide/from16 v12, v24

    .line 186
    move-wide v14, v12

    .line 223
    :goto_5
    move-wide v0, v4

    .line 224
    .end local v28    # "a":D
    .local v0, "a":D
    move-wide v2, v6

    .line 226
    .end local v20    # "fa":D
    .restart local v2    # "fa":D
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    cmpl-double v20, v20, v22

    if-lez v20, :cond_8

    .line 227
    add-double/2addr v4, v12

    goto :goto_6

    .line 228
    :cond_8
    cmpl-double v20, v24, v35

    if-lez v20, :cond_9

    .line 229
    add-double v4, v4, v22

    goto :goto_6

    .line 231
    :cond_9
    sub-double v4, v4, v22

    .line 233
    :goto_6
    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    .end local v0    # "a":D
    .local v26, "a":D
    invoke-virtual {v0, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->computeObjectiveValue(D)D

    move-result-wide v6

    .line 234
    cmpl-double v1, v6, v35

    if-lez v1, :cond_a

    cmpl-double v1, v10, v35

    if-gtz v1, :cond_b

    :cond_a
    cmpg-double v1, v6, v35

    if-gtz v1, :cond_c

    cmpg-double v1, v10, v35

    if-gtz v1, :cond_c

    .line 236
    :cond_b
    move-wide/from16 v8, v26

    .line 237
    move-wide v10, v2

    .line 238
    sub-double v12, v4, v26

    .line 239
    move-wide v14, v12

    .line 241
    .end local v22    # "tol":D
    .end local v24    # "m":D
    :cond_c
    move-wide/from16 v0, v26

    goto/16 :goto_0

    .line 178
    .end local v26    # "a":D
    .restart local v0    # "a":D
    .restart local v22    # "tol":D
    .restart local v24    # "m":D
    :cond_d
    move-wide/from16 v28, v0

    move-wide/from16 v20, v2

    move-object/from16 v0, p0

    .line 180
    .end local v0    # "a":D
    .end local v2    # "fa":D
    .restart local v20    # "fa":D
    .restart local v28    # "a":D
    :goto_7
    return-wide v4
.end method


# virtual methods
.method protected doSolve()D
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoBracketingException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 97
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getMin()D

    move-result-wide v1

    .line 98
    .local v1, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getMax()D

    move-result-wide v3

    .line 99
    .local v3, "max":D
    move-wide v5, v3

    .end local v3    # "max":D
    .local v5, "max":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getStartValue()D

    move-result-wide v3

    .line 100
    .local v3, "initial":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->getFunctionValueAccuracy()D

    move-result-wide v9

    .line 102
    .local v9, "functionValueAccuracy":D
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->verifySequence(DDD)V

    .line 105
    move-wide v11, v5

    .end local v5    # "max":D
    .local v11, "max":D
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 106
    .local v5, "yInitial":D
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v9

    if-gtz v7, :cond_0

    .line 107
    return-wide v3

    .line 111
    :cond_0
    move-wide v7, v5

    .end local v5    # "yInitial":D
    .local v7, "yInitial":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 112
    .local v5, "yMin":D
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    cmpg-double v13, v13, v9

    if-gtz v13, :cond_1

    .line 113
    return-wide v1

    .line 117
    :cond_1
    mul-double v13, v7, v5

    const-wide/16 v15, 0x0

    cmpg-double v13, v13, v15

    if-gez v13, :cond_2

    .line 118
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->brent(DDDD)D

    move-result-wide v13

    move-wide/from16 v17, v1

    move-wide/from16 v19, v5

    .end local v1    # "min":D
    .end local v5    # "yMin":D
    .local v17, "min":D
    .local v19, "yMin":D
    return-wide v13

    .line 122
    .end local v17    # "min":D
    .end local v19    # "yMin":D
    .restart local v1    # "min":D
    .restart local v5    # "yMin":D
    :cond_2
    move-wide/from16 v17, v1

    move-wide/from16 v19, v5

    .end local v1    # "min":D
    .end local v5    # "yMin":D
    .restart local v17    # "min":D
    .restart local v19    # "yMin":D
    move-wide v5, v7

    .end local v7    # "yInitial":D
    .local v5, "yInitial":D
    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    .line 123
    .local v7, "yMax":D
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    cmpg-double v1, v1, v9

    if-gtz v1, :cond_3

    .line 124
    return-wide v11

    .line 128
    :cond_3
    mul-double v1, v5, v7

    cmpg-double v1, v1, v15

    if-gez v1, :cond_4

    .line 129
    move-wide v1, v3

    move-wide v3, v11

    .end local v11    # "max":D
    .local v1, "initial":D
    .local v3, "max":D
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;->brent(DDDD)D

    move-result-wide v11

    move-wide v13, v1

    move-wide v15, v5

    .end local v1    # "initial":D
    .end local v5    # "yInitial":D
    .local v13, "initial":D
    .local v15, "yInitial":D
    return-wide v11

    .line 132
    .end local v13    # "initial":D
    .end local v15    # "yInitial":D
    .local v3, "initial":D
    .restart local v5    # "yInitial":D
    .restart local v11    # "max":D
    :cond_4
    move-wide v13, v3

    move-wide v15, v5

    move-wide v3, v11

    .end local v5    # "yInitial":D
    .end local v11    # "max":D
    .local v3, "max":D
    .restart local v13    # "initial":D
    .restart local v15    # "yInitial":D
    new-instance v0, Lorg/apache/commons/math3/exception/NoBracketingException;

    move-wide/from16 v1, v17

    move-wide/from16 v5, v19

    .end local v17    # "min":D
    .end local v19    # "yMin":D
    .local v1, "min":D
    .local v5, "yMin":D
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v0
.end method
