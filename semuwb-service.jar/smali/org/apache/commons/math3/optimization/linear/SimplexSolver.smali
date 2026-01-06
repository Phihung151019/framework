.class public Lorg/apache/commons/math3/optimization/linear/SimplexSolver;
.super Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;
.source "SimplexSolver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_EPSILON:D = 1.0E-6

.field private static final DEFAULT_ULPS:I = 0xa


# instance fields
.field private final epsilon:D

.field private final maxUlps:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 53
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/16 v2, 0xa

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;-><init>(DI)V

    .line 54
    return-void
.end method

.method public constructor <init>(DI)V
    .locals 0
    .param p1, "epsilon"    # D
    .param p3, "maxUlps"    # I

    .line 61
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/linear/AbstractLinearOptimizer;-><init>()V

    .line 62
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->epsilon:D

    .line 63
    iput p3, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->maxUlps:I

    .line 64
    return-void
.end method

.method private getPivotColumn(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)Ljava/lang/Integer;
    .locals 7
    .param p1, "tableau"    # Lorg/apache/commons/math3/optimization/linear/SimplexTableau;

    .line 72
    const-wide/16 v0, 0x0

    .line 73
    .local v0, "minValue":D
    const/4 v2, 0x0

    .line 74
    .local v2, "minPos":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_1

    .line 75
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v4

    .line 78
    .local v4, "entry":D
    cmpg-double v6, v4, v0

    if-gez v6, :cond_0

    .line 79
    move-wide v0, v4

    .line 80
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 74
    .end local v4    # "entry":D
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method

.method private getPivotRow(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;I)Ljava/lang/Integer;
    .locals 13
    .param p1, "tableau"    # Lorg/apache/commons/math3/optimization/linear/SimplexTableau;
    .param p2, "col"    # I

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 96
    .local v1, "minRatio":D
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v3

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_2

    .line 97
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v4

    .line 98
    .local v4, "rhs":D
    invoke-virtual {p1, v3, p2}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v6

    .line 100
    .local v6, "entry":D
    const-wide/16 v8, 0x0

    iget v10, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->maxUlps:I

    invoke-static {v6, v7, v8, v9, v10}, Lorg/apache/commons/math3/util/Precision;->compareTo(DDI)I

    move-result v8

    if-lez v8, :cond_1

    .line 101
    div-double v8, v4, v6

    .line 104
    .local v8, "ratio":D
    invoke-static {v8, v9, v1, v2}, Ljava/lang/Double;->compare(DD)I

    move-result v10

    .line 105
    .local v10, "cmp":I
    if-nez v10, :cond_0

    .line 106
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_0
    if-gez v10, :cond_1

    .line 108
    move-wide v1, v8

    .line 109
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .end local v0    # "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local v11, "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v11

    .line 96
    .end local v4    # "rhs":D
    .end local v6    # "entry":D
    .end local v8    # "ratio":D
    .end local v10    # "cmp":I
    .end local v11    # "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .restart local v0    # "minRatioPositions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 115
    .end local v3    # "i":I
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 116
    const/4 v3, 0x0

    return-object v3

    .line 117
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v5, :cond_a

    .line 121
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v3

    if-lez v3, :cond_6

    .line 122
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

    .line 123
    .local v4, "row":Ljava/lang/Integer;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_3
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 124
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getArtificialVariableOffset()I

    move-result v7

    add-int/2addr v7, v6

    .line 125
    .local v7, "column":I
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {p1, v8, v7}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v8

    .line 126
    .local v8, "entry":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    iget v12, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->maxUlps:I

    invoke-static {v8, v9, v10, v11, v12}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-virtual {p1, v7}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 127
    return-object v4

    .line 123
    .end local v7    # "column":I
    .end local v8    # "entry":D
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 130
    .end local v4    # "row":Ljava/lang/Integer;
    .end local v6    # "i":I
    :cond_5
    goto :goto_2

    .line 142
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getIterations()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getMaxIterations()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    if-ge v3, v4, :cond_a

    .line 143
    const/4 v3, 0x0

    .line 144
    .local v3, "minRow":Ljava/lang/Integer;
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v4

    .line 145
    .local v4, "minIndex":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumObjectiveFunctions()I

    move-result v6

    .line 146
    .local v6, "varStart":I
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getWidth()I

    move-result v7

    sub-int/2addr v7, v5

    .line 147
    .local v7, "varEnd":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 148
    .local v8, "row":Ljava/lang/Integer;
    move v9, v6

    .local v9, "i":I
    :goto_5
    if-ge v9, v7, :cond_8

    invoke-virtual {v8, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 149
    invoke-virtual {p1, v9}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getBasicRow(I)Ljava/lang/Integer;

    move-result-object v10

    .line 150
    .local v10, "basicRow":Ljava/lang/Integer;
    if-eqz v10, :cond_7

    invoke-virtual {v10, v8}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    if-ge v9, v4, :cond_7

    .line 151
    move v4, v9

    .line 152
    move-object v3, v8

    .line 148
    .end local v10    # "basicRow":Ljava/lang/Integer;
    :cond_7
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 155
    .end local v8    # "row":Ljava/lang/Integer;
    .end local v9    # "i":I
    :cond_8
    goto :goto_4

    .line 156
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_9
    return-object v3

    .line 159
    .end local v3    # "minRow":Ljava/lang/Integer;
    .end local v4    # "minIndex":I
    .end local v6    # "varStart":I
    .end local v7    # "varEnd":I
    :cond_a
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    return-object v3
.end method


# virtual methods
.method protected doIteration(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V
    .locals 8
    .param p1, "tableau"    # Lorg/apache/commons/math3/optimization/linear/SimplexTableau;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;
        }
    .end annotation

    .line 171
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->incrementIterationsCounter()V

    .line 173
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getPivotColumn(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)Ljava/lang/Integer;

    move-result-object v0

    .line 174
    .local v0, "pivotCol":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getPivotRow(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;I)Ljava/lang/Integer;

    move-result-object v1

    .line 175
    .local v1, "pivotRow":Ljava/lang/Integer;
    if-eqz v1, :cond_2

    .line 180
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    .line 181
    .local v2, "pivotVal":D
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p1, v4, v2, v3}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->divideRow(ID)V

    .line 184
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getHeight()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 185
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 186
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v5

    .line 187
    .local v5, "multiplier":D
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {p1, v4, v7, v5, v6}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->subtractRow(IID)V

    .line 184
    .end local v5    # "multiplier":D
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    .end local v4    # "i":I
    :cond_1
    return-void

    .line 176
    .end local v2    # "pivotVal":D
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;

    invoke-direct {v2}, Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;-><init>()V

    throw v2
