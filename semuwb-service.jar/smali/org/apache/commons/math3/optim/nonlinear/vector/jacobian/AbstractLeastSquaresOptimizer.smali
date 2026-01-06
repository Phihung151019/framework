.class public abstract Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;
.source "AbstractLeastSquaresOptimizer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cost:D

.field private weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 57
    .local p1, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointVectorValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 58
    return-void
.end method

.method private squareRoot(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 269
    instance-of v0, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v0, :cond_1

    .line 270
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 271
    .local v0, "dim":I
    new-instance v1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>(I)V

    .line 272
    .local v1, "sqrtM":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 273
    invoke-interface {p1, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-interface {v1, v2, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 272
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 277
    .end local v0    # "dim":I
    .end local v1    # "sqrtM":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 278
    .local v0, "dec":Lorg/apache/commons/math3/linear/EigenDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected computeCost([D)D
    .locals 3
    .param p1, "residuals"    # [D

    .line 80
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    .line 81
    .local v0, "r":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    return-wide v1
.end method

.method public computeCovariances([DD)[[D
    .locals 4
    .param p1, "params"    # [D
    .param p2, "threshold"    # D

    .line 146
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 149
    .local v0, "j":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 152
    .local v1, "jTj":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v2, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v2, v1, p2, p3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    .line 154
    .local v2, "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v3

    return-object v3
.end method

.method protected computeResiduals([D)[D
    .locals 7
    .param p1, "objectiveValue"    # [D

    .line 220
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->getTarget()[D

    move-result-object v0

    .line 221
    .local v0, "target":[D
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 226
    array-length v1, v0

    new-array v1, v1, [D

    .line 227
    .local v1, "residuals":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 228
    aget-wide v3, v0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 227
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 231
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 222
    .end local v1    # "residuals":[D
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, v0

    array-length v3, p1

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public computeSigma([DD)[D
    .locals 6
    .param p1, "params"    # [D
    .param p2, "covarianceSingularityThreshold"    # D

    .line 173
    array-length v0, p1

    .line 174
    .local v0, "nC":I
    new-array v1, v0, [D

    .line 175
    .local v1, "sig":[D
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object v2

    .line 176
    .local v2, "cov":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 177
    aget-object v4, v2, v3

    aget-wide v4, v4, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 176
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 179
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method protected computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2
    .param p1, "params"    # [D

    .line 69
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeJacobian([D)[[D

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getChiSquare()D
    .locals 4

    .line 106
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->cost:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->cost:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getRMS()D
    .locals 4

    .line 96
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->getChiSquare()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->getTargetSize()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 115
    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object p1

    return-object p1
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 201
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .line 248
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 252
    move-object v0, p1

    .local v0, "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    array-length v1, v0

    .local v1, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 253
    .local v3, "data":Lorg/apache/commons/math3/optim/OptimizationData;
    instance-of v4, v3, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    if-eqz v4, :cond_0

    .line 254
    move-object v4, v3

    check-cast v4, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    invoke-virtual {v4}, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->squareRoot(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 257
    goto :goto_1

    .line 252
    .end local v3    # "data":Lorg/apache/commons/math3/optim/OptimizationData;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 260
    .end local v0    # "arr$":[Lorg/apache/commons/math3/optim/OptimizationData;
    .end local v1    # "len$":I
    .end local v2    # "i$":I
    :cond_1
    :goto_1
    return-void
.end method

.method protected setCost(D)V
    .locals 0
    .param p1, "cost"    # D

    .line 124
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->cost:D

    .line 125
    return-void
.end method
