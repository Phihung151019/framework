.class public abstract Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "BaseSecantSolver.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;",
        "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# instance fields
.field private allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field private final method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;


# direct methods
.method protected constructor <init>(DDDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V
    .locals 2
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D
    .param p7, "method"    # Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    .line 100
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    .line 101
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
    sget-object p6, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p6, p1, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 102
    iput-object p7, p1, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    .line 103
    return-void
.end method

.method protected constructor <init>(DDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V
    .locals 1
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "method"    # Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 84
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 85
    iput-object p5, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    .line 86
    return-void
.end method

.method protected constructor <init>(DLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D
    .param p3, "method"    # Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    .line 68
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 69
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 70
    iput-object p3, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    .line 71
    return-void
.end method


# virtual methods
.method protected final doSolve()D
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    .line 137
    move-object/from16 v0, p0

    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getMin()D

    move-result-wide v1

    .line 138
    .local v1, "x0":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getMax()D

    move-result-wide v3

    .line 139
    .local v3, "x1":D
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    .line 140
    .local v5, "f0":D
    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    .line 145
    .local v7, "f1":D
    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-nez v11, :cond_0

    .line 146
    return-wide v1

    .line 148
    :cond_0
    cmpl-double v11, v7, v9

    if-nez v11, :cond_1

    .line 149
    return-wide v3

    .line 153
    :cond_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->verifyBracketing(DD)V

    .line 156
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getFunctionValueAccuracy()D

    move-result-wide v11

    .line 157
    .local v11, "ftol":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getAbsoluteAccuracy()D

    move-result-wide v13

    .line 158
    .local v13, "atol":D
    invoke-virtual {v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->getRelativeAccuracy()D

    move-result-wide v15

    .line 162
    .local v15, "rtol":D
    const/16 v17, 0x0

    .line 167
    .local v17, "inverted":Z
    :goto_0
    sub-double v18, v3, v1

    mul-double v18, v18, v7

    sub-double v20, v7, v5

    div-double v18, v18, v20

    move-wide/from16 v20, v9

    sub-double v9, v3, v18

    .line 168
    .local v9, "x":D
    invoke-virtual {v0, v9, v10}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->computeObjectiveValue(D)D

    move-result-wide v18

    .line 173
    .local v18, "fx":D
    cmpl-double v22, v18, v20

    if-nez v22, :cond_2

    .line 174
    return-wide v9

    .line 178
    :cond_2
    mul-double v22, v7, v18

    cmpg-double v22, v22, v20

    if-gez v22, :cond_4

    .line 181
    move-wide v1, v3

    .line 182
    move-wide v5, v7

    .line 183
    if-nez v17, :cond_3

    const/16 v22, 0x1

    goto :goto_1

    :cond_3
    const/16 v22, 0x0

    :goto_1
    move/from16 v17, v22

    .end local v17    # "inverted":Z
    .local v22, "inverted":Z
    goto :goto_2

    .line 185
    .end local v22    # "inverted":Z
    .restart local v17    # "inverted":Z
    :cond_4
    sget-object v22, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$BaseSecantSolver$Method:[I

    move-wide/from16 v23, v1

    .end local v1    # "x0":D
    .local v23, "x0":D
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->method:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->ordinal()I

    move-result v1

    aget v1, v22, v1

    packed-switch v1, :pswitch_data_0

    .line 201
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1

    .line 195
    :pswitch_0
    cmpl-double v1, v9, v3

    if-eqz v1, :cond_5

    move-wide/from16 v1, v23

    goto :goto_2

    .line 196
    :cond_5
    new-instance v1, Lorg/apache/commons/math3/exception/ConvergenceException;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>()V

    throw v1

    .line 190
    :pswitch_1
    add-double v1, v7, v18

    div-double v1, v7, v1

    mul-double/2addr v5, v1

    .line 191
    move-wide/from16 v1, v23

    goto :goto_2

    .line 187
    :pswitch_2
    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v1

    .line 188
    move-wide/from16 v1, v23

    .line 205
    .end local v23    # "x0":D
    .restart local v1    # "x0":D
    :goto_2
    move-wide v3, v9

    .line 206
    move-wide/from16 v7, v18

    .line 211
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v22

    cmpg-double v22, v22, v11

    if-gtz v22, :cond_6

    .line 212
    sget-object v22, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    move-wide/from16 v23, v1

    .end local v1    # "x0":D
    .restart local v23    # "x0":D
    iget-object v1, v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v1

    aget v1, v22, v1

    packed-switch v1, :pswitch_data_1

    .line 236
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1

    .line 231
    :pswitch_3
    cmpl-double v1, v7, v20

    if-ltz v1, :cond_7

    .line 232
    return-wide v3

    .line 226
    :pswitch_4
    cmpg-double v1, v7, v20

    if-gtz v1, :cond_7

    .line 227
    return-wide v3

    .line 221
    :pswitch_5
    if-nez v17, :cond_7

    .line 222
    return-wide v3

    .line 216
    :pswitch_6
    if-eqz v17, :cond_7

    .line 217
    return-wide v3

    .line 214
    :pswitch_7
    return-wide v3

    .line 211
    .end local v23    # "x0":D
    .restart local v1    # "x0":D
    :cond_6
    move-wide/from16 v23, v1

    .line 242
    .end local v1    # "x0":D
    .restart local v23    # "x0":D
    :cond_7
    sub-double v1, v3, v23

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    move-wide/from16 v27, v1

    mul-double v1, v15, v25

    invoke-static {v1, v2, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    cmpg-double v1, v27, v1

    if-gez v1, :cond_c

    .line 244
    sget-object v1, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$1;->$SwitchMap$org$apache$commons$math3$analysis$solvers$AllowedSolution:[I

    iget-object v2, v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_2

    .line 256
    new-instance v1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v1

    .line 254
    :pswitch_8
    cmpl-double v1, v7, v20

    if-ltz v1, :cond_8

    move-wide v1, v3

    goto :goto_3

    :cond_8
    move-wide/from16 v1, v23

    :goto_3
    return-wide v1

    .line 252
    :pswitch_9
    cmpg-double v1, v7, v20

    if-gtz v1, :cond_9

    move-wide v1, v3

    goto :goto_4

    :cond_9
    move-wide/from16 v1, v23

    :goto_4
    return-wide v1

    .line 250
    :pswitch_a
    if-eqz v17, :cond_a

    move-wide/from16 v1, v23

    goto :goto_5

    :cond_a
    move-wide v1, v3

    :goto_5
    return-wide v1

    .line 248
    :pswitch_b
    if-eqz v17, :cond_b

    move-wide v1, v3

    goto :goto_6

    :cond_b
    move-wide/from16 v1, v23

    :goto_6
    return-wide v1

    .line 246
    :pswitch_c
    return-wide v3

    .line 259
    .end local v9    # "x":D
    .end local v18    # "fx":D
    :cond_c
    move-wide/from16 v9, v20

    move-wide/from16 v1, v23

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D
    .locals 11
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "startValue"    # D

    .line 124
    sget-object v9, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v9

    return-wide v9
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 2
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "startValue"    # D
    .param p9, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 116
    iput-object p9, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->allowed:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 117
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 14
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p3, "min"    # D
    .param p5, "max"    # D
    .param p7, "allowedSolution"    # Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 109
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p5, p3

    mul-double/2addr v2, v0

    add-double v11, p3, v2

    move-object v4, p0

    move v5, p1

    move-object/from16 v6, p2

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move-object/from16 v13, p7

    invoke-virtual/range {v4 .. v13}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v0

    return-wide v0
.end method
