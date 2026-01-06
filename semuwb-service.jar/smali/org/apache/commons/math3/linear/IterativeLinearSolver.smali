.class public abstract Lorg/apache/commons/math3/linear/IterativeLinearSolver;
.super Ljava/lang/Object;
.source "IterativeLinearSolver.java"


# instance fields
.field private final manager:Lorg/apache/commons/math3/util/IterationManager;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .param p1, "maxIterations"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/apache/commons/math3/util/IterationManager;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/IterationManager;-><init>(I)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/IterativeLinearSolver;->manager:Lorg/apache/commons/math3/util/IterationManager;

    .line 45
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/IterationManager;)V
    .locals 0
    .param p1, "manager"    # Lorg/apache/commons/math3/util/IterationManager;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 56
    iput-object p1, p0, Lorg/apache/commons/math3/linear/IterativeLinearSolver;->manager:Lorg/apache/commons/math3/util/IterationManager;

    .line 57
    return-void
.end method

.method protected static checkParameters(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 3
    .param p0, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p1, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p2, "x0"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 77
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 78
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 84
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 88
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 92
    return-void

    .line 89
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 85
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 81
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareOperatorException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareOperatorException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public getIterationManager()Lorg/apache/commons/math3/util/IterationManager;
    .locals 1

    .line 100
    iget-object v0, p0, Lorg/apache/commons/math3/linear/IterativeLinearSolver;->manager:Lorg/apache/commons/math3/util/IterationManager;

    return-object v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 3
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 122
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 123
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 124
    .local v0, "x":Lorg/apache/commons/math3/linear/RealVector;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->set(D)V

    .line 125
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/linear/IterativeLinearSolver;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    return-object v1
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .param p1, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .param p2, "b"    # Lorg/apache/commons/math3/linear/RealVector;
    .param p3, "x0"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 148
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 149
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/RealVector;->copy()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/linear/IterativeLinearSolver;->solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    return-object v0
.end method

.method public abstract solveInPlace(Lorg/apache/commons/math3/linear/RealLinearOperator;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation
.end method
