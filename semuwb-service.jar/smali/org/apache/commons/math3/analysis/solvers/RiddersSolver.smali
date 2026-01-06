.class public Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "RiddersSolver.java"


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 42
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;-><init>(D)V

    .line 43
    return-void
.end method

.method public constructor <init>(D)V
    .locals 0
    .param p1, "absoluteAccuracy"    # D

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 51
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 0
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 61
    return-void
.end method


# virtual methods
.method protected doSolve()D
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 70
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getMin()D

    move-result-wide v1

    .line 71
    .local v1, "min":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getMax()D

    move-result-wide v3

    .line 75
    .local v3, "max":D
    move-wide v5, v1

    .line 76
    .local v5, "x1":D
    invoke-virtual {v0, v5, v6}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    .line 77
    .local v7, "y1":D
    move-wide v9, v3

    .line 78
    .local v9, "x2":D
    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->computeObjectiveValue(D)D

    move-result-wide v11

    .line 81
    .local v11, "y2":D
    const-wide/16 v13, 0x0

    cmpl-double v15, v7, v13

    if-nez v15, :cond_0

    .line 82
    return-wide v1

    .line 84
    :cond_0
    cmpl-double v15, v11, v13

    if-nez v15, :cond_1

    .line 85
    return-wide v3

    .line 87
    :cond_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->verifyBracketing(DD)V

    .line 89
    move-wide v15, v13

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getAbsoluteAccuracy()D

    move-result-wide v13

    .line 90
    .local v13, "absoluteAccuracy":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getFunctionValueAccuracy()D

    move-result-wide v17

    .line 91
    .local v17, "functionValueAccuracy":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->getRelativeAccuracy()D

    move-result-wide v19

    .line 93
    .local v19, "relativeAccuracy":D
    const-wide/high16 v21, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 96
    .local v21, "oldx":D
    :goto_0
    const-wide/high16 v23, 0x3fe0000000000000L    # 0.5

    add-double v25, v5, v9

    move-wide/from16 v27, v1

    .end local v1    # "min":D
    .local v27, "min":D
    mul-double v1, v25, v23

    .line 97
    .local v1, "x3":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->computeObjectiveValue(D)D

    move-result-wide v23

    .line 98
    .local v23, "y3":D
    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    cmpg-double v25, v25, v17

    if-gtz v25, :cond_2

    .line 99
    return-wide v1

    .line 101
    :cond_2
    mul-double v25, v7, v11

    mul-double v29, v23, v23

    div-double v25, v25, v29

    const-wide/high16 v29, 0x3ff0000000000000L    # 1.0

    sub-double v29, v29, v25

    .line 102
    .local v29, "delta":D
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v25

    invoke-static/range {v23 .. v24}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v31

    mul-double v25, v25, v31

    sub-double v31, v1, v5

    mul-double v25, v25, v31

    invoke-static/range {v29 .. v30}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v31

    div-double v25, v25, v31

    .line 104
    .local v25, "correction":D
    move-wide/from16 v31, v1

    .end local v1    # "x3":D
    .local v31, "x3":D
    sub-double v1, v31, v25

    .line 105
    .local v1, "x":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/RiddersSolver;->computeObjectiveValue(D)D

    move-result-wide v33

    .line 108
    .local v33, "y":D
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v35

    move-wide/from16 v37, v1

    .end local v1    # "x":D
    .local v37, "x":D
    mul-double v0, v19, v35

    invoke-static {v0, v1, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 109
    .local v0, "tolerance":D
    sub-double v35, v37, v21

    invoke-static/range {v35 .. v36}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v35

    cmpg-double v2, v35, v0

    if-gtz v2, :cond_3

    .line 110
    return-wide v37

    .line 112
    :cond_3
    invoke-static/range {v33 .. v34}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v35

    cmpg-double v2, v35, v17

    if-gtz v2, :cond_4

    .line 113
    return-wide v37

    .line 118
    :cond_4
    cmpl-double v2, v25, v15

    if-lez v2, :cond_6

    .line 119
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v35

    invoke-static/range {v33 .. v34}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v39

    add-double v35, v35, v39

    cmpl-double v2, v35, v15

    if-nez v2, :cond_5

    .line 120
    move-wide/from16 v9, v37

    .line 121
    move-wide/from16 v11, v33

    goto :goto_1

    .line 123
    :cond_5
    move-wide/from16 v5, v37

    .line 124
    move-wide/from16 v9, v31

    .line 125
    move-wide/from16 v7, v33

    .line 126
    move-wide/from16 v11, v23

    goto :goto_1

    .line 129
    :cond_6
    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v35

    invoke-static/range {v33 .. v34}, Lorg/apache/commons/math3/util/FastMath;->signum(D)D

    move-result-wide v39

    add-double v35, v35, v39

    cmpl-double v2, v35, v15

    if-nez v2, :cond_7

    .line 130
    move-wide/from16 v5, v37

    .line 131
    move-wide/from16 v7, v33

    goto :goto_1

    .line 133
    :cond_7
    move-wide/from16 v5, v31

    .line 134
    move-wide/from16 v9, v37

    .line 135
    move-wide/from16 v7, v23

    .line 136
    move-wide/from16 v11, v33

    .line 139
    :goto_1
    move-wide/from16 v21, v37

    .line 140
    .end local v0    # "tolerance":D
    .end local v23    # "y3":D
    .end local v25    # "correction":D
    .end local v29    # "delta":D
    .end local v31    # "x3":D
    .end local v33    # "y":D
    .end local v37    # "x":D
    move-object/from16 v0, p0

    move-wide/from16 v1, v27

    goto/16 :goto_0
.end method
