.class public Lorg/apache/commons/math3/optim/linear/SimplexSolver;
.super Lorg/apache/commons/math3/optim/linear/LinearOptimizer;
.source "SimplexSolver.java"


# static fields
.field static final DEFAULT_CUT_OFF:D = 1.0E-10

.field private static final DEFAULT_EPSILON:D = 1.0E-6

.field static final DEFAULT_ULPS:I = 0xa


# instance fields
.field private final cutOff:D

.field private final epsilon:D

.field private final maxUlps:I

.field private pivotSelection:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

.field private solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 100
    const/16 v3, 0xa

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const-wide v1, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;-><init>(DID)V

    .line 101
    return-void
.end method

.method public constructor <init>(D)V
    .locals 6
    .param p1, "epsilon"    # D

    .line 109
    const/16 v3, 0xa

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide v1, p1

    .end local p1    # "epsilon":D
    .local v1, "epsilon":D
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;-><init>(DID)V

    .line 110
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 6
    .param p1, "epsilon"    # D
    .param p3, "maxUlps"    # I

    .line 119
    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    .end local p1    # "epsilon":D
    .end local p3    # "maxUlps":I
    .local v1, "epsilon":D
    .local v3, "maxUlps":I
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;-><init>(DID)V

    .line 120
    return-void
.end method

.method public constructor <init>(DID)V
    .locals 1
    .param p1, "epsilon"    # D
    .param p3, "maxUlps"    # I
    .param p4, "cutOff"    # D

    .line 129
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;-><init>()V

    .line 130
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->epsilon:D

    .line 131
    iput p3, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->maxUlps:I

    .line 132
    iput-wide p4, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->cutOff:D

    .line 133
    sget-object v0, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->DANTZIG:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    iput-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->pivotSelection:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    .line 134
    return-void
.end method

