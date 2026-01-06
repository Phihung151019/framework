.class public Lorg/apache/commons/math3/ode/events/FieldEventState;
.super Ljava/lang/Object;
.source "FieldEventState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/RealFieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final convergence:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private forward:Z

.field private g0:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private g0Positive:Z

.field private final handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private increasing:Z

.field private final maxCheckInterval:D

.field private final maxIterationCount:I

.field private nextAction:Lorg/apache/commons/math3/ode/events/Action;

.field private pendingEvent:Z

.field private pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private previousEventTime:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<",
            "TT;>;"
        }
    .end annotation
.end field

.field private t0:Lorg/apache/commons/math3/RealFieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/FieldEventHandler;DLorg/apache/commons/math3/RealFieldElement;ILorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;)V
    .locals 3
    .param p2, "maxCheckInterval"    # D
    .param p5, "maxIterationCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler<",
            "TT;>;DTT;I",
            "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<",
            "TT;>;)V"
        }
    .end annotation

    .line 102
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .local p1, "handler":Lorg/apache/commons/math3/ode/events/FieldEventHandler;, "Lorg/apache/commons/math3/ode/events/FieldEventHandler<TT;>;"
    .local p4, "convergence":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local p6, "solver":Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    .line 104
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxCheckInterval:D

    .line 105
    invoke-interface {p4}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    .line 106
    iput p5, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxIterationCount:I

    .line 107
    iput-object p6, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    .line 111
    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 112
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    .line 113
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    .line 114
    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 115
    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 116
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->increasing:Z

    .line 117
    sget-object v0, Lorg/apache/commons/math3/ode/events/Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/Action;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    .line 119
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ode/events/FieldEventState;)Lorg/apache/commons/math3/ode/events/FieldEventHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/events/FieldEventState;

    .line 44
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    return-object v0
.end method


