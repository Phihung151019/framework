.class public Lorg/apache/commons/math3/linear/JacobiPreconditioner;
.super Lorg/apache/commons/math3/linear/RealLinearOperator;
.source "JacobiPreconditioner.java"


# instance fields
.field private final diag:Lorg/apache/commons/math3/linear/ArrayRealVector;


# direct methods
.method public constructor <init>([DZ)V
    .locals 1
    .param p1, "diag"    # [D
    .param p2, "deep"    # Z

    .line 42
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 44
    return-void
.end method

.method public static create(Lorg/apache/commons/math3/linear/RealLinearOperator;)Lorg/apache/commons/math3/linear/JacobiPreconditioner;
    .locals 6
    .param p0, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v0

    .line 62
    .local v0, "n":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v1

    if-ne v1, v0, :cond_3

    .line 65
    new-array v1, v0, [D

    .line 66
    .local v1, "diag":[D
    instance-of v2, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    if-eqz v2, :cond_1

    .line 67
    move-object v2, p0

    check-cast v2, Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    .line 68
    .local v2, "m":Lorg/apache/commons/math3/linear/AbstractRealMatrix;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 69
    invoke-virtual {v2, v3, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 68
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v2    # "m":Lorg/apache/commons/math3/linear/AbstractRealMatrix;
    .end local v3    # "i":I
    :cond_0
    goto :goto_2

    .line 72
    :cond_1
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 73
    .local v2, "x":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_1
    if-ge v3, v0, :cond_2

    .line 74
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->set(D)V

    .line 75
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 76
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 73
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 79
    .end local v2    # "x":Lorg/apache/commons/math3/linear/ArrayRealVector;
    .end local v3    # "i":I
    :cond_2
    :goto_2
    new-instance v2, Lorg/apache/commons/math3/linear/JacobiPreconditioner;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lorg/apache/commons/math3/linear/JacobiPreconditioner;-><init>([DZ)V

    return-object v2

    .line 63
    .end local v1    # "diag":[D
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/linear/NonSquareOperatorException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/linear/NonSquareOperatorException;-><init>(II)V

    throw v1
.end method


# virtual methods
.method public getColumnDimension()I
    .locals 1

    .line 85
    iget-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public getRowDimension()I
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 3
    .param p1, "x"    # Lorg/apache/commons/math3/linear/RealVector;

    .line 98
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->ebeDivide([D[D)[D

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/linear/RealLinearOperator;
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v1, Lorg/apache/commons/math3/analysis/function/Sqrt;

    invoke-direct {v1}, Lorg/apache/commons/math3/analysis/function/Sqrt;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    .line 113
    .local v0, "sqrtDiag":Lorg/apache/commons/math3/linear/RealVector;
    new-instance v1, Lorg/apache/commons/math3/linear/JacobiPreconditioner$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/JacobiPreconditioner$1;-><init>(Lorg/apache/commons/math3/linear/JacobiPreconditioner;Lorg/apache/commons/math3/linear/RealVector;)V

    return-object v1
.end method
