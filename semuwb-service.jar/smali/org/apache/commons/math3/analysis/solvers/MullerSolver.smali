.class public Lorg/apache/commons/math3/analysis/solvers/MullerSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "MullerSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;-><init>(D)V

    .line 59
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "absoluteAccuracy"    # D

    .line 66
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 67
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .line 76
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 77
    return-void
.end method

.method private solve(DDDD)D
    .locals 53
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "fMin"    # D
    .param p7, "fMax"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 132
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getRelativeAccuracy()D

    move-result-wide v7

    .line 133
    .local v7, "relativeAccuracy":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getAbsoluteAccuracy()D

    move-result-wide v9

    .line 134
    .local v9, "absoluteAccuracy":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getFunctionValueAccuracy()D

    move-result-wide v11

    .line 141
    .local v11, "functionValueAccuracy":D
    move-wide/from16 v1, p1

    .line 142
    .local v1, "x0":D
    move-wide/from16 v3, p5

    .line 143
    .local v3, "y0":D
    move-wide/from16 v5, p3

    .line 144
    .local v5, "x2":D
    move-wide/from16 v13, p7

    .line 145
    .local v13, "y2":D
    add-double v15, v1, v5

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v19, v1

    .end local v1    # "x0":D
    .local v19, "x0":D
    mul-double v1, v15, v17

    .line 146
    .local v1, "x1":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v15

    .line 148
    .local v15, "y1":D
    const-wide/high16 v21, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v23, v13

    move-wide v13, v1

    move-wide/from16 v1, v19

    move-wide/from16 v19, v23

    move-wide/from16 v23, v21

    move-wide/from16 v21, v15

    move-wide v15, v3

    .line 154
    .end local v3    # "y0":D
    .local v1, "x0":D
    .local v13, "x1":D
    .local v15, "y0":D
    .local v19, "y2":D
    .local v21, "y1":D
    .local v23, "oldx":D
    :goto_0
    sub-double v3, v21, v15

    sub-double v25, v13, v1

    div-double v25, v3, v25

    .line 155
    .local v25, "d01":D
    sub-double v3, v19, v21

    sub-double v27, v5, v13

    div-double v27, v3, v27

    .line 156
    .local v27, "d12":D
    sub-double v3, v27, v25

    sub-double v29, v5, v1

    div-double v29, v3, v29

    .line 157
    .local v29, "d012":D
    sub-double v3, v13, v1

    mul-double v3, v3, v29

    add-double v31, v25, v3

    .line 158
    .local v31, "c1":D
    mul-double v3, v31, v31

    const-wide/high16 v33, 0x4010000000000000L    # 4.0

    mul-double v33, v33, v21

    mul-double v33, v33, v29

    sub-double v33, v3, v33

    .line 159
    .local v33, "delta":D
    const-wide/high16 v3, -0x4000000000000000L    # -2.0

    mul-double v35, v21, v3

    invoke-static/range {v33 .. v34}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v37

    add-double v37, v31, v37

    div-double v35, v35, v37

    add-double v35, v13, v35

    .line 160
    .local v35, "xplus":D
    mul-double v3, v3, v21

    invoke-static/range {v33 .. v34}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v37

    sub-double v37, v31, v37

    div-double v3, v3, v37

    add-double v37, v13, v3

    .line 163
    .local v37, "xminus":D
    move-wide/from16 v3, v35

    .end local v35    # "xplus":D
    .local v3, "xplus":D
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->isSequence(DDD)Z

    move-result v35

    if-eqz v35, :cond_0

    move-wide/from16 v35, v3

    goto :goto_1

    :cond_0
    move-wide/from16 v35, v37

    :goto_1
    move-wide/from16 v39, v35

    .line 164
    .local v39, "x":D
    move-wide/from16 v35, v1

    move-wide/from16 v1, v39

    .end local v39    # "x":D
    .local v1, "x":D
    .local v35, "x0":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v39

    .line 167
    .local v39, "y":D
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v41

    move-wide/from16 v43, v1

    .end local v1    # "x":D
    .local v43, "x":D
    mul-double v1, v7, v41

    invoke-static {v1, v2, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 168
    .local v1, "tolerance":D
    sub-double v41, v43, v23

    invoke-static/range {v41 .. v42}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v41

    cmpg-double v41, v41, v1

    if-lez v41, :cond_c

    invoke-static/range {v39 .. v40}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v41

    cmpg-double v41, v41, v11

    if-gtz v41, :cond_1

    move-wide/from16 v47, v1

    goto/16 :goto_9

    .line 177
    :cond_1
    cmpg-double v41, v43, v13

    const-wide v45, 0x3fee666666666666L    # 0.95

    if-gez v41, :cond_2

    sub-double v41, v13, v35

    sub-double v47, v5, v35

    mul-double v47, v47, v45

    cmpl-double v41, v41, v47

    if-gtz v41, :cond_4

    :cond_2
    cmpl-double v41, v43, v13

    if-lez v41, :cond_3

    sub-double v41, v5, v13

    sub-double v47, v5, v35

    mul-double v47, v47, v45

    cmpl-double v41, v41, v47

    if-gtz v41, :cond_4

    :cond_3
    cmpl-double v41, v43, v13

    if-nez v41, :cond_5

    :cond_4
    const/16 v41, 0x1

    goto :goto_2

    :cond_5
    const/16 v41, 0x0

    .line 181
    .local v41, "bisect":Z
    :goto_2
    if-nez v41, :cond_a

    .line 182
    cmpg-double v42, v43, v13

    if-gez v42, :cond_6

    move-wide/from16 v45, v35

    goto :goto_3

    :cond_6
    move-wide/from16 v45, v13

    .line 183
    .end local v35    # "x0":D
    .local v45, "x0":D
    :goto_3
    cmpg-double v35, v43, v13

    if-gez v35, :cond_7

    move-wide/from16 v35, v15

    goto :goto_4

    :cond_7
    move-wide/from16 v35, v21

    .line 184
    .end local v15    # "y0":D
    .local v35, "y0":D
    :goto_4
    cmpl-double v15, v43, v13

    if-lez v15, :cond_8

    move-wide v15, v5

    goto :goto_5

    :cond_8
    move-wide v15, v13

    .line 185
    .end local v5    # "x2":D
    .local v15, "x2":D
    :goto_5
    cmpl-double v5, v43, v13

    if-lez v5, :cond_9

    move-wide/from16 v5, v19

    goto :goto_6

    :cond_9
    move-wide/from16 v5, v21

    .line 186
    .end local v19    # "y2":D
    .local v5, "y2":D
    :goto_6
    move-wide/from16 v13, v43

    move-wide/from16 v19, v39

    .line 187
    .end local v21    # "y1":D
    .local v19, "y1":D
    move-wide/from16 v21, v43

    move-wide/from16 v23, v21

    move-wide/from16 v1, v45

    move-wide/from16 v21, v19

    move-wide/from16 v19, v5

    move-wide v5, v15

    move-wide/from16 v15, v35

    .end local v23    # "oldx":D
    .local v21, "oldx":D
    goto :goto_8

    .line 189
    .end local v45    # "x0":D
    .local v5, "x2":D
    .local v15, "y0":D
    .local v19, "y2":D
    .local v21, "y1":D
    .restart local v23    # "oldx":D
    .local v35, "x0":D
    :cond_a
    add-double v45, v35, v5

    move-wide/from16 v47, v1

    .end local v1    # "tolerance":D
    .local v47, "tolerance":D
    mul-double v1, v45, v17

    .line 190
    .local v1, "xm":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v45

    .line 191
    .local v45, "ym":D
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v49

    invoke-static/range {v45 .. v46}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v51

    add-double v49, v49, v51

    const-wide/16 v51, 0x0

    cmpl-double v42, v49, v51

    if-nez v42, :cond_b

    .line 192
    move-wide v5, v1

    move-wide/from16 v19, v45

    goto :goto_7

    .line 194
    :cond_b
    move-wide/from16 v35, v1

    move-wide/from16 v15, v45

    .line 196
    :goto_7
    add-double v49, v35, v5

    mul-double v13, v49, v17

    .line 197
    invoke-virtual {v0, v13, v14}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v21

    .line 198
    const-wide/high16 v23, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v1, v35

    .line 200
    .end local v3    # "xplus":D
    .end local v25    # "d01":D
    .end local v27    # "d12":D
    .end local v29    # "d012":D
    .end local v31    # "c1":D
    .end local v33    # "delta":D
    .end local v35    # "x0":D
    .end local v37    # "xminus":D
    .end local v39    # "y":D
    .end local v41    # "bisect":Z
    .end local v43    # "x":D
    .end local v45    # "ym":D
    .end local v47    # "tolerance":D
    .local v1, "x0":D
    :goto_8
    goto/16 :goto_0

    .line 168
    .local v1, "tolerance":D
    .restart local v3    # "xplus":D
    .restart local v25    # "d01":D
    .restart local v27    # "d12":D
    .restart local v29    # "d012":D
    .restart local v31    # "c1":D
    .restart local v33    # "delta":D
    .restart local v35    # "x0":D
    .restart local v37    # "xminus":D
    .restart local v39    # "y":D
    .restart local v43    # "x":D
    :cond_c
    move-wide/from16 v47, v1

    .line 170
    .end local v1    # "tolerance":D
    .restart local v47    # "tolerance":D
    :goto_9
    return-wide v43
.end method


# virtual methods
.method protected doSolve()D
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 87
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getMin()D

    move-result-wide v1

    .line 88
    .local v1, "min":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getMax()D

    move-result-wide v3

    .line 89
    .local v3, "max":D
    move-wide v5, v3

    .end local v3    # "max":D
    .local v5, "max":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getStartValue()D

    move-result-wide v3

    .line 91
    .local v3, "initial":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->getFunctionValueAccuracy()D

    move-result-wide v9

    .line 93
    .local v9, "functionValueAccuracy":D
    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->verifySequence(DDD)V

    .line 96
    move-wide v11, v5

    .end local v5    # "max":D
    .local v11, "max":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 97
    .local v5, "fMin":D
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v9

    if-gez v7, :cond_0

    .line 98
    return-wide v1

    .line 100
    :cond_0
    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v13

    .line 101
    .local v13, "fMax":D
    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    cmpg-double v7, v7, v9

    if-gez v7, :cond_1

    .line 102
    return-wide v11

    .line 104
    :cond_1
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    .line 105
    .local v7, "fInitial":D
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    cmpg-double v15, v15, v9

    if-gez v15, :cond_2

    .line 106
    return-wide v3

    .line 109
    :cond_2
    invoke-virtual {v0, v1, v2, v11, v12}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->verifyBracketing(DD)V

    .line 111
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->isBracketing(DD)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 112
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->solve(DDDD)D

    move-result-wide v15

    move-wide/from16 v17, v1

    move-wide/from16 v19, v5

    move-wide v5, v7

    .end local v1    # "min":D
    .end local v7    # "fInitial":D
    .local v5, "fInitial":D
    .local v17, "min":D
    .local v19, "fMin":D
    return-wide v15

    .line 114
    .end local v17    # "min":D
    .end local v19    # "fMin":D
    .restart local v1    # "min":D
    .local v5, "fMin":D
    .restart local v7    # "fInitial":D
    :cond_3
    move-wide/from16 v17, v1

    move-wide/from16 v19, v5

    move-wide v5, v7

    .end local v1    # "min":D
    .end local v7    # "fInitial":D
    .local v5, "fInitial":D
    .restart local v17    # "min":D
    .restart local v19    # "fMin":D
    move-object/from16 v0, p0

    move-wide v1, v3

    move-wide v3, v11

    move-wide v7, v13

    .end local v11    # "max":D
    .end local v13    # "fMax":D
    .local v1, "initial":D
    .local v3, "max":D
    .local v7, "fMax":D
    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver;->solve(DDDD)D

    move-result-wide v11

    move-wide/from16 v21, v3

    move-wide v3, v1

    move-wide v0, v5

    move-wide/from16 v5, v21

    .end local v1    # "initial":D
    .local v0, "fInitial":D
    .local v3, "initial":D
    .local v5, "max":D
    return-wide v11
.end method
