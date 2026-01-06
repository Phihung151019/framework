.class public abstract Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;
.super Ljava/lang/Object;
.source "AbstractMultipleLinearRegression.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/regression/MultipleLinearRegression;


# instance fields
.field private noIntercept:Z

.field private xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private yVector:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    return-void
.end method


# virtual methods
.method protected abstract calculateBeta()Lorg/apache/commons/math3/linear/RealVector;
.end method

.method protected abstract calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;
.end method

.method protected calculateErrorVariance()D
    .locals 5

    .line 363
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 364
    .local v0, "residuals":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v1

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-double v3, v3

    div-double/2addr v1, v3

    return-wide v1
.end method

.method protected calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;
    .locals 3

    .line 379
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBeta()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 380
    .local v0, "b":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    return-object v1
.end method

.method protected calculateYVariance()D
    .locals 2

    .line 348
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateErrorVariance()D
    .locals 2

    .line 312
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateErrorVariance()D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateRegressandVariance()D
    .locals 2

    .line 302
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateYVariance()D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateRegressionParameters()[D
    .locals 2

    .line 264
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBeta()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 265
    .local v0, "b":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    return-object v1
.end method

.method public estimateRegressionParametersStandardErrors()[D
    .locals 8

    .line 288
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->estimateRegressionParametersVariance()[[D

    move-result-object v0

    .line 289
    .local v0, "betaVariance":[[D
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateErrorVariance()D

    move-result-wide v1

    .line 290
    .local v1, "sigma":D
    const/4 v3, 0x0

    aget-object v3, v0, v3

    array-length v3, v3

    .line 291
    .local v3, "length":I
    new-array v4, v3, [D

    .line 292
    .local v4, "result":[D
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v3, :cond_0

    .line 293
    aget-object v6, v0, v5

    aget-wide v6, v6, v5

    mul-double/2addr v6, v1

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    aput-wide v6, v4, v5

    .line 292
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 295
    .end local v5    # "i":I
    :cond_0
    return-object v4
.end method

.method public estimateRegressionParametersVariance()[[D
    .locals 1

    .line 281
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    return-object v0
.end method

.method public estimateRegressionStandardError()D
    .locals 2

    .line 323
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->estimateErrorVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public estimateResiduals()[D
    .locals 3

    .line 272
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateBeta()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    .line 273
    .local v0, "b":Lorg/apache/commons/math3/linear/RealVector;
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v2, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/RealVector;->subtract(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    .line 274
    .local v1, "e":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v2

    return-object v2
.end method

.method protected getX()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method protected getY()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    return-object v0
.end method

.method public isNoIntercept()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    return v0
.end method

.method public newSampleData([DII)V
    .locals 12
    .param p1, "data"    # [D
    .param p2, "nobs"    # I
    .param p3, "nvars"    # I

    .line 115
    if-eqz p1, :cond_6

    .line 118
    array-length v0, p1

    add-int/lit8 v1, p3, 0x1

    mul-int/2addr v1, p2

    if-ne v0, v1, :cond_5

    .line 121
    if-le p2, p3, :cond_4

    .line 124
    new-array v0, p2, [D

    .line 125
    .local v0, "y":[D
    iget-boolean v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    if-eqz v1, :cond_0

    move v1, p3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p3, 0x1

    .line 126
    .local v1, "cols":I
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v4, 0x0

    aput p2, v2, v4

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 127
    .local v2, "x":[[D
    const/4 v5, 0x0

    .line 128
    .local v5, "pointer":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, p2, :cond_3

    .line 129
    add-int/lit8 v7, v5, 0x1

    .end local v5    # "pointer":I
    .local v7, "pointer":I
    aget-wide v8, p1, v5

    aput-wide v8, v0, v6

    .line 130
    iget-boolean v5, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    if-nez v5, :cond_1

    .line 131
    aget-object v5, v2, v6

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v5, v4

    .line 133
    :cond_1
    iget-boolean v5, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    xor-int/2addr v5, v3

    .local v5, "j":I
    :goto_2
    if-ge v5, v1, :cond_2

    .line 134
    aget-object v8, v2, v6

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "pointer":I
    .local v9, "pointer":I
    aget-wide v10, p1, v7

    aput-wide v10, v8, v5

    .line 133
    add-int/lit8 v5, v5, 0x1

    move v7, v9

    goto :goto_2

    .line 128
    .end local v5    # "j":I
    .end local v9    # "pointer":I
    .restart local v7    # "pointer":I
    :cond_2
    add-int/lit8 v6, v6, 0x1

    move v5, v7

    goto :goto_1

    .line 137
    .end local v6    # "i":I
    .end local v7    # "pointer":I
    .local v5, "pointer":I
    :cond_3
    new-instance v3, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v3, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 138
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v3, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    .line 139
    return-void

    .line 122
    .end local v0    # "y":[D
    .end local v1    # "cols":I
    .end local v2    # "x":[[D
    .end local v5    # "pointer":I
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/InsufficientDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    add-int/lit8 v3, p3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 119
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    add-int/lit8 v2, p3, 0x1

    mul-int/2addr v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 116
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method protected newXSampleData([[D)V
    .locals 8
    .param p1, "x"    # [[D

    .line 184
    if-eqz p1, :cond_4

    .line 187
    array-length v0, p1

    if-eqz v0, :cond_3

    .line 190
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 191
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_1

    .line 193
    :cond_0
    const/4 v0, 0x0

    aget-object v2, p1, v0

    array-length v2, v2

    .line 194
    .local v2, "nVars":I
    array-length v3, p1

    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v4, v5, v1

    aput v3, v5, v0

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 195
    .local v3, "xAug":[[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    .line 196
    aget-object v5, p1, v4

    array-length v5, v5

    if-ne v5, v2, :cond_1

    .line 199
    aget-object v5, v3, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aput-wide v6, v5, v0

    .line 200
    aget-object v5, p1, v4

    aget-object v6, v3, v4

    invoke-static {v5, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object v1, p1, v4

    array-length v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 202
    .end local v4    # "i":I
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, v3, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    iput-object v1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->xMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 204
    .end local v2    # "nVars":I
    .end local v3    # "xAug":[[D
    :goto_1
    return-void

    .line 188
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 185
    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method protected newYSampleData([D)V
    .locals 1
    .param p1, "y"    # [D

    .line 149
    if-eqz p1, :cond_1

    .line 152
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->yVector:Lorg/apache/commons/math3/linear/RealVector;

    .line 156
    return-void

    .line 153
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 150
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method

.method public setNoIntercept(Z)V
    .locals 0
    .param p1, "noIntercept"    # Z

    .line 76
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->noIntercept:Z

    .line 77
    return-void
.end method

.method protected validateCovarianceData([[D[[D)V
    .locals 3
    .param p1, "x"    # [[D
    .param p2, "covariance"    # [[D

    .line 252
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 255
    array-length v0, p2

    if-lez v0, :cond_1

    array-length v0, p2

    const/4 v1, 0x0

    aget-object v2, p2, v1

    array-length v2, v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 256
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    array-length v2, p2

    aget-object v1, p2, v1

    array-length v1, v1

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0

    .line 258
    :cond_1
    :goto_0
    return-void

    .line 253
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method protected validateSampleData([[D[D)V
    .locals 4
    .param p1, "x"    # [[D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 225
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 228
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_2

    .line 231
    array-length v0, p1

    if-eqz v0, :cond_1

    .line 234
    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    array-length v2, p1

    if-gt v1, v2, :cond_0

    .line 239
    return-void

    .line 235
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aget-object v0, p1, v0

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 232
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw v0

    .line 229
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    array-length v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 226
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0
.end method