.method private getPivotColumn(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)Ljava/lang/Integer;
    .locals 8
    .param p1, "tableau"    # Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    .line 196
    const-wide/16 v0, 0x0

    .line 197
    .local v0, "minValue":D
    const/4 v2, 0x0

    .line 198
    .local v2, "minPos":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 199
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v4

    .line 202
    .local v4, "entry":D
    cmpg-double v6, v4, v0

    if-gez v6, :cond_0

    .line 203
    move-wide v0, v4

    .line 204
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 207
    iget-object v6, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->pivotSelection:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    sget-object v7, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;->BLAND:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    if-ne v6, v7, :cond_0

    invoke-direct {p0, p1, v3}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->isValidPivotColumn(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 208
    goto :goto_1

    .line 198
    .end local v4    # "entry":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 212
    .end local v3    # "i":I
    :cond_1
    :goto_1
    return-object v2
.end method

.method private getPivotRow(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Ljava/lang/Integer;
    .locals 12
    .param p1, "tableau"    # Lorg/apache/commons/math3/optim/linear/SimplexTableau;
    .param p2, "col"    # I

    .line 248
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    .local v0, "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 250
    .local v1, "minRatio":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 251
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v4

    .line 252
    .local v4, "rhs":D
    invoke-virtual {p1, v3, p2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v6

    .line 256
    .local v6, "entry":D
    const-wide/16 v8, 0x0

    iget-wide v10, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->cutOff:D

    invoke-static/range {v6 .. v11}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v8

    if-lez v8, :cond_1

    .line 257
    div-double v8, v4, v6

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    .line 260
    .local v8, "ratio":D
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v10

    .line 261
    .local v10, "cmp":I
    if-nez v10, :cond_0

    .line 262
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 263
    :cond_0
    if-gez v10, :cond_1

    .line 264
    move-wide v1, v8

    .line 265
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    .end local v4    # "rhs":D
    .end local v6    # "entry":D
    .end local v8    # "ratio":D
    .end local v10    # "cmp":I
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    .end local v3    # "i":I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 272
    const/4 v3, 0x0

    return-object v3

    .line 273
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_9

    .line 277
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v3

    if-lez v3, :cond_6

    .line 278
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 279
    .local v4, "row":Ljava/lang/Integer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 280
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v6

    add-int/2addr v6, v5

    .line 281
    .local v6, "column":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7, v6}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v7

    .line 282
    .local v7, "entry":D
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    iget v11, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->maxUlps:I

    invoke-static {v7, v8, v9, v10, v11}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p1, v6}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 283
    return-object v4

    .line 279
    .end local v6    # "column":I
    .end local v7    # "entry":D
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 286
    .end local v4    # "row":Ljava/lang/Integer;
    .end local v5    # "i":I
    :cond_5
    goto :goto_2

    .line 295
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    const/4 v3, 0x0

    .line 296
    .local v3, "minRow":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getWidth()I

    move-result v4

    .line 297
    .local v4, "minIndex":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 298
    .local v6, "row":Ljava/lang/Integer;
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getBasicVariable(I)I

    move-result v7

    .line 299
    .local v7, "basicVar":I
    if-ge v7, v4, :cond_7

    .line 300
    move v4, v7

    .line 301
    move-object v3, v6

    .line 303
    .end local v6    # "row":Ljava/lang/Integer;
    .end local v7    # "basicVar":I
    :cond_7
    goto :goto_4

    .line 304
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_8
    return-object v3

    .line 306
    .end local v3    # "minRow":Ljava/lang/Integer;
    .end local v4    # "minIndex":I
    :cond_9
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    return-object v3
.end method

.method private isValidPivotColumn(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Z
    .locals 8
    .param p1, "tableau"    # Lorg/apache/commons/math3/optim/linear/SimplexTableau;
    .param p2, "col"    # I

    .line 228
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 229
    invoke-virtual {p1, v0, p2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    .line 232
    .local v2, "entry":D
    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->cutOff:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v1

    if-lez v1, :cond_0

    .line 233
    const/4 v1, 0x1

    return v1

    .line 228
    .end local v2    # "entry":D
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method protected doIteration(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V
    .locals 4
    .param p1, "tableau"    # Lorg/apache/commons/math3/optim/linear/SimplexTableau;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;,
            Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;
        }
    .end annotation

    .line 320
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->incrementIterationCount()V

    .line 322
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getPivotColumn(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)Ljava/lang/Integer;

    move-result-object v0

    .line 323
    .local v0, "pivotCol":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getPivotRow(Lorg/apache/commons/math3/optim/linear/SimplexTableau;I)Ljava/lang/Integer;

    move-result-object v1

    .line 324
    .local v1, "pivotRow":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->performRowOperations(II)V

    .line 329
    return-void

    .line 325
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;

    invoke-direct {v2}, Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;-><init>()V

    throw v2
.end method

.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .line 65
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;,
            Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->setTableau(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    .line 372
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/optim/linear/SimplexTableau;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getFunction()Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getConstraints()Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->isRestrictedToNonNegative()Z

    move-result v6

    iget-wide v7, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->epsilon:D

    iget v9, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->maxUlps:I

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;-><init>(Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;ZDI)V

    .line 380
    .local v2, "tableau":Lorg/apache/commons/math3/optim/linear/SimplexTableau;
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solvePhase1(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    .line 381
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->dropPhase1Objective()V

    .line 384
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/linear/SolutionCallback;->setTableau(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    .line 388
    :cond_1
    :goto_0
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_2

    .line 389
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    goto :goto_0

    .line 396
    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getSolution()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    .line 397
    .local v0, "solution":Lorg/apache/commons/math3/optim/PointValuePair;
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->isRestrictedToNonNegative()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 398
    invoke-virtual {v0}, Lorg/apache/commons/math3/optim/PointValuePair;->getPoint()[D

    move-result-object v1

    .line 399
    .local v1, "coeff":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 400
    aget-wide v5, v1, v3

    const-wide/16 v7, 0x0

    iget-wide v9, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->epsilon:D

    invoke-static/range {v5 .. v10}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDD)I

    move-result v4

    if-ltz v4, :cond_3

    .line 399
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 401
    :cond_3
    new-instance v4, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;

    invoke-direct {v4}, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;-><init>()V

    throw v4

    .line 405
    .end local v1    # "coeff":[D
    .end local v3    # "i":I
    :cond_4
    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 65
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 154
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .line 172
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    .line 177
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 178
    .local v3, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v3, Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    if-eqz v4, :cond_0

    .line 179
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    iput-object v4, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->solutionCallback:Lorg/apache/commons/math3/optim/linear/SolutionCallback;

    .line 180
    goto :goto_1

    .line 182
    :cond_0
    instance-of v4, v3, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    if-eqz v4, :cond_1

    .line 183
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    iput-object v4, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->pivotSelection:Lorg/apache/commons/math3/optim/linear/PivotSelectionRule;

    .line 184
    nop

    .line 177
    .end local v3    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 187
    .end local v0    # "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_2
    return-void
.end method

.method protected solvePhase1(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V
    .locals 8
    .param p1, "tableau"    # Lorg/apache/commons/math3/optim/linear/SimplexTableau;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;,
            Lorg/apache/commons/math3/optim/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .line 345
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v0

    if-nez v0, :cond_0

    .line 346
    return-void

    .line 349
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 350
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optim/linear/SimplexTableau;)V

    goto :goto_0

    .line 354
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getRhsOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/optim/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/optim/linear/SimplexSolver;->epsilon:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 357
    return-void

    .line 355
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;

    invoke-direct {v0}, Lorg/apache/commons/math3/optim/linear/NoFeasibleSolutionException;-><init>()V

    throw v0
.end method
