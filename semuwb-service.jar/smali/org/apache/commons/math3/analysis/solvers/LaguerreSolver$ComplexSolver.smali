.class Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;
.super Ljava/lang/Object;
.source "LaguerreSolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ComplexSolver"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;


# direct methods
.method private constructor <init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;
    .param p2, "x1"    # Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$1;

    .line 289
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;-><init>(Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;)V

    return-void
.end method


# virtual methods
.method public isRoot(DDLorg/apache/commons/math3/complex/Complex;)Z
    .locals 9
    .param p1, "min"    # D
    .param p3, "max"    # D
    .param p5, "z"    # Lorg/apache/commons/math3/complex/Complex;

    .line 300
    iget-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {p5}, Lorg/apache/commons/math3/complex/Complex;->getReal()D

    move-result-wide v3

    move-wide v1, p1

    move-wide v5, p3

    .end local p1    # "min":D
    .end local p3    # "max":D
    .local v1, "min":D
    .local v5, "max":D
    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->isSequence(DDD)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 301
    iget-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getRelativeAccuracy()D

    move-result-wide p3

    invoke-virtual {p5}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v3

    mul-double/2addr p3, v3

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getAbsoluteAccuracy()D

    move-result-wide v3

    invoke-static {p3, p4, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p3

    .line 302
    .local p3, "tolerance":D
    invoke-virtual {p5}, Lorg/apache/commons/math3/complex/Complex;->getImaginary()D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    cmpg-double p1, v3, p3

    if-lez p1, :cond_0

    invoke-virtual {p5}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v3

    iget-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {p1}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getFunctionValueAccuracy()D

    move-result-wide v7

    cmpg-double p1, v3, v7

    if-gtz p1, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    return p2

    .line 305
    .end local p3    # "tolerance":D
    :cond_2
    return p2
.end method

.method public solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;
    .locals 29
    .param p1, "coefficients"    # [Lorg/apache/commons/math3/complex/Complex;
    .param p2, "initial"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v1, :cond_6

    .line 378
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    .line 379
    .local v2, "n":I
    if-eqz v2, :cond_5

    .line 383
    iget-object v3, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v3}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getAbsoluteAccuracy()D

    move-result-wide v3

    .line 384
    .local v3, "absoluteAccuracy":D
    iget-object v5, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v5}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getRelativeAccuracy()D

    move-result-wide v5

    .line 385
    .local v5, "relativeAccuracy":D
    iget-object v7, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v7}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->getFunctionValueAccuracy()D

    move-result-wide v7

    .line 387
    .local v7, "functionValueAccuracy":D
    new-instance v9, Lorg/apache/commons/math3/complex/Complex;

    int-to-double v10, v2

    const-wide/16 v12, 0x0

    invoke-direct {v9, v10, v11, v12, v13}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 388
    .local v9, "nC":Lorg/apache/commons/math3/complex/Complex;
    new-instance v10, Lorg/apache/commons/math3/complex/Complex;

    add-int/lit8 v11, v2, -0x1

    int-to-double v14, v11

    invoke-direct {v10, v14, v15, v12, v13}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 390
    .local v10, "n1C":Lorg/apache/commons/math3/complex/Complex;
    move-object/from16 v11, p2

    .line 391
    .local v11, "z":Lorg/apache/commons/math3/complex/Complex;
    new-instance v14, Lorg/apache/commons/math3/complex/Complex;

    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct {v14, v12, v13, v12, v13}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    .line 396
    .local v14, "oldz":Lorg/apache/commons/math3/complex/Complex;
    :goto_0
    aget-object v16, v1, v2

    .line 397
    .local v16, "pv":Lorg/apache/commons/math3/complex/Complex;
    sget-object v17, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    .line 398
    .local v17, "dv":Lorg/apache/commons/math3/complex/Complex;
    sget-object v18, Lorg/apache/commons/math3/complex/Complex;->ZERO:Lorg/apache/commons/math3/complex/Complex;

    .line 399
    .local v18, "d2v":Lorg/apache/commons/math3/complex/Complex;
    add-int/lit8 v19, v2, -0x1

    move-object/from16 v15, v16

    move-object/from16 v12, v17

    move-object/from16 v13, v18

    .end local v16    # "pv":Lorg/apache/commons/math3/complex/Complex;
    .end local v17    # "dv":Lorg/apache/commons/math3/complex/Complex;
    .end local v18    # "d2v":Lorg/apache/commons/math3/complex/Complex;
    .local v12, "dv":Lorg/apache/commons/math3/complex/Complex;
    .local v13, "d2v":Lorg/apache/commons/math3/complex/Complex;
    .local v15, "pv":Lorg/apache/commons/math3/complex/Complex;
    .local v19, "j":I
    :goto_1
    if-ltz v19, :cond_0

    .line 400
    invoke-virtual {v11, v13}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v12, v1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v13

    .line 401
    invoke-virtual {v11, v12}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    invoke-virtual {v15, v1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v12

    .line 402
    aget-object v1, p1, v19

    move/from16 v17, v2

    .end local v2    # "n":I
    .local v17, "n":I
    invoke-virtual {v11, v15}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v15

    .line 399
    add-int/lit8 v19, v19, -0x1

    move-object/from16 v1, p1

    move/from16 v2, v17

    goto :goto_1

    .end local v17    # "n":I
    .restart local v2    # "n":I
    :cond_0
    move/from16 v17, v2

    .line 404
    .end local v2    # "n":I
    .end local v19    # "j":I
    .restart local v17    # "n":I
    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    move-wide/from16 v18, v5

    .end local v5    # "relativeAccuracy":D
    .local v18, "relativeAccuracy":D
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    move-wide/from16 v20, v7

    const-wide/16 v7, 0x0

    .end local v7    # "functionValueAccuracy":D
    .local v20, "functionValueAccuracy":D
    invoke-direct {v1, v5, v6, v7, v8}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v13, v1}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 407
    .end local v13    # "d2v":Lorg/apache/commons/math3/complex/Complex;
    .local v1, "d2v":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v11}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v5

    mul-double v5, v5, v18

    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    .line 409
    .local v5, "tolerance":D
    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v7

    cmpg-double v2, v7, v5

    if-gtz v2, :cond_1

    .line 410
    return-object v11

    .line 412
    :cond_1
    invoke-virtual {v15}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v7

    cmpg-double v2, v7, v20

    if-gtz v2, :cond_2

    .line 413
    return-object v11

    .line 417
    :cond_2
    invoke-virtual {v12, v15}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v2

    .line 418
    .local v2, "G":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v2, v2}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v7

    .line 419
    .local v7, "G2":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v1, v15}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v8

    .line 420
    .local v8, "H":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v9, v8}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v13

    invoke-virtual {v13, v7}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v13

    invoke-virtual {v10, v13}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v13

    .line 422
    .local v13, "delta":Lorg/apache/commons/math3/complex/Complex;
    move-object/from16 v22, v1

    .end local v1    # "d2v":Lorg/apache/commons/math3/complex/Complex;
    .local v22, "d2v":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v13}, Lorg/apache/commons/math3/complex/Complex;->sqrt()Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 423
    .local v1, "deltaSqrt":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v23

    .line 424
    .local v23, "dplus":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v24

    .line 425
    .local v24, "dminus":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual/range {v23 .. v23}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v25

    invoke-virtual/range {v24 .. v24}, Lorg/apache/commons/math3/complex/Complex;->abs()D

    move-result-wide v27

    cmpl-double v25, v25, v27

    if-lez v25, :cond_3

    move-object/from16 v25, v23

    goto :goto_2

    :cond_3
    move-object/from16 v25, v24

    :goto_2
    move-object/from16 v26, v25

    .line 428
    .local v26, "denominator":Lorg/apache/commons/math3/complex/Complex;
    move-object/from16 v25, v1

    .end local v1    # "deltaSqrt":Lorg/apache/commons/math3/complex/Complex;
    .local v25, "deltaSqrt":Lorg/apache/commons/math3/complex/Complex;
    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    move-wide/from16 v27, v5

    const-wide/16 v5, 0x0

    .end local v5    # "tolerance":D
    .local v27, "tolerance":D
    invoke-direct {v1, v5, v6, v5, v6}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    move-object/from16 v5, v26

    .end local v26    # "denominator":Lorg/apache/commons/math3/complex/Complex;
    .local v5, "denominator":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/complex/Complex;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 429
    new-instance v1, Lorg/apache/commons/math3/complex/Complex;

    invoke-direct {v1, v3, v4, v3, v4}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    invoke-virtual {v11, v1}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v1

    .line 430
    .end local v11    # "z":Lorg/apache/commons/math3/complex/Complex;
    .local v1, "z":Lorg/apache/commons/math3/complex/Complex;
    new-instance v6, Lorg/apache/commons/math3/complex/Complex;

    move-object v11, v1

    move-object/from16 v26, v2

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .end local v1    # "z":Lorg/apache/commons/math3/complex/Complex;
    .end local v2    # "G":Lorg/apache/commons/math3/complex/Complex;
    .restart local v11    # "z":Lorg/apache/commons/math3/complex/Complex;
    .local v26, "G":Lorg/apache/commons/math3/complex/Complex;
    invoke-direct {v6, v1, v2, v1, v2}, Lorg/apache/commons/math3/complex/Complex;-><init>(DD)V

    move-object v14, v6

    .end local v14    # "oldz":Lorg/apache/commons/math3/complex/Complex;
    .local v6, "oldz":Lorg/apache/commons/math3/complex/Complex;
    goto :goto_3

    .line 433
    .end local v6    # "oldz":Lorg/apache/commons/math3/complex/Complex;
    .end local v26    # "G":Lorg/apache/commons/math3/complex/Complex;
    .restart local v2    # "G":Lorg/apache/commons/math3/complex/Complex;
    .restart local v14    # "oldz":Lorg/apache/commons/math3/complex/Complex;
    :cond_4
    move-object/from16 v26, v2

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .end local v2    # "G":Lorg/apache/commons/math3/complex/Complex;
    .restart local v26    # "G":Lorg/apache/commons/math3/complex/Complex;
    move-object v6, v11

    .line 434
    .end local v14    # "oldz":Lorg/apache/commons/math3/complex/Complex;
    .restart local v6    # "oldz":Lorg/apache/commons/math3/complex/Complex;
    invoke-virtual {v9, v5}, Lorg/apache/commons/math3/complex/Complex;->divide(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v14

    invoke-virtual {v11, v14}, Lorg/apache/commons/math3/complex/Complex;->subtract(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v11

    move-object v14, v6

    .line 436
    .end local v6    # "oldz":Lorg/apache/commons/math3/complex/Complex;
    .restart local v14    # "oldz":Lorg/apache/commons/math3/complex/Complex;
    :goto_3
    iget-object v6, v0, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->this$0:Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;

    invoke-virtual {v6}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver;->incrementEvaluationCount()V

    .line 437
    .end local v5    # "denominator":Lorg/apache/commons/math3/complex/Complex;
    .end local v7    # "G2":Lorg/apache/commons/math3/complex/Complex;
    .end local v8    # "H":Lorg/apache/commons/math3/complex/Complex;
    .end local v12    # "dv":Lorg/apache/commons/math3/complex/Complex;
    .end local v13    # "delta":Lorg/apache/commons/math3/complex/Complex;
    .end local v15    # "pv":Lorg/apache/commons/math3/complex/Complex;
    .end local v22    # "d2v":Lorg/apache/commons/math3/complex/Complex;
    .end local v23    # "dplus":Lorg/apache/commons/math3/complex/Complex;
    .end local v24    # "dminus":Lorg/apache/commons/math3/complex/Complex;
    .end local v25    # "deltaSqrt":Lorg/apache/commons/math3/complex/Complex;
    .end local v26    # "G":Lorg/apache/commons/math3/complex/Complex;
    .end local v27    # "tolerance":D
    move-wide v12, v1

    move/from16 v2, v17

    move-wide/from16 v5, v18

    move-wide/from16 v7, v20

    move-object/from16 v1, p1

    goto/16 :goto_0

    .line 380
    .end local v3    # "absoluteAccuracy":D
    .end local v9    # "nC":Lorg/apache/commons/math3/complex/Complex;
    .end local v10    # "n1C":Lorg/apache/commons/math3/complex/Complex;
    .end local v11    # "z":Lorg/apache/commons/math3/complex/Complex;
    .end local v14    # "oldz":Lorg/apache/commons/math3/complex/Complex;
    .end local v17    # "n":I
    .end local v18    # "relativeAccuracy":D
    .end local v20    # "functionValueAccuracy":D
    .local v2, "n":I
    :cond_5
    move/from16 v17, v2

    .end local v2    # "n":I
    .restart local v17    # "n":I
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POLYNOMIAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 375
    .end local v17    # "n":I
    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v1
.end method

.method public solveAll([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)[Lorg/apache/commons/math3/complex/Complex;
    .locals 9
    .param p1, "coefficients"    # [Lorg/apache/commons/math3/complex/Complex;
    .param p2, "initial"    # Lorg/apache/commons/math3/complex/Complex;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 325
    if-eqz p1, :cond_4

    .line 328
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 329
    .local v0, "n":I
    if-eqz v0, :cond_3

    .line 333
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [Lorg/apache/commons/math3/complex/Complex;

    .line 334
    .local v1, "c":[Lorg/apache/commons/math3/complex/Complex;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 335
    aget-object v3, p1, v2

    aput-object v3, v1, v2

    .line 334
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    .end local v2    # "i":I
    :cond_0
    new-array v2, v0, [Lorg/apache/commons/math3/complex/Complex;

    .line 340
    .local v2, "root":[Lorg/apache/commons/math3/complex/Complex;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 341
    sub-int v4, v0, v3

    add-int/lit8 v4, v4, 0x1

    new-array v4, v4, [Lorg/apache/commons/math3/complex/Complex;

    .line 342
    .local v4, "subarray":[Lorg/apache/commons/math3/complex/Complex;
    array-length v5, v4

    const/4 v6, 0x0

    invoke-static {v1, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    invoke-virtual {p0, v4, p2}, Lorg/apache/commons/math3/analysis/solvers/LaguerreSolver$ComplexSolver;->solve([Lorg/apache/commons/math3/complex/Complex;Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v5

    aput-object v5, v2, v3

    .line 345
    sub-int v5, v0, v3

    aget-object v5, v1, v5

    .line 346
    .local v5, "newc":Lorg/apache/commons/math3/complex/Complex;
    const/4 v6, 0x0

    .line 347
    .local v6, "oldc":Lorg/apache/commons/math3/complex/Complex;
    sub-int v7, v0, v3

    add-int/lit8 v7, v7, -0x1

    .local v7, "j":I
    :goto_2
    if-ltz v7, :cond_1

    .line 348
    aget-object v6, v1, v7

    .line 349
    aput-object v5, v1, v7

    .line 350
    aget-object v8, v2, v3

    invoke-virtual {v5, v8}, Lorg/apache/commons/math3/complex/Complex;->multiply(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v8

    invoke-virtual {v6, v8}, Lorg/apache/commons/math3/complex/Complex;->add(Lorg/apache/commons/math3/complex/Complex;)Lorg/apache/commons/math3/complex/Complex;

    move-result-object v5

    .line 347
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 340
    .end local v4    # "subarray":[Lorg/apache/commons/math3/complex/Complex;
    .end local v5    # "newc":Lorg/apache/commons/math3/complex/Complex;
    .end local v6    # "oldc":Lorg/apache/commons/math3/complex/Complex;
    .end local v7    # "j":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 354
    .end local v3    # "i":I
    :cond_2
    return-object v2

    .line 330
    .end local v1    # "c":[Lorg/apache/commons/math3/complex/Complex;
    .end local v2    # "root":[Lorg/apache/commons/math3/complex/Complex;
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POLYNOMIAL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 326
    .end local v0    # "n":I
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method
