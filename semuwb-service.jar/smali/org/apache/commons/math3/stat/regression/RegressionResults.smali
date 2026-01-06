.class public Lorg/apache/commons/math3/stat/regression/RegressionResults;
.super Ljava/lang/Object;
.source "RegressionResults.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ADJRSQ_IDX:I = 0x4

.field private static final MSE_IDX:I = 0x3

.field private static final RSQ_IDX:I = 0x2

.field private static final SSE_IDX:I = 0x0

.field private static final SST_IDX:I = 0x1

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final containsConstant:Z

.field private final globalFitInfo:[D

.field private final isSymmetricVCD:Z

.field private final nobs:J

.field private final parameters:[D

.field private final rank:I

.field private final varCovData:[[D


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 67
    move-object v1, v0

    check-cast v1, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    .line 68
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->rank:I

    .line 69
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    .line 71
    iput-boolean v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    .line 72
    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    .line 73
    return-void
.end method

.method public constructor <init>([D[[DZJIDDDZZ)V
    .locals 19
    .param p1, "parameters"    # [D
    .param p2, "varcov"    # [[D
    .param p3, "isSymmetricCompressed"    # Z
    .param p4, "nobs"    # J
    .param p6, "rank"    # I
    .param p7, "sumy"    # D
    .param p9, "sumysq"    # D
    .param p11, "sse"    # D
    .param p13, "containsConstant"    # Z
    .param p14, "copyData"    # Z

    .line 98
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p4

    move/from16 v4, p6

    move/from16 v5, p13

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 99
    if-eqz p14, :cond_1

    .line 100
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v6

    iput-object v6, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 101
    array-length v6, v1

    new-array v6, v6, [[D

    iput-object v6, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    .line 102
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_0

    .line 103
    iget-object v7, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v8, v1, v6

    invoke-static {v8}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v8

    aput-object v8, v7, v6

    .line 102
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v6, p1

    .end local v6    # "i":I
    goto :goto_1

    .line 106
    :cond_1
    move-object/from16 v6, p1

    iput-object v6, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    .line 107
    iput-object v1, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    .line 109
    :goto_1
    move/from16 v7, p3

    iput-boolean v7, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    .line 110
    iput-wide v2, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    .line 111
    iput v4, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->rank:I

    .line 112
    iput-boolean v5, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    .line 113
    const/4 v8, 0x5

    new-array v8, v8, [D

    iput-object v8, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    .line 114
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const-wide/high16 v9, 0x7ff8000000000000L    # Double.NaN

    invoke-static {v8, v9, v10}, Ljava/util/Arrays;->fill([DD)V

    .line 116
    const/4 v8, 0x1

    if-lez v4, :cond_3

    .line 117
    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    if-eqz v5, :cond_2

    mul-double v10, p7, p7

    long-to-double v12, v2

    div-double/2addr v10, v12

    sub-double v10, p9, v10

    goto :goto_2

    :cond_2
    move-wide/from16 v10, p9

    :goto_2
    aput-wide v10, v9, v8

    .line 121
    :cond_3
    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v10, 0x0

    aput-wide p11, v9, v10

    .line 122
    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    aget-wide v11, v11, v10

    int-to-long v13, v4

    sub-long v13, v2, v13

    long-to-double v13, v13

    div-double/2addr v11, v13

    const/4 v13, 0x3

    aput-wide v11, v9, v13

    .line 124
    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    iget-object v11, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    aget-wide v10, v11, v10

    iget-object v12, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    aget-wide v12, v12, v8

    div-double/2addr v10, v12

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    sub-double v10, v12, v10

    const/4 v14, 0x2

    aput-wide v10, v9, v14

    .line 128
    if-nez v5, :cond_4

    .line 129
    iget-object v8, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    iget-object v10, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    aget-wide v10, v10, v14

    sub-double v10, v12, v10

    long-to-double v14, v2

    move-wide/from16 v17, v10

    const/16 v16, 0x4

    int-to-long v9, v4

    sub-long v9, v2, v9

    long-to-double v9, v9

    div-double/2addr v14, v9

    mul-double v10, v17, v14

    sub-double/2addr v12, v10

    aput-wide v12, v8, v16

    goto :goto_3

    .line 133
    :cond_4
    const/16 v16, 0x4

    iget-object v9, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    long-to-double v10, v2

    sub-double/2addr v10, v12

    mul-double v10, v10, p11

    iget-object v14, v0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    aget-wide v14, v14, v8

    move-wide/from16 v17, v12

    int-to-long v12, v4

    sub-long v12, v2, v12

    long-to-double v12, v12

    mul-double/2addr v14, v12

    div-double/2addr v10, v14

    sub-double v12, v17, v10

    aput-wide v12, v9, v16

    .line 136
    :goto_3
    return-void
.end method

.method private getVcvElement(II)D
    .locals 2
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 400
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->isSymmetricVCD:Z

    if-eqz v0, :cond_4

    .line 401
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    array-length v0, v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 403
    if-ne p1, p2, :cond_0

    .line 404
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, p1

    return-wide v0

    .line 405
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v0, p2

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 406
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    return-wide v0

    .line 408
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v0, p2

    aget-wide v0, v0, p1

    return-wide v0

    .line 411
    :cond_2
    const/4 v0, 0x0

    if-le p1, p2, :cond_3

    .line 412
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v1, v0

    add-int/lit8 v1, p1, 0x1

    mul-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    aget-wide v0, v0, v1

    return-wide v0

    .line 414
    :cond_3
    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v1, v0

    add-int/lit8 v1, p2, 0x1

    mul-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    return-wide v0

    .line 418
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->varCovData:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, p2

    return-wide v0
.end method


# virtual methods
.method public getAdjustedRSquared()D
    .locals 2

    .line 379
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x4

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getCovarianceOfParameters(II)D
    .locals 4
    .param p1, "i"    # I
    .param p2, "j"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    .line 241
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 243
    :cond_0
    const/4 v0, 0x0

    if-ltz p1, :cond_2

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v1, v1

    if-ge p1, v1, :cond_2

    .line 246
    if-ltz p2, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v1, v1

    if-ge p2, v1, :cond_1

    .line 249
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide v0

    return-wide v0

    .line 247
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1

    .line 244
    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v1
.end method

.method public getErrorSumSquares()D
    .locals 2

    .line 329
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getMeanSquareError()D
    .locals 2

    .line 343
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getN()J
    .locals 2

    .line 273
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->nobs:J

    return-wide v0
.end method

.method public getNumberOfParameters()I
    .locals 1

    .line 261
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    .line 262
    const/4 v0, -0x1

    return v0

    .line 264
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v0, v0

    return v0
.end method

.method public getParameterEstimate(I)D
    .locals 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    .line 151
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 153
    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v0, v0

    if-ge p1, v0, :cond_1

    .line 156
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    aget-wide v0, v0, p1

    return-wide v0

    .line 154
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getParameterEstimates()[D
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    .line 171
    const/4 v0, 0x0

    return-object v0

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v0

    return-object v0
.end method

.method public getRSquared()D
    .locals 2

    .line 361
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getRegressionSumSquares()D
    .locals 4

    .line 307
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v3, 0x0

    aget-wide v2, v2, v3

    sub-double/2addr v0, v2

    return-wide v0
.end method

.method public getStdErrorOfEstimate(I)D
    .locals 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-nez v0, :cond_0

    .line 188
    return-wide v1

    .line 190
    :cond_0
    if-ltz p1, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 193
    invoke-direct {p0, p1, p1}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide v3

    .line 194
    .local v3, "var":D
    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    const-wide/16 v5, 0x1

    cmpl-double v0, v3, v5

    if-lez v0, :cond_1

    .line 195
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0

    .line 197
    :cond_1
    return-wide v1

    .line 191
    .end local v3    # "var":D
    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getStdErrorOfEstimates()[D
    .locals 6

    .line 212
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    return-object v0

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v0, v0

    new-array v0, v0, [D

    .line 216
    .local v0, "se":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->parameters:[D

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 217
    invoke-direct {p0, v1, v1}, Lorg/apache/commons/math3/stat/regression/RegressionResults;->getVcvElement(II)D

    move-result-wide v2

    .line 218
    .local v2, "var":D
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_1

    const-wide/16 v4, 0x1

    cmpl-double v4, v2, v4

    if-lez v4, :cond_1

    .line 219
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v0, v1

    .line 220
    goto :goto_1

    .line 222
    :cond_1
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    aput-wide v4, v0, v1

    .line 216
    .end local v2    # "var":D
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 224
    .end local v1    # "i":I
    :cond_2
    return-object v0
.end method

.method public getTotalSumSquares()D
    .locals 2

    .line 287
    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->globalFitInfo:[D

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public hasIntercept()Z
    .locals 1

    .line 389
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/RegressionResults;->containsConstant:Z

    return v0
.end method
