.class public Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "MullerSolver2.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;-><init>(D)V

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


# virtual methods
.method protected doSolve()D
    .locals 50
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 87
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getMin()D

    move-result-wide v1

    .line 88
    .local v1, "min":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getMax()D

    move-result-wide v3

    .line 90
    .local v3, "max":D
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->verifyInterval(DD)V

    .line 92
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getRelativeAccuracy()D

    move-result-wide v5

    .line 93
    .local v5, "relativeAccuracy":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getAbsoluteAccuracy()D

    move-result-wide v7

    .line 94
    .local v7, "absoluteAccuracy":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->getFunctionValueAccuracy()D

    move-result-wide v9

    .line 100
    .local v9, "functionValueAccuracy":D
    move-wide v12, v1

    .line 101
    .local v12, "x0":D
    invoke-virtual {v0, v12, v13}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v16

    .line 102
    .local v16, "y0":D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    cmpg-double v11, v14, v9

    if-gez v11, :cond_0

    .line 103
    return-wide v12

    .line 105
    :cond_0
    move-wide v14, v3

    .line 106
    .local v14, "x1":D
    invoke-virtual {v0, v14, v15}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v18

    .line 107
    .local v18, "y1":D
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    cmpg-double v11, v20, v9

    if-gez v11, :cond_1

    .line 108
    return-wide v14

    .line 111
    :cond_1
    mul-double v20, v16, v18

    const-wide/16 v22, 0x0

    cmpl-double v11, v20, v22

    if-gtz v11, :cond_9

    .line 115
    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    add-double v24, v12, v14

    move-wide/from16 v26, v1

    .end local v1    # "min":D
    .local v26, "min":D
    mul-double v1, v24, v20

    .line 116
    .local v1, "x2":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v20

    .line 118
    .local v20, "y2":D
    const-wide/high16 v24, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 121
    .local v24, "oldx":D
    :goto_0
    sub-double v28, v1, v14

    sub-double v30, v14, v12

    div-double v28, v28, v30

    .line 122
    .local v28, "q":D
    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    add-double v32, v28, v30

    mul-double v32, v32, v18

    sub-double v32, v20, v32

    mul-double v34, v28, v16

    add-double v32, v32, v34

    mul-double v32, v32, v28

    .line 123
    .local v32, "a":D
    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    mul-double v36, v28, v34

    add-double v36, v36, v30

    mul-double v36, v36, v20

    add-double v38, v28, v30

    add-double v40, v28, v30

    mul-double v38, v38, v40

    mul-double v38, v38, v18

    sub-double v36, v36, v38

    mul-double v38, v28, v28

    mul-double v38, v38, v16

    add-double v36, v36, v38

    .line 124
    .local v36, "b":D
    add-double v30, v28, v30

    mul-double v30, v30, v20

    .line 125
    .local v30, "c":D
    mul-double v38, v36, v36

    const-wide/high16 v40, 0x4010000000000000L    # 4.0

    mul-double v40, v40, v32

    mul-double v40, v40, v30

    sub-double v38, v38, v40

    .line 128
    .local v38, "delta":D
    cmpl-double v11, v38, v22

    if-ltz v11, :cond_3

    .line 130
    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v40

    add-double v40, v36, v40

    .line 131
    .local v40, "dplus":D
    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v42

    sub-double v42, v36, v42

    .line 132
    .local v42, "dminus":D
    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v44

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    cmpl-double v11, v44, v46

    if-lez v11, :cond_2

    move-wide/from16 v44, v40

    goto :goto_1

    :cond_2
    move-wide/from16 v44, v42

    .line 133
    .end local v40    # "dplus":D
    .end local v42    # "dminus":D
    .local v44, "denominator":D
    :goto_1
    goto :goto_2

    .line 135
    .end local v44    # "denominator":D
    :cond_3
    mul-double v40, v36, v36

    sub-double v40, v40, v38

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v44

    .line 137
    .restart local v44    # "denominator":D
    :goto_2
    cmpl-double v11, v44, v22

    if-eqz v11, :cond_6

    .line 138
    mul-double v34, v34, v30

    sub-double v40, v1, v14

    mul-double v34, v34, v40

    div-double v34, v34, v44

    sub-double v34, v1, v34

    .line 141
    .local v34, "x":D
    :goto_3
    cmpl-double v11, v34, v14

    if-eqz v11, :cond_5

    cmpl-double v11, v34, v1

    if-nez v11, :cond_4

    goto :goto_4

    :cond_4
    move-wide/from16 v48, v34

    move-wide/from16 v34, v1

    move-wide/from16 v1, v48

    goto :goto_5

    .line 142
    :cond_5
    :goto_4
    add-double v34, v34, v7

    goto :goto_3

    .line 146
    .end local v34    # "x":D
    :cond_6
    invoke-static {}, Lorg/apache/commons/math3/util/FastMath;->random()D

    move-result-wide v34

    sub-double v40, v3, v26

    mul-double v34, v34, v40

    add-double v34, v26, v34

    .line 147
    .restart local v34    # "x":D
    const-wide/high16 v24, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v48, v34

    move-wide/from16 v34, v1

    move-wide/from16 v1, v48

    .line 149
    .local v1, "x":D
    .local v34, "x2":D
    :goto_5
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/MullerSolver2;->computeObjectiveValue(D)D

    move-result-wide v40

    .line 152
    .local v40, "y":D
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    move-wide/from16 v46, v1

    .end local v1    # "x":D
    .local v46, "x":D
    mul-double v0, v5, v42

    invoke-static {v0, v1, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 153
    .local v0, "tolerance":D
    sub-double v42, v46, v24

    invoke-static/range {v42 .. v43}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    cmpg-double v2, v42, v0

    if-lez v2, :cond_8

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v42

    cmpg-double v2, v42, v9

    if-gtz v2, :cond_7

    goto :goto_6

    .line 159
    :cond_7
    move-wide v12, v14

    .line 160
    move-wide/from16 v16, v18

    .line 161
    move-wide/from16 v14, v34

    .line 162
    move-wide/from16 v18, v20

    .line 163
    move-wide/from16 v34, v46

    .line 164
    move-wide/from16 v20, v40

    .line 165
    move-wide/from16 v24, v46

    .line 166
    .end local v0    # "tolerance":D
    .end local v28    # "q":D
    .end local v30    # "c":D
    .end local v32    # "a":D
    .end local v36    # "b":D
    .end local v38    # "delta":D
    .end local v40    # "y":D
    .end local v44    # "denominator":D
    .end local v46    # "x":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v34

    goto/16 :goto_0

    .line 155
    .restart local v0    # "tolerance":D
    .restart local v28    # "q":D
    .restart local v30    # "c":D
    .restart local v32    # "a":D
    .restart local v36    # "b":D
    .restart local v38    # "delta":D
    .restart local v40    # "y":D
    .restart local v44    # "denominator":D
    .restart local v46    # "x":D
    :cond_8
    :goto_6
    return-wide v46

    .line 112
    .end local v0    # "tolerance":D
    .end local v20    # "y2":D
    .end local v24    # "oldx":D
    .end local v26    # "min":D
    .end local v28    # "q":D
    .end local v30    # "c":D
    .end local v32    # "a":D
    .end local v34    # "x2":D
    .end local v36    # "b":D
    .end local v38    # "delta":D
    .end local v40    # "y":D
    .end local v44    # "denominator":D
    .end local v46    # "x":D
    .local v1, "min":D
    :cond_9
    new-instance v11, Lorg/apache/commons/math3/exception/NoBracketingException;

    invoke-direct/range {v11 .. v19}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v11
.end method
