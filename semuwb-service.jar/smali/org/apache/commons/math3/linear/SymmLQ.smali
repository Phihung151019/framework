.class public Lorg/apache/commons/math3/linear/SymmLQ;
.super Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;
.source "SymmLQ.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SymmLQ$State;
    }
.end annotation


# static fields
.field private static final OPERATOR:Ljava/lang/String; = "operator"

.field private static final THRESHOLD:Ljava/lang/String; = "threshold"

.field private static final VECTOR:Ljava/lang/String; = "vector"

.field private static final VECTOR1:Ljava/lang/String; = "vector1"

.field private static final VECTOR2:Ljava/lang/String; = "vector2"


# instance fields
.field private final check:Z

.field private final delta:D


# direct methods
.method public constructor <init>(IDZ)V
    .locals 0
    .param p1, "maxIterations"    # I
    .param p2, "delta"    # D
    .param p4, "check"    # Z

    .line 871
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(I)V

    .line 872
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/SymmLQ;->delta:D

    .line 873
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    .line 874
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/IterationManager;DZ)V
    .locals 0
    .param p1, "manager"    # Lorg/apache/commons/math3/util/IterationManager;
    .param p2, "delta"    # D
    .param p4, "check"    # Z

    .line 889
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/PreconditionedIterativeLinearSolver;-><init>(Lorg/apache/commons/math3/util/IterationManager;)V

    .line 890
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/SymmLQ;->delta:D

    .line 891
    iput-boolean p4, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    .line 892
    return-void
.end method