# virtual methods
.method public evaluateStep(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)Z
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .local p1, "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->isForward()Z

    move-result v2

    iput-boolean v2, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    .line 195
    invoke-interface {v1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getCurrentState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v2

    .line 196
    .local v2, "s1":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v3

    .line 197
    .local v3, "t1":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v4, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/RealFieldElement;

    .line 198
    .local v4, "dt":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    const/4 v6, 0x0

    if-gez v5, :cond_0

    .line 200
    return v6

    .line 202
    :cond_0
    invoke-interface {v4}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    iget-wide v11, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxCheckInterval:D

    div-double/2addr v9, v11

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v9

    double-to-int v5, v9

    const/4 v9, 0x1

    invoke-static {v9, v5}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v5

    .line 203
    .local v5, "n":I
    int-to-double v10, v5

    invoke-interface {v4, v10, v11}, Lorg/apache/commons/math3/RealFieldElement;->divide(D)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/RealFieldElement;

    .line 205
    .local v10, "h":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    new-instance v11, Lorg/apache/commons/math3/ode/events/FieldEventState$1;

    invoke-direct {v11, v0, v1}, Lorg/apache/commons/math3/ode/events/FieldEventState$1;-><init>(Lorg/apache/commons/math3/ode/events/FieldEventState;Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)V

    move-object v14, v11

    .line 212
    .local v14, "f":Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;, "Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction<TT;>;"
    iget-object v11, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    .line 213
    .local v11, "ta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v12, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 214
    .local v12, "ga":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    const/4 v13, 0x0

    move-object v15, v11

    move-object v11, v12

    move v12, v13

    .local v11, "ga":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v12, "i":I
    .local v15, "ta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_0
    if-ge v12, v5, :cond_10

    .line 217
    add-int/lit8 v13, v5, -0x1

    if-ne v12, v13, :cond_1

    move-object/from16 v16, v3

    move-wide/from16 v18, v7

    goto :goto_1

    :cond_1
    iget-object v13, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    move-wide/from16 v18, v7

    add-int/lit8 v7, v12, 0x1

    invoke-interface {v10, v7}, Lorg/apache/commons/math3/RealFieldElement;->multiply(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v13, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/RealFieldElement;

    move-object/from16 v16, v7

    :goto_1
    move-object/from16 v7, v16

    .line 218
    .local v7, "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v8, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {v1, v7}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v13

    invoke-interface {v8, v13}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v8

    .line 221
    .local v8, "gb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-boolean v13, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    invoke-interface {v8}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    cmpl-double v16, v16, v18

    if-ltz v16, :cond_2

    move/from16 v16, v9

    goto :goto_2

    :cond_2
    move/from16 v16, v6

    :goto_2
    xor-int v13, v13, v16

    if-eqz v13, :cond_f

    .line 225
    invoke-interface {v8, v11}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v13}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v16

    cmpl-double v13, v16, v18

    if-ltz v13, :cond_3

    move v13, v9

    goto :goto_3

    :cond_3
    move v13, v6

    :goto_3
    iput-boolean v13, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->increasing:Z

    .line 228
    iget-boolean v13, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    if-eqz v13, :cond_4

    move v13, v12

    .end local v12    # "i":I
    .local v13, "i":I
    iget-object v12, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    move/from16 v16, v13

    .end local v13    # "i":I
    .local v16, "i":I
    iget v13, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxIterationCount:I

    sget-object v17, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move/from16 v22, v16

    move-object/from16 v16, v7

    move/from16 v7, v22

    .local v7, "i":I
    .local v16, "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v12 .. v17}, Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    move-object/from16 v13, v16

    goto :goto_4

    .end local v16    # "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v7, "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v12    # "i":I
    :cond_4
    move-object/from16 v16, v7

    move v7, v12

    .end local v12    # "i":I
    .local v7, "i":I
    .restart local v16    # "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v12, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    iget v13, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxIterationCount:I

    sget-object v17, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v22, v16

    move-object/from16 v16, v15

    move-object/from16 v15, v22

    .local v15, "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v16, "ta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    invoke-interface/range {v12 .. v17}, Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/RealFieldElement;Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v12

    move-object v13, v15

    move-object/from16 v15, v16

    .line 232
    .end local v16    # "ta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v12, "root":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v13, "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v15, "ta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_4
    iget-object v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v6, :cond_c

    invoke-interface {v12, v15}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v20

    cmpg-double v6, v20, v18

    if-gtz v6, :cond_c

    iget-object v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v12, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v20

    cmpg-double v6, v20, v18

    if-gtz v6, :cond_c

    .line 240
    :cond_5
    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    if-eqz v6, :cond_6

    iget-object v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v6}, Lorg/apache/commons/math3/RealFieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_5

    :cond_6
    iget-object v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v15, v6}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_5
    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    move-object v15, v6

    .line 241
    invoke-interface {v14, v15}, Lorg/apache/commons/math3/analysis/RealFieldUnivariateFunction;->value(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v11

    .line 242
    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    invoke-interface {v11}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v20

    cmpl-double v9, v20, v18

    if-ltz v9, :cond_7

    const/4 v9, 0x1

    goto :goto_6

    :cond_7
    const/4 v9, 0x0

    :goto_6
    xor-int/2addr v6, v9

    if-eqz v6, :cond_9

    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    invoke-interface {v15, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v20

    cmpl-double v9, v20, v18

    if-ltz v9, :cond_8

    const/4 v9, 0x1

    goto :goto_7

    :cond_8
    const/4 v9, 0x0

    :goto_7
    xor-int/2addr v6, v9

    if-nez v6, :cond_5

    .line 244
    :cond_9
    iget-boolean v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    invoke-interface {v15, v13}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v9}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v20

    cmpl-double v9, v20, v18

    if-ltz v9, :cond_a

    const/4 v9, 0x1

    goto :goto_8

    :cond_a
    const/4 v9, 0x0

    :goto_8
    xor-int/2addr v6, v9

    if-eqz v6, :cond_b

    .line 246
    add-int/lit8 v6, v7, -0x1

    move v12, v6

    .end local v7    # "i":I
    .local v6, "i":I
    goto :goto_9

    .line 251
    .end local v6    # "i":I
    .restart local v7    # "i":I
    :cond_b
    iput-object v12, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 252
    const/4 v6, 0x1

    iput-boolean v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    .line 253
    return v6

    .line 255
    :cond_c
    iget-object v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    if-eqz v6, :cond_e

    iget-object v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v12}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v9, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6, v9}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v6}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v20

    cmpl-double v6, v20, v18

    if-lez v6, :cond_d

    goto :goto_a

    .line 262
    :cond_d
    move-object v15, v13

    .line 263
    move-object v11, v8

    move v12, v7

    .line 266
    .end local v7    # "i":I
    .local v12, "i":I
    :goto_9
    const/4 v6, 0x1

    goto :goto_b

    .line 257
    .restart local v7    # "i":I
    .local v12, "root":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_e
    :goto_a
    iput-object v12, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 258
    const/4 v6, 0x1

    iput-boolean v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    .line 259
    return v6

    .line 268
    .end local v13    # "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v7, "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v12, "i":I
    :cond_f
    move-object v13, v7

    move v6, v9

    move v7, v12

    .end local v12    # "i":I
    .local v7, "i":I
    .restart local v13    # "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object v9, v13

    .line 269
    .end local v15    # "ta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .local v9, "ta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    move-object v11, v8

    move-object v15, v9

    .line 214
    .end local v7    # "i":I
    .end local v8    # "gb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v9    # "ta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .end local v13    # "tb":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    .restart local v12    # "i":I
    .restart local v15    # "ta":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :goto_b
    add-int/2addr v12, v6

    move v9, v6

    move-wide/from16 v7, v18

    const/4 v6, 0x0

    goto/16 :goto_0

    .line 275
    .end local v12    # "i":I
    :cond_10
    const/4 v6, 0x0

    iput-boolean v6, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    .line 276
    const/4 v7, 0x0

    iput-object v7, v0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 277
    return v6
.end method

.method public getConvergence()Lorg/apache/commons/math3/RealFieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    return-object v0
.end method

