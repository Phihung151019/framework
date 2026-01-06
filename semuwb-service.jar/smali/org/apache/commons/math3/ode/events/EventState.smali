.class public Lorg/apache/commons/math3/ode/events/EventState;
.super Ljava/lang/Object;
.source "EventState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
    }
.end annotation


# instance fields
.field private final convergence:D

.field private expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

.field private forward:Z

.field private g0:D

.field private g0Positive:Z

.field private final handler:Lorg/apache/commons/math3/ode/events/EventHandler;

.field private increasing:Z

.field private final maxCheckInterval:D

.field private final maxIterationCount:I

.field private nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field private pendingEvent:Z

.field private pendingEventTime:D

.field private previousEventTime:D

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

.field private t0:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/EventHandler;DDILorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 4
    .param p1, "handler"    # Lorg/apache/commons/math3/ode/events/EventHandler;
    .param p2, "maxCheckInterval"    # D
    .param p4, "convergence"    # D
    .param p6, "maxIterationCount"    # I
    .param p7, "solver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    .line 108
    iput-wide p2, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    .line 109
    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    .line 110
    iput p6, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    .line 111
    iput-object p7, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .line 114
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .line 115
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 116
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 117
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 118
    const/4 v3, 0x0

    iput-boolean v3, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    .line 119
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 120
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    .line 121
    iput-boolean v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    .line 122
    sget-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    .line 124
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/events/EventState;
    .param p1, "x1"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 45
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/ode/events/EventState;)Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/events/EventState;

    .line 45
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object v0
.end method