# virtual methods
.method public final getCheck()Z
    .locals 1

    .line 901
    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    return v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 10
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;
        }
    .end annotation

    .line 920
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 921
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object v6, v0

    .line 922
    .local v6, "x":Lorg/apache/commons/math3/linear/RealVector;
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .end local p2    # "m":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .end local p3    # "b":Lorg/apache/commons/math3/linear/RealVector;
    .local v3, "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .local v4, "m":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .local v5, "b":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual/range {v2 .. v9}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 994
    invoke-static {p4}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 995
    invoke-virtual {p4}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .end local p2    # "m":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .end local p3    # "b":Lorg/apache/commons/math3/linear/RealVector;
    .local v1, "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .local v2, "m":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .local v3, "b":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 10
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "goodb"    # Z
    .param p5, "shift"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;
        }
    .end annotation

    .line 971
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 972
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object v6, v0

    .line 973
    .local v6, "x":Lorg/apache/commons/math3/linear/RealVector;
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v7, p4

    move-wide v8, p5

    invoke-virtual/range {v2 .. v9}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 10
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1010
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1011
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object v6, v0

    .line 1012
    .local v6, "x":Lorg/apache/commons/math3/linear/RealVector;
    const-wide/16 v0, 0x0

    invoke-virtual {v6, v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    .line 1013
    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    .end local p1    # "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .end local p2    # "b":Lorg/apache/commons/math3/linear/RealVector;
    .local v3, "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .local v5, "b":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual/range {v2 .. v9}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1076
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1077
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    .end local p1    # "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .end local p2    # "b":Lorg/apache/commons/math3/linear/RealVector;
    .local v1, "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .local v3, "b":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 10
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "goodb"    # Z
    .param p4, "shift"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1056
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 1057
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    move-object v6, v0

    .line 1058
    .local v6, "x":Lorg/apache/commons/math3/linear/RealVector;
    const/4 v4, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v7, p3

    move-wide v8, p4

    .end local p1    # "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .end local p2    # "b":Lorg/apache/commons/math3/linear/RealVector;
    .end local p3    # "goodb":Z
    .end local p4    # "shift":D
    .local v3, "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .local v5, "b":Lorg/apache/commons/math3/linear/RealVector;
    .local v7, "goodb":Z
    .local v8, "shift":D
    invoke-virtual/range {v2 .. v9}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1098
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .end local p2    # "m":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .end local p3    # "b":Lorg/apache/commons/math3/linear/RealVector;
    .end local p4    # "x":Lorg/apache/commons/math3/linear/RealVector;
    .local v1, "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .local v2, "m":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .local v3, "b":Lorg/apache/commons/math3/linear/RealVector;
    .local v4, "x":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;
    .locals 18
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "m"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p3, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p4, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p5, "goodb"    # Z
    .param p6, "shift"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1150
    move-object/from16 v1, p0

    move-object/from16 v3, p4

    invoke-static/range {p1 .. p4}, Lorg/apache/commons/math3/linear/SymmLQ;->checkParameters(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V

    .line 1152
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/SymmLQ;->getIterationManager()Lorg/apache/commons/math3/util/IterationManager;

    move-result-object v7

    .line 1154
    .local v7, "manager":Lorg/apache/commons/math3/util/IterationManager;
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->resetIterationCount()V

    .line 1155
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 1158
    new-instance v8, Lorg/apache/commons/math3/linear/SymmLQ$State;

    iget-wide v4, v1, Lorg/apache/commons/math3/linear/SymmLQ;->delta:D

    iget-boolean v0, v1, Lorg/apache/commons/math3/linear/SymmLQ;->check:Z

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p5

    move-wide/from16 v13, p6

    move/from16 v17, v0

    move-wide v15, v4

    invoke-direct/range {v8 .. v17}, Lorg/apache/commons/math3/linear/SymmLQ$State;-><init>(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;ZDDZ)V

    .line 1159
    .local v8, "state":Lorg/apache/commons/math3/linear/SymmLQ$State;
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->init()V

    .line 1160
    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->refineSolution(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 1162
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v5

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1167
    .local v0, "event":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->bEqualsNullVector()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1170
    return-object p4

    .line 1174
    :cond_0
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->betaEqualsZero()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    move v9, v1

    .line 1175
    .local v9, "earlyStop":Z
    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireInitializationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1176
    move-object v10, v0

    if-nez v9, :cond_4

    .line 1178
    .end local v0    # "event":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    .local v10, "event":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    :cond_3
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->incrementIterationCount()V

    .line 1179
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v5

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    move-object v10, v0

    .line 1184
    invoke-virtual {v7, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationStartedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1185
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->update()V

    .line 1186
    invoke-virtual {v8, v3}, Lorg/apache/commons/math3/linear/SymmLQ$State;->refineSolution(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 1187
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    move-object v10, v0

    .line 1192
    invoke-virtual {v7, v10}, Lorg/apache/commons/math3/util/IterationManager;->fireIterationPerformedEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1193
    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->hasConverged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1195
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/IterationManager;->getIterations()I

    move-result v2

    invoke-virtual {v8}, Lorg/apache/commons/math3/linear/SymmLQ$State;->getNormOfResidual()D

    move-result-wide v5

    move-object/from16 v1, p0

    move-object/from16 v4, p3

    move-object/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/linear/DefaultIterativeLinearSolverEvent;-><init>(Ljava/lang/Object;ILorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;D)V

    .line 1200
    .end local v10    # "event":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    .restart local v0    # "event":Lorg/apache/commons/math3/linear/IterativeLinearSolverEvent;
    invoke-virtual {v7, v0}, Lorg/apache/commons/math3/util/IterationManager;->fireTerminationEvent(Lorg/apache/commons/math3/util/IterationEvent;)V

    .line 1201
    return-object p4
.end method

.method public solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "x"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonSelfAdjointOperatorException;,
            Lorg/apache/commons/math3/linear/IllConditionedOperatorException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1219
    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    .end local p1    # "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .end local p2    # "b":Lorg/apache/commons/math3/linear/RealVector;
    .end local p3    # "x":Lorg/apache/commons/math3/linear/RealVector;
    .local v1, "a":Lorg/apache/commons/math3/linear/RealLinearOperator;
    .local v3, "b":Lorg/apache/commons/math3/linear/RealVector;
    .local v4, "x":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SymmLQ;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;ZD)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p1

    return-object p1
.end method
