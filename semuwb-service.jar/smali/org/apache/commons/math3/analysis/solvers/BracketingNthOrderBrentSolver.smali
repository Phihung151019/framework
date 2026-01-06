.class public Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "BracketingNthOrderBrentSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;",
        "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6

.field private static final DEFAULT_MAXIMAL_ORDER:I = 0x5

.field private static final MAXIMAL_AGING:I = 0x2

.field private static final REDUCTION_FACTOR:D = 0.0625


# instance fields
.field private allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field private final maximalOrder:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 69
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v2, 0x5

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;-><init>(DI)V

    .line 70
    return-void
.end method

.method public constructor <init>(DDDI)V
    .locals 5
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D
    .param p7, "maximalOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 124
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    .line 125
    move-wide v0, p5

    move-wide p4, p3

    move-wide p2, p1

    move-object p1, p0

    .end local p1    # "relativeAccuracy":D
    .end local p3    # "absoluteAccuracy":D
    .end local p5    # "functionValueAccuracy":D
    .local v0, "functionValueAccuracy":D
    .local p2, "relativeAccuracy":D
    .local p4, "absoluteAccuracy":D
    const/4 p6, 0x2

    if-lt p7, p6, :cond_0

    .line 128
    iput p7, p1, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    .line 129
    sget-object p6, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p6, p1, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 130
    return-void

    .line 126
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const/4 v4, 0x1

    invoke-direct {v2, v3, p6, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v2
.end method

.method public constructor <init>(DDI)V
    .locals 4
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "maximalOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 102
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 103
    const/4 v0, 0x2

    if-lt p5, v0, :cond_0

    .line 106
    iput p5, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    .line 107
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 108
    return-void

    .line 104
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method

.method public constructor <init>(DI)V
    .locals 4
    .param p1, "absoluteAccuracy"    # D
    .param p3, "maximalOrder"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 83
    const/4 v0, 0x2

    if-lt p3, v0, :cond_0

    .line 86
    iput p3, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    .line 87
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 88
    return-void

    .line 84
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v1
.end method

.method private guessX(D[D[DII)D
    .locals 9
    .param p1, "targetY"    # D
    .param p3, "x"    # [D
    .param p4, "y"    # [D
    .param p5, "start"    # I
    .param p6, "end"    # I

    .line 373
    move v0, p5

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, p6, -0x1

    if-ge v0, v1, :cond_1

    .line 374
    add-int/lit8 v1, v0, 0x1

    sub-int/2addr v1, p5

    .line 375
    .local v1, "delta":I
    add-int/lit8 v2, p6, -0x1

    .local v2, "j":I
    :goto_1
    if-le v2, v0, :cond_0

    .line 376
    aget-wide v3, p3, v2

    add-int/lit8 v5, v2, -0x1

    aget-wide v5, p3, v5

    sub-double/2addr v3, v5

    aget-wide v5, p4, v2

    sub-int v7, v2, v1

    aget-wide v7, p4, v7

    sub-double/2addr v5, v7

    div-double/2addr v3, v5

    aput-wide v3, p3, v2

    .line 375
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 373
    .end local v1    # "delta":I
    .end local v2    # "j":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 381
    .end local v0    # "i":I
    :cond_1
    const-wide/16 v0, 0x0

    .line 382
    .local v0, "x0":D
    add-int/lit8 v2, p6, -0x1

    .restart local v2    # "j":I
    :goto_2
    if-lt v2, p5, :cond_2

    .line 383
    aget-wide v3, p3, v2

    aget-wide v5, p4, v2

    sub-double v5, p1, v5

    mul-double/2addr v5, v0

    add-double v0, v3, v5

    .line 382
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 386
    .end local v2    # "j":I
    :cond_2
    return-wide v0
.end method


# virtual methods
.method protected doSolve()D
    .locals 42
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 148
    move-object/from16 v0, p0

    iget v1, v0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    const/4 v7, 0x1

    add-int/2addr v1, v7

    new-array v8, v1, [D

    .line 149
    .local v8, "x":[D
    iget v1, v0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    add-int/2addr v1, v7

    new-array v9, v1, [D

    .line 150
    .local v9, "y":[D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getMin()D

    move-result-wide v1

    const/4 v10, 0x0

    aput-wide v1, v8, v10

    .line 151
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getStartValue()D

    move-result-wide v1

    aput-wide v1, v8, v7

    .line 152
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getMax()D

    move-result-wide v1

    const/4 v11, 0x2

    aput-wide v1, v8, v11

    .line 153
    aget-wide v1, v8, v10

    aget-wide v3, v8, v7

    aget-wide v5, v8, v11

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->verifySequence(DDD)V

    .line 156
    aget-wide v1, v8, v7

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->computeObjectiveValue(D)D

    move-result-wide v1

    aput-wide v1, v9, v7

    .line 157
    aget-wide v1, v9, v7

    const-wide/16 v12, 0x0

    invoke-static {v1, v2, v12, v13, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 159
    aget-wide v1, v8, v7

    return-wide v1

    .line 163
    :cond_0
    aget-wide v1, v8, v10

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->computeObjectiveValue(D)D

    move-result-wide v1

    aput-wide v1, v9, v10

    .line 164
    aget-wide v1, v9, v10

    invoke-static {v1, v2, v12, v13, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    aget-wide v1, v8, v10

    return-wide v1

    .line 171
    :cond_1
    aget-wide v1, v9, v10

    aget-wide v3, v9, v7

    mul-double/2addr v1, v3

    cmpg-double v1, v1, v12

    if-gez v1, :cond_2

    .line 174
    const/4 v1, 0x2

    .line 175
    .local v1, "nbPoints":I
    const/4 v2, 0x1

    .local v2, "signChangeIndex":I
    goto :goto_0

    .line 180
    .end local v1    # "nbPoints":I
    .end local v2    # "signChangeIndex":I
    :cond_2
    aget-wide v1, v8, v11

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->computeObjectiveValue(D)D

    move-result-wide v1

    aput-wide v1, v9, v11

    .line 181
    aget-wide v1, v9, v11

    invoke-static {v1, v2, v12, v13, v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    aget-wide v1, v8, v11

    return-wide v1

    .line 186
    :cond_3
    aget-wide v1, v9, v7

    aget-wide v3, v9, v11

    mul-double/2addr v1, v3

    cmpg-double v1, v1, v12

    if-gez v1, :cond_15

    .line 188
    const/4 v1, 0x3

    .line 189
    .restart local v1    # "nbPoints":I
    const/4 v2, 0x2

    .line 197
    .restart local v2    # "signChangeIndex":I
    :goto_0
    array-length v3, v8

    new-array v3, v3, [D

    .line 200
    .local v3, "tmpX":[D
    add-int/lit8 v4, v2, -0x1

    aget-wide v4, v8, v4

    .line 201
    .local v4, "xA":D
    add-int/lit8 v6, v2, -0x1

    aget-wide v14, v9, v6

    .line 202
    .local v14, "yA":D
    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    .line 203
    .local v16, "absYA":D
    const/4 v6, 0x0

    .line 204
    .local v6, "agingA":I
    aget-wide v18, v8, v2

    .line 205
    .local v18, "xB":D
    aget-wide v20, v9, v2

    .line 206
    .local v20, "yB":D
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    .line 207
    .local v22, "absYB":D
    const/16 v24, 0x0

    move-wide/from16 v12, v16

    move-wide/from16 v16, v4

    move-wide v4, v12

    move-wide/from16 v12, v22

    move-wide/from16 v22, v20

    move-wide/from16 v20, v18

    move-wide/from16 v18, v14

    move v14, v1

    move v15, v2

    move v1, v6

    move/from16 v2, v24

    .line 213
    .end local v6    # "agingA":I
    .local v1, "agingA":I
    .local v2, "agingB":I
    .local v4, "absYA":D
    .local v12, "absYB":D
    .local v14, "nbPoints":I
    .local v15, "signChangeIndex":I
    .local v16, "xA":D
    .local v18, "yA":D
    .local v20, "xB":D
    .local v22, "yB":D
    :goto_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getAbsoluteAccuracy()D

    move-result-wide v26

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getRelativeAccuracy()D

    move-result-wide v28

    move/from16 v31, v7

    move-object/from16 v30, v8

    .end local v8    # "x":[D
    .local v30, "x":[D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static {v7, v8, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    mul-double v28, v28, v6

    add-double v26, v26, v28

    .line 215
    .local v26, "xTol":D
    sub-double v6, v20, v16

    cmpg-double v6, v6, v26

    if-lez v6, :cond_11

    invoke-static {v4, v5, v12, v13}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->getFunctionValueAccuracy()D

    move-result-wide v10

    cmpg-double v6, v6, v10

    if-gez v6, :cond_4

    move v11, v2

    move-wide/from16 v28, v4

    move-object v4, v9

    move-object/from16 v10, v30

    move v9, v1

    move-object/from16 v30, v3

    goto/16 :goto_b

    .line 235
    :cond_4
    const/4 v8, 0x2

    if-lt v1, v8, :cond_5

    .line 237
    add-int/lit8 v8, v1, -0x2

    .line 238
    .local v8, "p":I
    shl-int v10, v31, v8

    add-int/lit8 v10, v10, -0x1

    int-to-double v10, v10

    .line 239
    .local v10, "weightA":D
    const-wide/high16 v28, 0x3fb0000000000000L    # 0.0625

    add-int/lit8 v6, v8, 0x1

    int-to-double v6, v6

    .line 240
    .local v6, "weightB":D
    mul-double v34, v10, v18

    mul-double v28, v28, v6

    mul-double v28, v28, v22

    sub-double v34, v34, v28

    add-double v28, v10, v6

    div-double v34, v34, v28

    .line 241
    .end local v6    # "weightB":D
    .end local v8    # "p":I
    .end local v10    # "weightA":D
    .local v34, "targetY":D
    goto :goto_2

    .end local v34    # "targetY":D
    :cond_5
    const-wide/high16 v28, 0x3fb0000000000000L    # 0.0625

    const/4 v8, 0x2

    if-lt v2, v8, :cond_6

    .line 243
    add-int/lit8 v6, v2, -0x2

    .line 244
    .local v6, "p":I
    add-int/lit8 v7, v6, 0x1

    int-to-double v7, v7

    .line 245
    .local v7, "weightA":D
    shl-int v10, v31, v6

    add-int/lit8 v10, v10, -0x1

    int-to-double v10, v10

    .line 246
    .local v10, "weightB":D
    mul-double v34, v10, v22

    mul-double v28, v28, v7

    mul-double v28, v28, v18

    sub-double v34, v34, v28

    add-double v28, v7, v10

    div-double v34, v34, v28

    .line 247
    .end local v6    # "p":I
    .end local v7    # "weightA":D
    .end local v10    # "weightB":D
    .restart local v34    # "targetY":D
    goto :goto_2

    .line 249
    .end local v34    # "targetY":D
    :cond_6
    const-wide/16 v34, 0x0

    .line 254
    .restart local v34    # "targetY":D
    :goto_2
    const/4 v6, 0x0

    .line 255
    .local v6, "start":I
    move v7, v14

    .line 259
    .local v7, "end":I
    :goto_3
    sub-int v8, v7, v6

    move-object/from16 v10, v30

    .end local v30    # "x":[D
    .local v10, "x":[D
    invoke-static {v10, v6, v3, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 260
    move-wide/from16 v40, v4

    move v5, v6

    move v6, v7

    move-wide/from16 v7, v40

    move v11, v2

    move-object v4, v9

    move v9, v1

    move-wide/from16 v1, v34

    .end local v2    # "agingB":I
    .end local v34    # "targetY":D
    .local v1, "targetY":D
    .local v4, "y":[D
    .local v5, "start":I
    .local v6, "end":I
    .local v7, "absYA":D
    .local v9, "agingA":I
    .local v11, "agingB":I
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->guessX(D[D[DII)D

    move-result-wide v28

    .line 262
    .local v28, "nextX":D
    cmpl-double v30, v28, v16

    if-lez v30, :cond_8

    cmpg-double v30, v28, v20

    if-ltz v30, :cond_7

    goto :goto_4

    :cond_7
    move-wide/from16 v34, v1

    move v1, v6

    move v6, v5

    goto :goto_6

    .line 268
    :cond_8
    :goto_4
    move-wide/from16 v34, v1

    .end local v1    # "targetY":D
    .restart local v34    # "targetY":D
    sub-int v1, v15, v5

    sub-int v2, v6, v15

    if-lt v1, v2, :cond_9

    .line 270
    add-int/lit8 v1, v5, 0x1

    move/from16 v40, v6

    move v6, v1

    move/from16 v1, v40

    .end local v5    # "start":I
    .local v1, "start":I
    goto :goto_5

    .line 273
    .end local v1    # "start":I
    .restart local v5    # "start":I
    :cond_9
    add-int/lit8 v1, v6, -0x1

    move v6, v5

    .line 277
    .end local v5    # "start":I
    .local v1, "end":I
    .local v6, "start":I
    :goto_5
    const-wide/high16 v28, 0x7ff8000000000000L    # Double.NaN

    .line 281
    :goto_6
    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_b

    sub-int v2, v1, v6

    move/from16 v5, v31

    if-gt v2, v5, :cond_a

    goto :goto_7

    :cond_a
    move-wide/from16 v30, v7

    move v7, v1

    move v1, v9

    move-object v9, v4

    move-wide/from16 v4, v30

    move-object/from16 v30, v10

    move v2, v11

    const/16 v31, 0x1

    goto :goto_3

    .line 283
    :cond_b
    :goto_7
    invoke-static/range {v28 .. v29}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 285
    const-wide/high16 v36, 0x3fe0000000000000L    # 0.5

    sub-double v38, v20, v16

    mul-double v38, v38, v36

    add-double v28, v16, v38

    .line 286
    add-int/lit8 v6, v15, -0x1

    .line 287
    move v1, v15

    move v5, v1

    move-wide/from16 v1, v28

    goto :goto_8

    .line 283
    :cond_c
    move v5, v1

    move-wide/from16 v1, v28

    .line 291
    .end local v28    # "nextX":D
    .local v1, "nextX":D
    .local v5, "end":I
    :goto_8
    move-wide/from16 v28, v7

    .end local v7    # "absYA":D
    .local v28, "absYA":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    .line 292
    .local v7, "nextY":D
    move-wide/from16 v36, v1

    move-object/from16 v30, v3

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    .end local v1    # "nextX":D
    .end local v3    # "tmpX":[D
    .local v30, "tmpX":[D
    .local v36, "nextX":D
    invoke-static {v7, v8, v2, v3, v1}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v38

    if-eqz v38, :cond_d

    .line 295
    return-wide v36

    .line 298
    :cond_d
    const/4 v1, 0x2

    if-le v14, v1, :cond_e

    sub-int v1, v5, v6

    if-eq v1, v14, :cond_e

    .line 302
    sub-int v14, v5, v6

    .line 303
    const/4 v1, 0x0

    invoke-static {v10, v6, v10, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 304
    invoke-static {v4, v6, v4, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 305
    sub-int/2addr v15, v6

    goto :goto_9

    .line 307
    :cond_e
    array-length v1, v10

    if-ne v14, v1, :cond_f

    .line 310
    add-int/lit8 v14, v14, -0x1

    .line 313
    array-length v1, v10

    const/4 v2, 0x1

    add-int/2addr v1, v2

    const/16 v33, 0x2

    div-int/lit8 v1, v1, 0x2

    if-lt v15, v1, :cond_f

    .line 315
    const/4 v1, 0x0

    invoke-static {v10, v2, v10, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 316
    invoke-static {v4, v2, v4, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 317
    add-int/lit8 v15, v15, -0x1

    .line 324
    :cond_f
    :goto_9
    add-int/lit8 v1, v15, 0x1

    sub-int v2, v14, v15

    invoke-static {v10, v15, v10, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    aput-wide v36, v10, v15

    .line 326
    add-int/lit8 v1, v15, 0x1

    sub-int v2, v14, v15

    invoke-static {v4, v15, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    aput-wide v7, v4, v15

    .line 328
    const/16 v31, 0x1

    add-int/lit8 v14, v14, 0x1

    .line 331
    mul-double v1, v7, v18

    const-wide/16 v24, 0x0

    cmpg-double v1, v1, v24

    if-gtz v1, :cond_10

    .line 333
    move-wide/from16 v1, v36

    .line 334
    .end local v20    # "xB":D
    .local v1, "xB":D
    move-wide/from16 v20, v7

    .line 335
    .end local v22    # "yB":D
    .local v20, "yB":D
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    .line 336
    add-int/lit8 v3, v9, 0x1

    .line 337
    .end local v9    # "agingA":I
    .local v3, "agingA":I
    const/4 v9, 0x0

    move-wide/from16 v5, v18

    move-wide/from16 v22, v20

    move-wide/from16 v18, v28

    move-wide/from16 v20, v1

    move v1, v3

    move v2, v9

    .end local v11    # "agingB":I
    .local v9, "agingB":I
    goto :goto_a

    .line 340
    .end local v1    # "xB":D
    .end local v3    # "agingA":I
    .local v9, "agingA":I
    .restart local v11    # "agingB":I
    .local v20, "xB":D
    .restart local v22    # "yB":D
    :cond_10
    move-wide/from16 v1, v36

    .line 341
    .end local v16    # "xA":D
    .local v1, "xA":D
    move-wide/from16 v16, v7

    .line 342
    .end local v18    # "yA":D
    .local v16, "yA":D
    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    .line 343
    .end local v28    # "absYA":D
    .local v18, "absYA":D
    const/4 v3, 0x0

    .line 344
    .end local v9    # "agingA":I
    .restart local v3    # "agingA":I
    add-int/lit8 v9, v11, 0x1

    .line 347
    .end local v11    # "agingB":I
    .local v9, "agingB":I
    add-int/lit8 v15, v15, 0x1

    move-wide/from16 v5, v16

    move-wide/from16 v16, v1

    move v1, v3

    move v2, v9

    .line 351
    .end local v3    # "agingA":I
    .end local v6    # "start":I
    .end local v7    # "nextY":D
    .end local v9    # "agingB":I
    .end local v26    # "xTol":D
    .end local v34    # "targetY":D
    .end local v36    # "nextX":D
    .local v1, "agingA":I
    .restart local v2    # "agingB":I
    .local v5, "yA":D
    .local v16, "xA":D
    :goto_a
    move-object v9, v4

    move-object v8, v10

    move-object/from16 v3, v30

    move/from16 v7, v31

    const/4 v10, 0x0

    const/4 v11, 0x2

    move-wide/from16 v40, v18

    move-wide/from16 v18, v5

    move-wide/from16 v4, v40

    goto/16 :goto_1

    .line 215
    .end local v5    # "yA":D
    .end local v10    # "x":[D
    .local v3, "tmpX":[D
    .local v4, "absYA":D
    .local v9, "y":[D
    .local v18, "yA":D
    .restart local v26    # "xTol":D
    .local v30, "x":[D
    :cond_11
    move v11, v2

    move-wide/from16 v28, v4

    move-object v4, v9

    move-object/from16 v10, v30

    move v9, v1

    move-object/from16 v30, v3

    .line 216
    .end local v1    # "agingA":I
    .end local v2    # "agingB":I
    .end local v3    # "tmpX":[D
    .local v4, "y":[D
    .local v9, "agingA":I
    .restart local v10    # "x":[D
    .restart local v11    # "agingB":I
    .restart local v28    # "absYA":D
    .local v30, "tmpX":[D
    :goto_b
    sget-object v1, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    iget-object v2, v0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 229
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1

    .line 226
    :pswitch_0
    const-wide/16 v24, 0x0

    cmpg-double v1, v18, v24

    if-gez v1, :cond_12

    move-wide/from16 v1, v20

    goto :goto_c

    :cond_12
    move-wide/from16 v1, v16

    :goto_c
    return-wide v1

    .line 224
    :pswitch_1
    const-wide/16 v24, 0x0

    cmpg-double v1, v18, v24

    if-gtz v1, :cond_13

    move-wide/from16 v1, v16

    goto :goto_d

    :cond_13
    move-wide/from16 v1, v20

    :goto_d
    return-wide v1

    .line 222
    :pswitch_2
    return-wide v20

    .line 220
    :pswitch_3
    return-wide v16

    .line 218
    :pswitch_4
    cmpg-double v1, v28, v12

    if-gez v1, :cond_14

    move-wide/from16 v1, v16

    goto :goto_e

    :cond_14
    move-wide/from16 v1, v20

    :goto_e
    return-wide v1

    .line 191
    .end local v4    # "y":[D
    .end local v10    # "x":[D
    .end local v11    # "agingB":I
    .end local v12    # "absYB":D
    .end local v14    # "nbPoints":I
    .end local v15    # "signChangeIndex":I
    .end local v16    # "xA":D
    .end local v18    # "yA":D
    .end local v20    # "xB":D
    .end local v22    # "yB":D
    .end local v26    # "xTol":D
    .end local v28    # "absYA":D
    .end local v30    # "tmpX":[D
    .local v8, "x":[D
    .local v9, "y":[D
    :cond_15
    move-object v10, v8

    move-object v4, v9

    .end local v8    # "x":[D
    .end local v9    # "y":[D
    .restart local v4    # "y":[D
    .restart local v10    # "x":[D
    new-instance v31, Lorg/apache/commons/math3/exception/NoBracketingException;

    const/16 v32, 0x0

    aget-wide v1, v10, v32

    const/16 v33, 0x2

    aget-wide v34, v10, v33

    aget-wide v36, v4, v32

    aget-wide v38, v4, v33

    move-wide/from16 v32, v1

    invoke-direct/range {v31 .. v39}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v31

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMaximalOrder()I
    .locals 1

    .line 136
    iget v0, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->maximalOrder:I

    return v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 2
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "startValue"    # D
    .param p9, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 407
    iput-object p9, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 408
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 2
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 396
    iput-object p7, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 397
    invoke-super/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v0

    return-wide v0
.end method
