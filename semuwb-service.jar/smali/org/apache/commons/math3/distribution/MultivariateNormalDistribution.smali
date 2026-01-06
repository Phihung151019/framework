.class public Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;
.source "MultivariateNormalDistribution.java"


# instance fields
.field private final covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final covarianceMatrixDeterminant:D

.field private final covarianceMatrixInverse:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final means:[D

.field private final samplingMatrix:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;[D[[D)V
    .locals 10
    .param p1, "rng"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "means"    # [D
    .param p3, "covariances"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    .line 109
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;I)V

    .line 111
    array-length v0, p2

    .line 113
    .local v0, "dim":I
    array-length v1, p3

    if-ne v1, v0, :cond_7

    .line 117
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 118
    aget-object v2, p3, v1

    array-length v2, v2

    if-ne v0, v2, :cond_0

    .line 117
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v3, p3, v1

    array-length v3, v3

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 123
    .end local v1    # "i":I
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->means:[D

    .line 125
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v1, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 128
    new-instance v1, Lorg/apache/commons/math3/linear/EigenDecomposition;

    iget-object v2, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 131
    .local v1, "covMatDec":Lorg/apache/commons/math3/linear/EigenDecomposition;
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrixInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 133
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getDeterminant()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrixDeterminant:D

    .line 136
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getRealEigenvalues()[D

    move-result-object v2

    .line 138
    .local v2, "covMatEigenvalues":[D
    const/4 v3, 0x0

    move v7, v3

    .local v7, "i":I
    :goto_1
    array-length v3, v2

    if-ge v7, v3, :cond_3

    .line 139
    aget-wide v3, v2, v7

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-ltz v3, :cond_2

    .line 138
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 140
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-wide v5, v2, v7

    const-wide/16 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v4

    .line 145
    .end local v7    # "i":I
    :cond_3
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v3, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    .line 146
    .local v3, "covMatEigenvectors":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    const/4 v4, 0x0

    .local v4, "v":I
    :goto_2
    if-ge v4, v0, :cond_4

    .line 147
    invoke-virtual {v1, v4}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getEigenvector(I)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v5

    .line 148
    .local v5, "evec":[D
    invoke-virtual {v3, v4, v5}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setColumn(I[D)V

    .line 146
    .end local v5    # "evec":[D
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 151
    .end local v4    # "v":I
    :cond_4
    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    .line 154
    .local v4, "tmpMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v5, 0x0

    .local v5, "row":I
    :goto_3
    if-ge v5, v0, :cond_6

    .line 155
    aget-wide v6, v2, v5

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    .line 156
    .local v6, "factor":D
    const/4 v8, 0x0

    .local v8, "col":I
    :goto_4
    if-ge v8, v0, :cond_5

    .line 157
    invoke-interface {v4, v5, v8, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->multiplyEntry(IID)V

    .line 156
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 154
    .end local v6    # "factor":D
    .end local v8    # "col":I
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 161
    .end local v5    # "row":I
    :cond_6
    invoke-virtual {v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->samplingMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 162
    return-void

    .line 114
    .end local v1    # "covMatDec":Lorg/apache/commons/math3/linear/EigenDecomposition;
    .end local v2    # "covMatEigenvalues":[D
    .end local v3    # "covMatEigenvectors":Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .end local v4    # "tmpMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    :cond_7
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p3

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public constructor <init>([D[[D)V
    .locals 1
    .param p1, "means"    # [D
    .param p2, "covariances"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    .line 82
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[D[[D)V

    .line 83
    return-void
.end method

.method private getExponentTerm([D)D
    .locals 9
    .param p1, "values"    # [D

    .line 236
    array-length v0, p1

    new-array v0, v0, [D

    .line 237
    .local v0, "centered":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 238
    aget-wide v2, p1, v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getMeans()[D

    move-result-object v4

    aget-wide v4, v4, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    .line 237
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 240
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrixInverse:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->preMultiply([D)[D

    move-result-object v1

    .line 241
    .local v1, "preMultiplied":[D
    const-wide/16 v2, 0x0

    .line 242
    .local v2, "sum":D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 243
    aget-wide v5, v1, v4

    aget-wide v7, v0, v4

    mul-double/2addr v5, v7

    add-double/2addr v2, v5

    .line 242
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 245
    .end local v4    # "i":I
    :cond_1
    const-wide/high16 v4, -0x4020000000000000L    # -0.5

    mul-double/2addr v4, v2

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    return-wide v4
.end method


# virtual methods
.method public density([D)D
    .locals 7
    .param p1, "vals"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getDimension()I

    move-result v0

    .line 185
    .local v0, "dim":I
    array-length v1, p1

    if-ne v1, v0, :cond_0

    .line 189
    int-to-double v1, v0

    const-wide/high16 v3, -0x4020000000000000L    # -0.5

    mul-double/2addr v1, v3

    const-wide v5, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v5, v6, v1, v2}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    iget-wide v5, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrixDeterminant:D

    invoke-static {v5, v6, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getExponentTerm([D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    return-wide v1

    .line 186
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public getCovariances()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 179
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public getMeans()[D
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->means:[D

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v0

    return-object v0
.end method

.method public getStandardDeviations()[D
    .locals 6

    .line 201
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getDimension()I

    move-result v0

    .line 202
    .local v0, "dim":I
    new-array v1, v0, [D

    .line 203
    .local v1, "std":[D
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->covarianceMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    .line 204
    .local v2, "s":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 205
    aget-object v4, v2, v3

    aget-wide v4, v4, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v1, v3

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 207
    .end local v3    # "i":I
    :cond_0
    return-object v1
.end method

.method public sample()[D
    .locals 8

    .line 213
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getDimension()I

    move-result v0

    .line 214
    .local v0, "dim":I
    new-array v1, v0, [D

    .line 216
    .local v1, "normalVals":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 217
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 216
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 220
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->samplingMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v2

    .line 222
    .local v2, "vals":[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 223
    aget-wide v4, v2, v3

    iget-object v6, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->means:[D

    aget-wide v6, v6, v3

    add-double/2addr v4, v6

    aput-wide v4, v2, v3

    .line 222
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 226
    .end local v3    # "i":I
    :cond_1
    return-object v2
.end method
