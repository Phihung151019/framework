.class public Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;
.super Ljava/lang/Object;
.source "PearsonsCorrelation.java"


# instance fields
.field private final correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final nObs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 65
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    .line 66
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 1
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    .line 99
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 100
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;I)V
    .locals 1
    .param p1, "covarianceMatrix"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "numberOfObservations"    # I

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p2, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    .line 129
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->covarianceToCorrelation(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 130
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/correlation/Covariance;)V
    .locals 4
    .param p1, "covariance"    # Lorg/apache/commons/math3/stat/correlation/Covariance;

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/correlation/Covariance;->getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 112
    .local v0, "covarianceMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/correlation/Covariance;->getN()I

    move-result v1

    iput v1, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    .line 116
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->covarianceToCorrelation(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 117
    return-void

    .line 113
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->COVARIANCE_MATRIX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>([[D)V
    .locals 1
    .param p1, "data"    # [[D

    .line 82
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 83
    return-void
.end method

.method private checkSufficientData(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 6
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 323
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v0

    .line 324
    .local v0, "nRows":I
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 325
    .local v1, "nCols":I
    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    if-lt v1, v2, :cond_0

    .line 329
    return-void

    .line 326
    :cond_0
    new-instance v2, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_ROWS_AND_COLUMNS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2
.end method


# virtual methods
.method public computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6
    .param p1, "matrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 227
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->checkSufficientData(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 228
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    .line 229
    .local v0, "nVars":I
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v1, v0, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 230
    .local v1, "outMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 231
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v2, :cond_0

    .line 232
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v4

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumn(I)[D

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlation([D[D)D

    move-result-wide v4

    .line 233
    .local v4, "corr":D
    invoke-interface {v1, v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 234
    invoke-interface {v1, v3, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 231
    .end local v4    # "corr":D
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 236
    .end local v3    # "j":I
    :cond_0
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    invoke-interface {v1, v2, v2, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 230
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 238
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public computeCorrelationMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1
    .param p1, "data"    # [[D

    .line 256
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->computeCorrelationMatrix(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    return-object v0
.end method

.method public correlation([D[D)D
    .locals 6
    .param p1, "xArray"    # [D
    .param p2, "yArray"    # [D

    .line 274
    new-instance v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;-><init>()V

    .line 275
    .local v0, "regression":Lorg/apache/commons/math3/stat/regression/SimpleRegression;
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_2

    .line 277
    array-length v1, p1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 281
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 282
    aget-wide v2, p1, v1

    aget-wide v4, p2, v1

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    .line 281
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 284
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getR()D

    move-result-wide v1

    return-wide v1

    .line 278
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 276
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v2, p1

    array-length v3, p2

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public covarianceToCorrelation(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10
    .param p1, "covarianceMatrix"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .line 300
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    .line 301
    .local v0, "nVars":I
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v1, v0, v0}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II)V

    .line 302
    .local v1, "outMatrix":Lorg/apache/commons/math3/linear/RealMatrix;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 303
    invoke-interface {p1, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    .line 304
    .local v3, "sigma":D
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    invoke-interface {v1, v2, v2, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 305
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v2, :cond_0

    .line 306
    invoke-interface {p1, v2, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    invoke-interface {p1, v5, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v8, v3

    div-double/2addr v6, v8

    .line 308
    .local v6, "entry":D
    invoke-interface {v1, v2, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 309
    invoke-interface {v1, v5, v2, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 305
    .end local v6    # "entry":D
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 302
    .end local v3    # "sigma":D
    .end local v5    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 312
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method public getCorrelationMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getCorrelationPValues()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 15

    .line 195
    new-instance v0, Lorg/apache/commons/math3/distribution/TDistribution;

    iget v1, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    int-to-double v3, v1

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    .line 196
    .local v0, "tDistribution":Lorg/apache/commons/math3/distribution/TDistribution;
    iget-object v1, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    .line 197
    .local v1, "nVars":I
    new-array v3, v2, [I

    const/4 v4, 0x1

    aput v1, v3, v4

    const/4 v4, 0x0

    aput v1, v3, v4

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    .line 198
    .local v3, "out":[[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 199
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    if-ge v5, v1, :cond_1

    .line 200
    if-ne v4, v5, :cond_0

    .line 201
    aget-object v6, v3, v4

    const-wide/16 v7, 0x0

    aput-wide v7, v6, v5

    goto :goto_2

    .line 203
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v6, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    .line 204
    .local v6, "r":D
    iget v8, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    sub-int/2addr v8, v2

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    mul-double v12, v6, v6

    sub-double/2addr v10, v12

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    .line 205
    .local v8, "t":D
    aget-object v10, v3, v4

    neg-double v11, v8

    invoke-virtual {v0, v11, v12}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v11

    const-wide/high16 v13, 0x4000000000000000L    # 2.0

    mul-double/2addr v11, v13

    aput-wide v11, v10, v5

    .line 199
    .end local v6    # "r":D
    .end local v8    # "t":D
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 198
    .end local v5    # "j":I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 209
    .end local v4    # "i":I
    :cond_2
    new-instance v2, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v2, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    return-object v2
.end method

.method public getCorrelationStandardErrors()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 12

    .line 163
    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v0

    .line 164
    .local v0, "nVars":I
    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v3, 0x1

    aput v0, v2, v3

    const/4 v3, 0x0

    aput v0, v2, v3

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 165
    .local v2, "out":[[D
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 166
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v0, :cond_0

    .line 167
    iget-object v5, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->correlationMatrix:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v5

    .line 168
    .local v5, "r":D
    aget-object v7, v2, v3

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-double v10, v5, v5

    sub-double/2addr v8, v10

    iget v10, p0, Lorg/apache/commons/math3/stat/correlation/PearsonsCorrelation;->nObs:I

    sub-int/2addr v10, v1

    int-to-double v10, v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    aput-wide v8, v7, v4

    .line 166
    .end local v5    # "r":D
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 165
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 171
    .end local v3    # "i":I
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>([[D)V

    return-object v1
.end method