.method public getEventHandler()Lorg/apache/commons/math3/ode/events/FieldEventHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/ode/events/FieldEventHandler<",
            "TT;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    return-object v0
.end method

.method public getEventTime()Lorg/apache/commons/math3/RealFieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 286
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-boolean v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    if-eqz v1, :cond_1

    const-wide/high16 v1, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    :goto_1
    return-object v0
.end method

.method public getMaxCheckInterval()D
    .locals 2

    .line 132
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxCheckInterval:D

    return-wide v0
.end method

.method public getMaxIterationCount()I
    .locals 1

    .line 146
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->maxIterationCount:I

    return v0
.end method

.method public reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 157
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .local p1, "interpolator":Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;, "Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator<TT;>;"
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getPreviousState()Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v0

    .line 158
    .local v0, "s0":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    .line 159
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 160
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    .line 174
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    invoke-interface {v1}, Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;->getAbsoluteAccuracy()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    iget-object v5, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->solver:Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;

    invoke-interface {v5}, Lorg/apache/commons/math3/analysis/solvers/BracketedRealFieldUnivariateSolver;->getRelativeAccuracy()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5, v6}, Lorg/apache/commons/math3/RealFieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v5}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    .line 176
    .local v1, "epsilon":D
    iget-object v5, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v1

    invoke-interface {v5, v6, v7}, Lorg/apache/commons/math3/RealFieldElement;->add(D)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/RealFieldElement;

    .line 177
    .local v5, "tStart":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {p1, v5}, Lorg/apache/commons/math3/ode/sampling/FieldStepInterpolator;->getInterpolatedState(Lorg/apache/commons/math3/RealFieldElement;)Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v6

    iput-object v6, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 179
    .end local v1    # "epsilon":D
    .end local v5    # "tStart":Lorg/apache/commons/math3/RealFieldElement;, "TT;"
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v1}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v1

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    .line 181
    return-void
.end method

.method public reset(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/FieldODEState;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;)",
            "Lorg/apache/commons/math3/ode/FieldODEState<",
            "TT;>;"
        }
    .end annotation

    .line 325
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .local p1, "state":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_1

    .line 330
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/Action;

    if-ne v0, v2, :cond_1

    .line 331
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->resetState(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/ode/FieldODEState;

    move-result-object v0

    .local v0, "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    goto :goto_0

    .line 332
    .end local v0    # "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/Action;

    if-ne v0, v2, :cond_2

    .line 333
    move-object v0, p1

    .restart local v0    # "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    goto :goto_0

    .line 335
    .end local v0    # "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    :cond_2
    const/4 v0, 0x0

    .line 337
    .restart local v0    # "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    :goto_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    .line 338
    iput-object v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 340
    return-object v0

    .line 326
    .end local v0    # "newState":Lorg/apache/commons/math3/ode/FieldODEState;, "Lorg/apache/commons/math3/ode/FieldODEState<TT;>;"
    :cond_3
    :goto_1
    return-object v1
.end method

.method public stepAccepted(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<",
            "TT;>;)V"
        }
    .end annotation

    .line 296
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    .local p1, "state":Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;, "Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative<TT;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->t0:Lorg/apache/commons/math3/RealFieldElement;

    .line 297
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->g(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;)Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    .line 299
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEvent:Z

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->pendingEventTime:Lorg/apache/commons/math3/RealFieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->abs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->convergence:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0, v4}, Lorg/apache/commons/math3/RealFieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpg-double v0, v4, v2

    if-gtz v0, :cond_0

    .line 301
    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;->getTime()Lorg/apache/commons/math3/RealFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->previousEventTime:Lorg/apache/commons/math3/RealFieldElement;

    .line 302
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->increasing:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    .line 303
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->handler:Lorg/apache/commons/math3/ode/events/FieldEventHandler;

    iget-boolean v2, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->increasing:Z

    iget-boolean v3, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->forward:Z

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    invoke-interface {v0, p1, v1}, Lorg/apache/commons/math3/ode/events/FieldEventHandler;->eventOccurred(Lorg/apache/commons/math3/ode/FieldODEStateAndDerivative;Z)Lorg/apache/commons/math3/ode/events/Action;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    goto :goto_1

    .line 305
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0:Lorg/apache/commons/math3/RealFieldElement;

    invoke-interface {v0}, Lorg/apache/commons/math3/RealFieldElement;->getReal()D

    move-result-wide v4

    cmpl-double v0, v4, v2

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->g0Positive:Z

    .line 306
    sget-object v0, Lorg/apache/commons/math3/ode/events/Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/Action;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    .line 308
    :goto_1
    return-void
.end method

.method public stop()Z
    .locals 2

    .line 315
    .local p0, "this":Lorg/apache/commons/math3/ode/events/FieldEventState;, "Lorg/apache/commons/math3/ode/events/FieldEventState<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/FieldEventState;->nextAction:Lorg/apache/commons/math3/ode/events/Action;

    sget-object v1, Lorg/apache/commons/math3/ode/events/Action;->STOP:Lorg/apache/commons/math3/ode/events/Action;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
