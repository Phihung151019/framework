.class public abstract Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;
.source "AbstractLeastSquaresOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<",
        "Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_SINGULARITY_THRESHOLD:D = 1.0E-14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected cols:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected cost:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private jF:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

.field private jacobianEvaluations:I

.field protected objective:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected point:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected rows:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

.field protected weightedResidualJacobian:[[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected weightedResiduals:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 134
    .local p1, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointVectorValuePair;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 135
    return-void
.end method

.method private squareRoot(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5
    .param p1, "m"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 565
    instance-of v0, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v0, :cond_1

    .line 566
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 567
    .local v0, "dim":I
    new-instance v1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>(I)V

    .line 568
    .local v1, "sqrtM":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 569
    invoke-interface {p1, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-interface {v1, v2, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 568
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 571
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 573
    .end local v0    # "dim":I
    .end local v1    # "sqrtM":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 574
    .local v0, "dec":Lorg/apache/commons/math3/linear/EigenDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected computeCost([D)D
    .locals 3
    .param p1, "residuals"    # [D

    .line 225
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    .line 226
    .local v0, "r":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

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

    .line 330
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 333
    .local v0, "j":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 336
    .local v1, "jTj":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v2, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v2, v1, p2, p3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    .line 338
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

    .line 544
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getTarget()[D

    move-result-object v0

    .line 545
    .local v0, "target":[D
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 550
    array-length v1, v0

    new-array v1, v1, [D

    .line 551
    .local v1, "residuals":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 552
    aget-wide v3, v0, v2

    aget-wide v5, p1, v2

    sub-double/2addr v3, v5

    aput-wide v3, v1, v2

    .line 551
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 555
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 546
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

    .line 402
    array-length v0, p1

    .line 403
    .local v0, "nC":I
    new-array v1, v0, [D

    .line 404
    .local v1, "sig":[D
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object v2

    .line 405
    .local v2, "cov":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 406
    aget-object v4, v2, v3

    aget-wide v4, v4, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 405
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 408
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method protected computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 13
    .param p1, "params"    # [D

    .line 168
    iget v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jacobianEvaluations:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jacobianEvaluations:I

    .line 170
    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    .line 171
    .local v0, "dsPoint":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    array-length v3, p1

    .line 172
    .local v3, "nC":I
    const/4 v2, 0x0

    move v5, v2

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 173
    new-instance v2, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v4, 0x1

    aget-wide v6, p1, v5

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v2, v0, v5

    .line 172
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 175
    .end local v5    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jF:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v2

    .line 176
    .local v2, "dsValue":[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getTarget()[D

    move-result-object v4

    array-length v4, v4

    .line 177
    .local v4, "nR":I
    array-length v5, v2

    if-ne v5, v4, :cond_3

    .line 180
    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v3, v5, v1

    const/4 v6, 0x0

    aput v4, v5, v6

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    .line 181
    .local v5, "jacobianData":[[D
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    if-ge v7, v4, :cond_2

    .line 182
    new-array v8, v3, [I

    .line 183
    .local v8, "orders":[I
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v3, :cond_1

    .line 184
    aput v1, v8, v9

    .line 185
    aget-object v10, v5, v7

    aget-object v11, v2, v7

    invoke-virtual {v11, v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v11

    aput-wide v11, v10, v9

    .line 186
    aput v6, v8, v9

    .line 183
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 181
    .end local v8    # "orders":[I
    .end local v9    # "j":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 190
    .end local v7    # "i":I
    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v5}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v6

    invoke-interface {v1, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    return-object v1

    .line 178
    .end local v5    # "jacobianData":[[D
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v5, v2

    invoke-direct {v1, v5, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public getChiSquare()D
    .locals 4

    .line 250
    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getCovariances()[[D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 285
    const-wide v0, 0x3d06849b86a12b9bL    # 1.0E-14

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getCovariances(D)[[D

    move-result-object v0

    return-object v0
.end method

.method public getCovariances(D)[[D
    .locals 1
    .param p1, "threshold"    # D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 307
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object v0

    return-object v0
.end method

.method public getJacobianEvaluations()I
    .locals 1

    .line 141
    iget v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jacobianEvaluations:I

    return v0
.end method

.method public getRMS()D
    .locals 4

    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getChiSquare()D

    move-result-wide v0

    iget v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 260
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public guessParametersErrors()[D
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 372
    iget v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    iget v1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    if-le v0, v1, :cond_1

    .line 376
    iget v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    new-array v0, v0, [D

    .line 377
    .local v0, "errors":[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getChiSquare()D

    move-result-wide v1

    iget v3, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    iget v4, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    sub-int/2addr v3, v4

    int-to-double v3, v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    .line 378
    .local v1, "c":D
    iget-object v3, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    const-wide v4, 0x3d06849b86a12b9bL    # 1.0E-14

    invoke-virtual {p0, v3, v4, v5}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object v3

    .line 379
    .local v3, "covar":[[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 380
    aget-object v5, v3, v4

    aget-wide v5, v5, v4

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v5, v1

    aput-wide v5, v0, v4

    .line 379
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 382
    .end local v4    # "i":I
    :cond_0
    return-object v0

    .line 373
    .end local v0    # "errors":[D
    .end local v1    # "c":D
    .end local v3    # "covar":[[D
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 4
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;
    .param p3, "target"    # [D
    .param p4, "weights"    # [D
    .param p5, "startPoint"    # [D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 424
    invoke-static {p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/commons/math3/optimization/OptimizationData;

    new-instance v2, Lorg/apache/commons/math3/optimization/Target;

    invoke-direct {v2, p3}, Lorg/apache/commons/math3/optimization/Target;-><init>([D)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/commons/math3/optimization/Weight;

    invoke-direct {v2, p4}, Lorg/apache/commons/math3/optimization/Weight;-><init>([D)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v2, p5}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    move-object v2, p2

    check-cast v2, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    move-object v0, p0

    move v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->optimize(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p1

    return-object p1
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 3
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;
    .param p3, "target"    # [D
    .param p4, "weights"    # [D
    .param p5, "startPoint"    # [D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    new-instance v1, Lorg/apache/commons/math3/optimization/Target;

    invoke-direct {v1, p3}, Lorg/apache/commons/math3/optimization/Target;-><init>([D)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/math3/optimization/Weight;

    invoke-direct {v1, p4}, Lorg/apache/commons/math3/optimization/Weight;-><init>([D)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v1, p5}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 1
    .param p1, "maxEval"    # I
    .param p2, "f"    # Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;
    .param p3, "optData"    # [Lorg/apache/commons/math3/optimization/OptimizationData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 499
    invoke-static {p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableMultivariateVectorFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected setCost(D)V
    .locals 0
    .param p1, "cost"    # D

    .line 270
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    .line 271
    return-void
.end method

.method protected setUp()V
    .locals 1

    .line 505
    invoke-super {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->setUp()V

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jacobianEvaluations:I

    .line 511
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->squareRoot(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 519
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getObjectiveFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-static {v0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->jF:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    .line 522
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getStartPoint()[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    .line 523
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getTarget()[D

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    .line 524
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    .line 525
    return-void
.end method

.method protected updateJacobian()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 155
    .local v0, "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightedResidualJacobian:[[D

    .line 156
    return-void
.end method

.method protected updateResidualsAndCost()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 205
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeObjectiveValue([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->objective:[D

    .line 206
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->objective:[D

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v0

    .line 209
    .local v0, "res":[D
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    .line 212
    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    .line 213
    .local v1, "residuals":Lorg/apache/commons/math3/linear/ArrayRealVector;
    iget-object v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightMatrixSqrt:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightedResiduals:[D

    .line 214
    return-void
.end method