.end method

.method public doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .line 221
    new-instance v0, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getFunction()Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getConstraints()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->restrictToNonNegative()Z

    move-result v4

    iget-wide v5, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->epsilon:D

    iget v7, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->maxUlps:I

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;-><init>(Lorg/apache/commons/math3/optimization/linear/LinearObjectiveFunction;Ljava/util/Collection;Lorg/apache/commons/math3/optimization/GoalType;ZDI)V

    .line 229
    .local v0, "tableau":Lorg/apache/commons/math3/optimization/linear/SimplexTableau;
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->solvePhase1(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V

    .line 230
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->dropPhase1Objective()V

    .line 232
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->isOptimal()Z

    move-result v1

    if-nez v1, :cond_0

    .line 233
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V

    goto :goto_0

    .line 235
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getSolution()Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object v1

    return-object v1
.end method

.method protected solvePhase1(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V
    .locals 8
    .param p1, "tableau"    # Lorg/apache/commons/math3/optimization/linear/SimplexTableau;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/optimization/linear/UnboundedSolutionException;,
            Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;
        }
    .end annotation

    .line 203
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getNumArtificialVariables()I

    move-result v0

    if-nez v0, :cond_0

    .line 204
    return-void

    .line 207
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->isOptimal()Z

    move-result v0

    if-nez v0, :cond_1

    .line 208
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->doIteration(Lorg/apache/commons/math3/optimization/linear/SimplexTableau;)V

    goto :goto_0

    .line 212
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getRhsOffset()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/optimization/linear/SimplexTableau;->getEntry(II)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    iget-wide v6, p0, Lorg/apache/commons/math3/optimization/linear/SimplexSolver;->epsilon:D

    invoke-static/range {v2 .. v7}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 215
    return-void

    .line 213
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/linear/NoFeasibleSolutionException;-><init>()V

    throw v0
.end method