.method private getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D
    .locals 7
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;

    .line 202
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getTotalDimension()I

    move-result v0

    new-array v0, v0, [D

    .line 204
    .local v0, "complete":[D
    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getPrimaryMapper()Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v1

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedState()[D

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, "index":I
    iget-object v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    invoke-virtual {v2}, Lorg/apache/commons/math3/ode/ExpandableStatefulODE;->getSecondaryMappers()[Lorg/apache/commons/math3/ode/EquationsMapper;

    move-result-object v2

    .local v2, "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    array-length v3, v2

    .local v3, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 208
    .local v5, "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "index":I
    .local v6, "index":I
    invoke-interface {p1, v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getInterpolatedSecondaryState(I)[D

    move-result-object v1

    invoke-virtual {v5, v1, v0}, Lorg/apache/commons/math3/ode/EquationsMapper;->insertEquationData([D[D)V

    .line 207
    .end local v5    # "secondary":Lorg/apache/commons/math3/ode/EquationsMapper;
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    goto :goto_0

    .line 212
    .end local v2    # "arr$":[Lorg/apache/commons/math3/ode/EquationsMapper;
    .end local v3    # "len$":I
    .end local v4    # "i$":I
    .end local v6    # "index":I
    .restart local v1    # "index":I
    :cond_0
    return-object v0
.end method


# virtual methods
.method public evaluateStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)Z
    .locals 34
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 228
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    :try_start_0
    invoke-interface {v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->isForward()Z

    move-result v0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    .line 229
    invoke-interface {v2}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getCurrentTime()D

    move-result-wide v3

    .line 230
    .local v3, "t1":D
    iget-wide v5, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    sub-double v5, v3, v5

    .line 231
    .local v5, "dt":D
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    iget-wide v9, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v7, v9

    const/4 v7, 0x0

    if-gez v0, :cond_0

    .line 233
    return v7

    .line 235
    :cond_0
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    iget-wide v10, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    const/4 v8, 0x1

    invoke-static {v8, v0}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    .line 236
    .local v0, "n":I
    int-to-double v9, v0

    div-double v9, v5, v9

    .line 238
    .local v9, "h":D
    new-instance v11, Lorg/apache/commons/math3/ode/events/EventState$1;

    invoke-direct {v11, v1, v2}, Lorg/apache/commons/math3/ode/events/EventState$1;-><init>(Lorg/apache/commons/math3/ode/events/EventState;Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V

    move-object v14, v11

    .line 250
    .local v14, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    iget-wide v11, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 251
    .local v11, "ta":D
    iget-wide v7, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 252
    .local v7, "ga":D
    const/4 v13, 0x0

    move-wide/from16 v17, v11

    move v11, v13

    .local v11, "i":I
    .local v17, "ta":D
    :goto_0
    if-ge v11, v0, :cond_13

    .line 255
    add-int/lit8 v12, v0, -0x1

    if-ne v11, v12, :cond_1

    move-wide v15, v3

    move-wide/from16 v23, v15

    goto :goto_1

    :cond_1
    iget-wide v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    add-int/lit8 v15, v11, 0x1

    move-wide/from16 v23, v3

    .end local v3    # "t1":D
    .local v23, "t1":D
    int-to-double v3, v15

    mul-double/2addr v3, v9

    add-double/2addr v12, v3

    move-wide v15, v12

    :goto_1
    move-wide v3, v15

    .line 256
    .local v3, "tb":D
    invoke-interface {v2, v3, v4}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 257
    iget-object v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v13

    invoke-interface {v12, v3, v4, v13}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v12

    move-wide/from16 v25, v12

    .line 260
    .local v25, "gb":D
    iget-boolean v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    const-wide/16 v27, 0x0

    cmpl-double v13, v25, v27

    if-ltz v13, :cond_2

    const/4 v13, 0x1

    goto :goto_2

    :cond_2
    const/4 v13, 0x0

    :goto_2
    xor-int/2addr v12, v13

    if-eqz v12, :cond_12

    .line 264
    cmpl-double v12, v25, v7

    if-ltz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_3
    const/4 v12, 0x0

    :goto_3
    iput-boolean v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    .line 268
    iget-object v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    instance-of v12, v12, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    if-eqz v12, :cond_5

    .line 270
    iget-object v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    check-cast v12, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;

    .line 272
    .local v12, "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    iget-boolean v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v13, :cond_4

    iget v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    sget-object v19, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-wide/from16 v15, v17

    move-wide/from16 v17, v3

    .end local v3    # "tb":D
    .local v15, "ta":D
    .local v17, "tb":D
    invoke-interface/range {v12 .. v19}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v3

    move-wide/from16 v32, v17

    move-wide/from16 v17, v15

    move-wide/from16 v15, v32

    .local v15, "tb":D
    .local v17, "ta":D
    goto :goto_4

    .end local v15    # "tb":D
    .restart local v3    # "tb":D
    :cond_4
    move-wide v15, v3

    .end local v3    # "tb":D
    .restart local v15    # "tb":D
    iget v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    sget-object v19, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-interface/range {v12 .. v19}, Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v3

    .line 275
    .end local v12    # "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    .local v3, "root":D
    :goto_4
    move/from16 v29, v0

    move-wide/from16 v30, v5

    goto/16 :goto_7

    .line 276
    .end local v15    # "tb":D
    .local v3, "tb":D
    :cond_5
    move-wide v15, v3

    .end local v3    # "tb":D
    .restart local v15    # "tb":D
    iget-boolean v3, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v3, :cond_6

    iget-object v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    iget v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    move-wide/from16 v32, v17

    move-wide/from16 v17, v15

    move-wide/from16 v15, v32

    .local v15, "ta":D
    .local v17, "tb":D
    invoke-interface/range {v12 .. v18}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v3

    move-wide/from16 v32, v17

    move-wide/from16 v17, v15

    move-wide/from16 v15, v32

    .local v15, "tb":D
    .local v17, "ta":D
    goto :goto_5

    :cond_6
    iget-object v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    iget v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    invoke-interface/range {v12 .. v18}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v3

    .line 279
    .local v3, "baseRoot":D
    :goto_5
    iget v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    iget-object v13, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v13}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getEvaluations()I

    move-result v13

    sub-int/2addr v12, v13

    .line 280
    .local v12, "remainingEval":I
    new-instance v13, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;

    move/from16 v29, v0

    .end local v0    # "n":I
    .local v29, "n":I
    iget-object v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    move-wide/from16 v19, v3

    .end local v3    # "baseRoot":D
    .local v19, "baseRoot":D
    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v2

    iget-object v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    move-wide/from16 v30, v5

    .end local v5    # "dt":D
    .local v30, "dt":D
    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v4

    invoke-direct {v13, v2, v3, v4, v5}, Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;-><init>(DD)V

    .line 282
    .local v13, "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    iget-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v0, :cond_7

    sget-object v21, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->RIGHT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v32, v14

    move-object v14, v13

    move-object/from16 v13, v32

    move-wide/from16 v32, v19

    move-wide/from16 v19, v15

    move-wide/from16 v15, v32

    .local v13, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .local v14, "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    .local v15, "baseRoot":D
    .local v19, "tb":D
    invoke-static/range {v12 .. v21}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v2

    move-object/from16 v32, v14

    move-object v14, v13

    move-object/from16 v13, v32

    move-wide/from16 v32, v19

    move-wide/from16 v19, v15

    move-wide/from16 v15, v32

    .local v13, "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    .local v14, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .local v15, "tb":D
    .local v19, "baseRoot":D
    goto :goto_6

    :cond_7
    sget-object v21, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->LEFT_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object/from16 v32, v14

    move-object v14, v13

    move-object/from16 v13, v32

    move-wide/from16 v32, v17

    move-wide/from16 v17, v15

    move-wide/from16 v15, v19

    move-wide/from16 v19, v32

    .local v13, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .local v14, "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    .local v15, "baseRoot":D
    .local v17, "tb":D
    .local v19, "ta":D
    invoke-static/range {v12 .. v21}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->forceSide(ILorg/apache/commons/math3/analysis/UnivariateFunction;Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v2

    move-object/from16 v32, v14

    move-object v14, v13

    move-object/from16 v13, v32

    move-wide/from16 v32, v19

    move-wide/from16 v19, v15

    move-wide/from16 v15, v17

    move-wide/from16 v17, v32

    .local v13, "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    .local v14, "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .local v15, "tb":D
    .local v17, "ta":D
    .local v19, "baseRoot":D
    :goto_6
    move-wide v3, v2

    .line 289
    .end local v12    # "remainingEval":I
    .end local v13    # "bracketing":Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;, "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<Lorg/apache/commons/math3/analysis/UnivariateFunction;>;"
    .end local v19    # "baseRoot":D
    .local v3, "root":D
    :goto_7
    iget-wide v5, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_f

    sub-double v5, v3, v17

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    iget-wide v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v5, v12

    if-gtz v0, :cond_f

    iget-wide v5, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    sub-double v5, v3, v5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    iget-wide v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v5, v12

    if-gtz v0, :cond_f

    .line 297
    :goto_8
    iget-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v0, :cond_8

    iget-wide v5, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    add-double v5, v17, v5

    goto :goto_9

    :cond_8
    iget-wide v5, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    sub-double v5, v17, v5

    .line 298
    .end local v17    # "ta":D
    .local v5, "ta":D
    :goto_9
    invoke-interface {v14, v5, v6}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v12

    move-wide v7, v12

    .line 299
    iget-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    cmpl-double v2, v7, v27

    if-ltz v2, :cond_9

    const/4 v2, 0x1

    goto :goto_a

    :cond_9
    const/4 v2, 0x0

    :goto_a
    xor-int/2addr v0, v2

    if-eqz v0, :cond_c

    iget-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    cmpl-double v2, v5, v15

    if-ltz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    xor-int/2addr v0, v2

    if-nez v0, :cond_b

    goto :goto_c

    :cond_b
    move-wide/from16 v17, v5

    goto :goto_8

    .line 301
    :cond_c
    :goto_c
    iget-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    cmpl-double v2, v5, v15

    if-ltz v2, :cond_d

    const/4 v2, 0x1

    goto :goto_d

    :cond_d
    const/4 v2, 0x0

    :goto_d
    xor-int/2addr v0, v2

    if-eqz v0, :cond_e

    .line 303
    add-int/lit8 v11, v11, -0x1

    goto :goto_e

    .line 308
    :cond_e
    iput-wide v3, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 309
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    .line 310
    return v0

    .line 312
    .end local v5    # "ta":D
    .restart local v17    # "ta":D
    :cond_f
    iget-wide v5, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_11

    iget-wide v5, v1, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    sub-double/2addr v5, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    iget-wide v12, v1, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpl-double v0, v5, v12

    if-lez v0, :cond_10

    goto :goto_f

    .line 319
    :cond_10
    move-wide v5, v15

    .line 320
    .end local v17    # "ta":D
    .restart local v5    # "ta":D
    move-wide/from16 v7, v25

    .line 323
    .end local v3    # "root":D
    :goto_e
    move-wide/from16 v17, v5

    goto :goto_10

    .line 314
    .end local v5    # "ta":D
    .restart local v3    # "root":D
    .restart local v17    # "ta":D
    :cond_11
    :goto_f
    iput-wide v3, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 315
    const/4 v0, 0x1

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    .line 316
    return v0

    .line 325
    .end local v15    # "tb":D
    .end local v29    # "n":I
    .end local v30    # "dt":D
    .restart local v0    # "n":I
    .local v3, "tb":D
    .local v5, "dt":D
    :cond_12
    move/from16 v29, v0

    move-wide v15, v3

    move-wide/from16 v30, v5

    .end local v0    # "n":I
    .end local v3    # "tb":D
    .end local v5    # "dt":D
    .restart local v15    # "tb":D
    .restart local v29    # "n":I
    .restart local v30    # "dt":D
    move-wide v2, v15

    .line 326
    .end local v17    # "ta":D
    .local v2, "ta":D
    move-wide/from16 v4, v25

    move-wide/from16 v17, v2

    move-wide v7, v4

    .line 252
    .end local v2    # "ta":D
    .end local v15    # "tb":D
    .end local v25    # "gb":D
    .restart local v17    # "ta":D
    :goto_10
    const/16 v22, 0x1

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v2, p1

    move-wide/from16 v3, v23

    move/from16 v0, v29

    move-wide/from16 v5, v30

    goto/16 :goto_0

    .end local v23    # "t1":D
    .end local v29    # "n":I
    .end local v30    # "dt":D
    .restart local v0    # "n":I
    .local v3, "t1":D
    .restart local v5    # "dt":D
    :cond_13
    move/from16 v29, v0

    move-wide/from16 v23, v3

    move-wide/from16 v30, v5

    .line 332
    .end local v0    # "n":I
    .end local v3    # "t1":D
    .end local v5    # "dt":D
    .end local v11    # "i":I
    .restart local v23    # "t1":D
    .restart local v29    # "n":I
    .restart local v30    # "dt":D
    const/4 v0, 0x0

    iput-boolean v0, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    .line 333
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, v1, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D
    :try_end_0
    .catch Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return v0

    .line 336
    .end local v7    # "ga":D
    .end local v9    # "h":D
    .end local v14    # "f":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .end local v17    # "ta":D
    .end local v23    # "t1":D
    .end local v29    # "n":I
    .end local v30    # "dt":D
    :catch_0
    move-exception v0

    .line 337
    .local v0, "lmcee":Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;
    invoke-virtual {v0}, Lorg/apache/commons/math3/ode/events/EventState$LocalMaxCountExceededException;->getException()Lorg/apache/commons/math3/exception/MaxCountExceededException;

    move-result-object v2

    throw v2
.end method

.method public getConvergence()D
    .locals 2

    .line 151
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    return-wide v0
.end method

.method public getEventHandler()Lorg/apache/commons/math3/ode/events/EventHandler;
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    return-object v0
.end method

.method public getEventTime()D
    .locals 2

    .line 347
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_0
    return-wide v0
.end method

.method public getMaxCheckInterval()D
    .locals 2

    .line 144
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxCheckInterval:D

    return-wide v0
.end method

.method public getMaxIterationCount()I
    .locals 1

    .line 158
    iget v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->maxIterationCount:I

    return v0
.end method

.method public reinitializeBegin(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)V
    .locals 8
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 169
    invoke-interface {p1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->getPreviousTime()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 170
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 171
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-wide v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 172
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 186
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v0

    iget-object v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    .line 188
    .local v0, "epsilon":D
    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v0

    add-double/2addr v4, v6

    .line 189
    .local v4, "tStart":D
    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/ode/sampling/StepInterpolator;->setInterpolatedTime(D)V

    .line 190
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/events/EventState;->getCompleteState(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;)[D

    move-result-object v7

    invoke-interface {v6, v4, v5, v7}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v6

    iput-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 192
    .end local v0    # "epsilon":D
    .end local v4    # "tStart":D
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 194
    return-void
.end method

.method public reset(D[D)Z
    .locals 6
    .param p1, "t"    # D
    .param p3, "y"    # [D

    .line 391
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v2, v4

    if-lez v0, :cond_0

    goto :goto_0

    .line 395
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v2, :cond_1

    .line 396
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->resetState(D[D)V

    .line 398
    :cond_1
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    .line 399
    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    iput-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    .line 401
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v2, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1

    .line 392
    :cond_4
    :goto_0
    return v1
.end method

.method public setExpandable(Lorg/apache/commons/math3/ode/ExpandableStatefulODE;)V
    .locals 0
    .param p1, "expandable"    # Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .line 137
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->expandable:Lorg/apache/commons/math3/ode/ExpandableStatefulODE;

    .line 138
    return-void
.end method

.method public stepAccepted(D[D)V
    .locals 6
    .param p1, "t"    # D
    .param p3, "y"    # [D

    .line 360
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->t0:D

    .line 361
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    .line 363
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->pendingEventTime:D

    sub-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/ode/events/EventState;->convergence:D

    cmpg-double v0, v2, v4

    if-gtz v0, :cond_0

    .line 365
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventState;->previousEventTime:D

    .line 366
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 367
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->handler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-boolean v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->increasing:Z

    iget-boolean v3, p0, Lorg/apache/commons/math3/ode/events/EventState;->forward:Z

    xor-int/2addr v2, v3

    xor-int/2addr v1, v2

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/apache/commons/math3/ode/events/EventHandler;->eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    goto :goto_1

    .line 369
    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lorg/apache/commons/math3/ode/events/EventState;->g0Positive:Z

    .line 370
    sget-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    .line 372
    :goto_1
    return-void
.end method

.method public stop()Z
    .locals 2

    .line 379
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventState;->nextAction:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->STOP:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
