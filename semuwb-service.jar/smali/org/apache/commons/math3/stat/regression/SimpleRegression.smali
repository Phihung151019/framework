.class public Lorg/apache/commons/math3/stat/regression/SimpleRegression;
.super Ljava/lang/Object;
.source "SimpleRegression.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/commons/math3/stat/regression/UpdatingMultipleLinearRegression;


# static fields
.field private static final serialVersionUID:J = -0x29b2ccc654c84227L


# instance fields
.field private final hasIntercept:Z

.field private n:J

.field private sumX:D

.field private sumXX:D

.field private sumXY:D

.field private sumY:D

.field private sumYY:D

.field private xbar:D

.field private ybar:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 100
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;-><init>(Z)V

    .line 101
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4
    .param p1, "includeIntercept"    # Z

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 72
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 75
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 78
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 81
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 84
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    .line 87
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 90
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 115
    iput-boolean p1, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    .line 116
    return-void
.end method

.method private getIntercept(D)D
    .locals 4
    .param p1, "slope"    # D

    .line 743
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_0

    .line 744
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    mul-double/2addr v2, p1

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0

    .line 746
    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private getRegressionSumSquares(D)D
    .locals 4
    .param p1, "slope"    # D

    .line 756
    mul-double v0, p1, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public addData(DD)V
    .locals 17
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 132
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 133
    iput-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 134
    iput-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    goto :goto_0

    .line 136
    :cond_0
    iget-boolean v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v5, :cond_1

    .line 137
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v5, v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    add-double/2addr v5, v7

    .line 138
    .local v5, "fact1":D
    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v9, v9

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v11, v11

    add-double/2addr v11, v7

    div-double/2addr v9, v11

    .line 139
    .local v9, "fact2":D
    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    sub-double v7, v1, v7

    .line 140
    .local v7, "dx":D
    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    sub-double v11, v3, v11

    .line 141
    .local v11, "dy":D
    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v15, v7, v7

    mul-double/2addr v15, v9

    add-double/2addr v13, v15

    iput-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 142
    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v15, v11, v11

    mul-double/2addr v15, v9

    add-double/2addr v13, v15

    iput-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 143
    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v15, v7, v11

    mul-double/2addr v15, v9

    add-double/2addr v13, v15

    iput-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 144
    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    div-double v15, v7, v5

    add-double/2addr v13, v15

    iput-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 145
    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    div-double v15, v11, v5

    add-double/2addr v13, v15

    iput-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 148
    .end local v5    # "fact1":D
    .end local v7    # "dx":D
    .end local v9    # "fact2":D
    .end local v11    # "dy":D
    :cond_1
    :goto_0
    iget-boolean v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v5, :cond_2

    .line 149
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v7, v1, v1

    add-double/2addr v5, v7

    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 150
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v7, v3, v3

    add-double/2addr v5, v7

    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 151
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v7, v1, v3

    add-double/2addr v5, v7

    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 153
    :cond_2
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    add-double/2addr v5, v1

    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 154
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    add-double/2addr v5, v3

    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 155
    iget-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    .line 156
    return-void
.end method

.method public addData([[D)V
    .locals 5
    .param p1, "data"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 259
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 260
    aget-object v1, p1, v0

    array-length v1, v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 264
    aget-object v1, p1, v0

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    aget-object v3, p1, v0

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 261
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    aget-object v4, p1, v0

    array-length v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1

    .line 266
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public addObservation([DD)V
    .locals 4
    .param p1, "x"    # [D
    .param p2, "y"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    aget-wide v0, p1, v0

    invoke-virtual {p0, v0, v1, p2, p3}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    .line 282
    return-void

    .line 279
    :cond_1
    :goto_0
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INVALID_REGRESSION_OBSERVATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    if-eqz p1, :cond_2

    array-length v0, p1

    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public addObservations([[D[D)V
    .locals 7
    .param p1, "x"    # [[D
    .param p2, "y"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;
        }
    .end annotation

    .line 295
    const/4 v0, 0x0

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_0

    goto :goto_2

    .line 301
    :cond_0
    const/4 v1, 0x1

    .line 302
    .local v1, "obsOk":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    .line 303
    aget-object v3, p1, v2

    if-eqz v3, :cond_1

    aget-object v3, p1, v2

    array-length v3, v3

    if-nez v3, :cond_2

    .line 304
    :cond_1
    const/4 v1, 0x0

    .line 302
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 307
    .end local v2    # "i":I
    :cond_3
    if-eqz v1, :cond_5

    .line 312
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 313
    aget-object v3, p1, v2

    aget-wide v3, v3, v0

    aget-wide v5, p2, v2

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->addData(DD)V

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 315
    .end local v2    # "i":I
    :cond_4
    return-void

    .line 308
    :cond_5
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_FOR_NUMBER_OF_PREDICTORS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 296
    .end local v1    # "obsOk":Z
    :cond_6
    :goto_2
    new-instance v1, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    if-nez p1, :cond_7

    move v3, v0

    goto :goto_3

    :cond_7
    array-length v3, p1

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-nez p2, :cond_8

    goto :goto_4

    :cond_8
    array-length v0, p2

    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v3, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method

.method public append(Lorg/apache/commons/math3/stat/regression/SimpleRegression;)V
    .locals 14
    .param p1, "reg"    # Lorg/apache/commons/math3/stat/regression/SimpleRegression;

    .line 173
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 174
    iget-wide v0, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 175
    iget-wide v0, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 176
    iget-wide v0, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 177
    iget-wide v0, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 178
    iget-wide v0, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    goto :goto_0

    .line 180
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_1

    .line 181
    iget-wide v0, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v0, v0

    iget-wide v2, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    add-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 182
    .local v0, "fact1":D
    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v4, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    mul-long/2addr v2, v4

    long-to-double v2, v2

    iget-wide v4, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    add-long/2addr v4, v6

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 183
    .local v2, "fact2":D
    iget-wide v4, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    sub-double/2addr v4, v6

    .line 184
    .local v4, "dx":D
    iget-wide v6, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    sub-double/2addr v6, v8

    .line 185
    .local v6, "dy":D
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v12, v4, v4

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 186
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v12, v6, v6

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 187
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v10, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v12, v4, v6

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 188
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    mul-double v10, v4, v0

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 189
    iget-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    mul-double v10, v6, v0

    add-double/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 190
    .end local v0    # "fact1":D
    .end local v2    # "fact2":D
    .end local v4    # "dx":D
    .end local v6    # "dy":D
    goto :goto_0

    .line 191
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iget-wide v2, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 192
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v2, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 193
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v2, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 196
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    iget-wide v2, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 197
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v2, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 198
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v2, p1, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    .line 199
    return-void
.end method

.method public clear()V
    .locals 2

    .line 340
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 341
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 342
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 343
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 344
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 345
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    .line 346
    return-void
.end method

.method public getIntercept()D
    .locals 2

    .line 402
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getIntercept(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getInterceptStdErr()D
    .locals 8

    .line 606
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v0, :cond_0

    .line 607
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 609
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    div-double/2addr v4, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    mul-double/2addr v2, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v2, v6

    add-double/2addr v4, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getMeanSquareError()D
    .locals 6

    .line 545
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 546
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 548
    :cond_0
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v4, 0x1

    :goto_0
    sub-long/2addr v2, v4

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getN()J
    .locals 2

    .line 354
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    return-wide v0
.end method

.method public getR()D
    .locals 6

    .line 566
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    .line 567
    .local v0, "b1":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getRSquare()D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    .line 568
    .local v2, "result":D
    const-wide/16 v4, 0x0

    cmpg-double v4, v0, v4

    if-gez v4, :cond_0

    .line 569
    neg-double v2, v2

    .line 571
    :cond_0
    return-wide v2
.end method

.method public getRSquare()D
    .locals 4

    .line 589
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getTotalSumSquares()D

    move-result-wide v0

    .line 590
    .local v0, "ssto":D
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v2

    sub-double v2, v0, v2

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getRegressionSumSquares()D
    .locals 2

    .line 531
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getRegressionSumSquares(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSignificance()D
    .locals 5

    .line 723
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 724
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 727
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/distribution/TDistribution;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v3, 0x2

    sub-long/2addr v1, v3

    long-to-double v1, v1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    .line 728
    .local v0, "distribution":Lorg/apache/commons/math3/distribution/TDistribution;
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlopeStdErr()D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v3, v1

    const-wide/high16 v1, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v1

    return-wide v3
.end method

.method public getSlope()D
    .locals 7

    .line 432
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    if-gez v0, :cond_0

    .line 433
    return-wide v1

    .line 435
    :cond_0
    iget-wide v3, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    const-wide/16 v5, 0xa

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    .line 436
    return-wide v1

    .line 438
    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSlopeConfidenceInterval()D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 651
    const-wide v0, 0x3fa999999999999aL    # 0.05

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlopeConfidenceInterval(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSlopeConfidenceInterval(D)D
    .locals 7
    .param p1, "alpha"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 687
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x3

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 688
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 690
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gez v2, :cond_1

    const-wide/16 v2, 0x0

    cmpg-double v2, p1, v2

    if-lez v2, :cond_1

    .line 695
    new-instance v2, Lorg/apache/commons/math3/distribution/TDistribution;

    iget-wide v3, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v5, 0x2

    sub-long/2addr v3, v5

    long-to-double v3, v3

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(D)V

    .line 696
    .local v2, "distribution":Lorg/apache/commons/math3/distribution/TDistribution;
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlopeStdErr()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double v5, p1, v5

    sub-double/2addr v0, v5

    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/distribution/TDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v0

    mul-double/2addr v3, v0

    return-wide v3

    .line 691
    .end local v2    # "distribution":Lorg/apache/commons/math3/distribution/TDistribution;
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public getSlopeStdErr()D
    .locals 4

    .line 625
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSumOfCrossProducts()D
    .locals 2

    .line 511
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    return-wide v0
.end method

.method public getSumSquaredErrors()D
    .locals 6

    .line 471
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v2, v4

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalSumSquares()D
    .locals 4

    .line 485
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 486
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 488
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    return-wide v0
.end method

.method public getXSumSquares()D
    .locals 4

    .line 499
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 500
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0

    .line 502
    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    return-wide v0
.end method

.method public hasIntercept()Z
    .locals 1

    .line 412
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    return v0
.end method

.method public predict(D)D
    .locals 6
    .param p1, "x"    # D

    .line 375
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v0

    .line 376
    .local v0, "b1":D
    iget-boolean v2, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v2, :cond_0

    .line 377
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getIntercept(D)D

    move-result-wide v2

    mul-double v4, v0, p1

    add-double/2addr v2, v4

    return-wide v2

    .line 379
    :cond_0
    mul-double v2, v0, p1

    return-wide v2
.end method

.method public regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 33
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 772
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    const-wide/high16 v2, 0x7ff8000000000000L    # Double.NaN

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_2

    .line 773
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v8, 0x3

    cmp-long v1, v6, v8

    if-ltz v1, :cond_1

    .line 776
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    sget-wide v8, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpl-double v1, v6, v8

    const/4 v6, 0x3

    const/4 v9, 0x2

    if-lez v1, :cond_0

    .line 777
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getIntercept()D

    move-result-wide v1

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSlope()D

    move-result-wide v10

    new-array v3, v9, [D

    aput-wide v1, v3, v4

    aput-wide v10, v3, v5

    move-object v13, v3

    .line 778
    .local v13, "params":[D
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v1

    .line 779
    .local v1, "mse":D
    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    mul-double/2addr v14, v7

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v7, v7

    div-double/2addr v14, v7

    add-double v21, v10, v14

    .line 780
    .local v21, "_syy":D
    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    mul-double/2addr v7, v10

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v7, v10

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v10, v10

    div-double v10, v16, v10

    add-double/2addr v7, v10

    mul-double/2addr v7, v1

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    neg-double v10, v10

    mul-double/2addr v10, v1

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v10, v14

    iget-wide v14, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double v14, v1, v14

    new-array v3, v6, [D

    aput-wide v7, v3, v4

    aput-wide v10, v3, v5

    aput-wide v14, v3, v9

    .line 781
    .local v3, "vcv":[D
    new-instance v12, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v3}, [[D

    move-result-object v14

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v23

    const/16 v25, 0x1

    const/16 v26, 0x0

    const/4 v15, 0x1

    const/16 v18, 0x2

    move-wide/from16 v16, v4

    move-wide/from16 v19, v6

    invoke-direct/range {v12 .. v26}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v12

    .line 784
    .end local v1    # "mse":D
    .end local v3    # "vcv":[D
    .end local v13    # "params":[D
    .end local v21    # "_syy":D
    :cond_0
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v10, v10

    div-double/2addr v7, v10

    new-array v1, v9, [D

    aput-wide v7, v1, v4

    aput-wide v2, v1, v5

    move-object/from16 v19, v1

    .line 786
    .local v19, "params":[D
    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v10, v10

    sub-double v10, v10, v16

    div-double/2addr v7, v10

    new-array v1, v6, [D

    aput-wide v7, v1, v4

    aput-wide v2, v1, v5

    aput-wide v2, v1, v9

    .line 787
    .local v1, "vcv":[D
    new-instance v18, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v1}, [[D

    move-result-object v20

    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v29

    const/16 v31, 0x1

    const/16 v32, 0x0

    const/16 v21, 0x1

    const/16 v24, 0x1

    move-wide/from16 v22, v2

    move-wide/from16 v25, v4

    move-wide/from16 v27, v6

    invoke-direct/range {v18 .. v32}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v18

    .line 774
    .end local v1    # "vcv":[D
    .end local v19    # "params":[D
    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_REGRESSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1

    .line 791
    :cond_2
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v8, 0x2

    cmp-long v1, v6, v8

    if-ltz v1, :cond_4

    .line 794
    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_3

    .line 795
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getMeanSquareError()D

    move-result-wide v1

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v1, v6

    new-array v3, v5, [D

    aput-wide v1, v3, v4

    .line 796
    .restart local v3    # "vcv":[D
    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    div-double/2addr v1, v6

    new-array v5, v5, [D

    aput-wide v1, v5, v4

    move-object v7, v5

    .line 797
    .local v7, "params":[D
    new-instance v6, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v3}, [[D

    move-result-object v8

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v1, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->getSumSquaredErrors()D

    move-result-wide v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x1

    move-wide v15, v1

    invoke-direct/range {v6 .. v20}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v6

    .line 800
    .end local v3    # "vcv":[D
    .end local v7    # "params":[D
    :cond_3
    new-array v1, v5, [D

    aput-wide v2, v1, v4

    .line 801
    .restart local v1    # "vcv":[D
    new-array v5, v5, [D

    aput-wide v2, v5, v4

    move-object v7, v5

    .line 802
    .restart local v7    # "params":[D
    new-instance v6, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v1}, [[D

    move-result-object v8

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x1

    const-wide/high16 v13, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v15, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v17, 0x7ff8000000000000L    # Double.NaN

    invoke-direct/range {v6 .. v20}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v6

    .line 792
    .end local v1    # "vcv":[D
    .end local v7    # "params":[D
    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_ENOUGH_DATA_REGRESSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v1
.end method

.method public regress([I)Lorg/apache/commons/math3/stat/regression/RegressionResults;
    .locals 45
    .param p1, "variablesToInclude"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 817
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    .line 874
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 817
    if-eqz v1, :cond_e

    array-length v4, v1

    if-eqz v4, :cond_e

    .line 820
    array-length v4, v1

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-gt v4, v5, :cond_c

    array-length v4, v1

    if-le v4, v6, :cond_0

    iget-boolean v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v4, :cond_0

    goto/16 :goto_1

    .line 826
    :cond_0
    iget-boolean v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-eqz v4, :cond_a

    .line 827
    array-length v4, v1

    if-ne v4, v5, :cond_4

    .line 828
    aget v4, v1, v2

    if-eq v4, v6, :cond_3

    .line 830
    aget v4, v1, v2

    if-nez v4, :cond_2

    .line 833
    aget v4, v1, v6

    if-ne v4, v6, :cond_1

    .line 836
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object v2

    return-object v2

    .line 834
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4

    .line 831
    :cond_2
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4

    .line 829
    :cond_3
    new-instance v3, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_INCREASING_SEQUENCE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3

    .line 838
    :cond_4
    aget v4, v1, v2

    if-eq v4, v6, :cond_6

    aget v4, v1, v2

    if-nez v4, :cond_5

    goto :goto_0

    .line 839
    :cond_5
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v2, v3, v5}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4

    .line 841
    :cond_6
    :goto_0
    iget-wide v3, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    mul-double/2addr v3, v7

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v7, v7

    div-double/2addr v3, v7

    .line 842
    .local v3, "_mean":D
    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    add-double v18, v7, v3

    .line 843
    .local v18, "_syy":D
    aget v5, v1, v2

    const-wide/16 v7, 0x1

    if-nez v5, :cond_7

    .line 845
    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    sub-long/2addr v11, v7

    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    mul-long/2addr v11, v7

    long-to-double v7, v11

    div-double/2addr v9, v7

    new-array v5, v6, [D

    aput-wide v9, v5, v2

    .line 846
    .local v5, "vcv":[D
    iget-wide v7, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    new-array v6, v6, [D

    aput-wide v7, v6, v2

    move-object/from16 v21, v6

    .line 847
    .local v21, "params":[D
    new-instance v20, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v5}, [[D

    move-result-object v22

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    iget-wide v8, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    add-double v29, v18, v3

    iget-wide v10, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    const/16 v33, 0x1

    const/16 v34, 0x0

    const/16 v23, 0x1

    const/16 v26, 0x1

    move-wide/from16 v24, v6

    move-wide/from16 v27, v8

    move-wide/from16 v31, v10

    invoke-direct/range {v20 .. v34}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v20

    .line 851
    .end local v5    # "vcv":[D
    .end local v21    # "params":[D
    :cond_7
    aget v5, v1, v2

    if-ne v5, v6, :cond_9

    .line 853
    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    mul-double/2addr v11, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v13, v13

    div-double/2addr v11, v13

    add-double v24, v9, v11

    .line 854
    .local v24, "_sxx":D
    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    iget-wide v11, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    mul-double/2addr v11, v13

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v13, v13

    div-double/2addr v11, v13

    add-double v26, v9, v11

    .line 855
    .local v26, "_sxy":D
    mul-double v9, v26, v26

    div-double v9, v9, v24

    sub-double v9, v18, v9

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v9, v10}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v20

    .line 856
    .local v20, "_sse":D
    iget-wide v9, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    sub-long/2addr v9, v7

    long-to-double v7, v9

    div-double v7, v20, v7

    .line 857
    .local v7, "_mse":D
    invoke-static/range {v24 .. v25}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_8

    .line 858
    div-double v9, v7, v24

    new-array v5, v6, [D

    aput-wide v9, v5, v2

    .line 859
    .restart local v5    # "vcv":[D
    div-double v9, v26, v24

    new-array v6, v6, [D

    aput-wide v9, v6, v2

    move-object v10, v6

    .line 860
    .local v10, "params":[D
    new-instance v9, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v5}, [[D

    move-result-object v11

    iget-wide v13, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    move-wide/from16 v28, v3

    .end local v3    # "_mean":D
    .local v28, "_mean":D
    iget-wide v2, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/4 v12, 0x1

    const/4 v15, 0x1

    move-wide/from16 v16, v2

    invoke-direct/range {v9 .. v23}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v9

    .line 864
    .end local v5    # "vcv":[D
    .end local v10    # "params":[D
    .end local v28    # "_mean":D
    .restart local v3    # "_mean":D
    :cond_8
    move-wide/from16 v28, v3

    .end local v3    # "_mean":D
    .restart local v28    # "_mean":D
    new-array v3, v6, [D

    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    aput-wide v4, v3, v2

    .line 865
    .local v3, "vcv":[D
    new-array v6, v6, [D

    aput-wide v4, v6, v2

    move-object/from16 v31, v6

    .line 866
    .local v31, "params":[D
    new-instance v30, Lorg/apache/commons/math3/stat/regression/RegressionResults;

    filled-new-array {v3}, [[D

    move-result-object v32

    iget-wide v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v33, 0x1

    const/16 v36, 0x1

    const-wide/high16 v37, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v39, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v41, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v34, v4

    invoke-direct/range {v30 .. v44}, Lorg/apache/commons/math3/stat/regression/RegressionResults;-><init>([D[[DZJIDDDZZ)V

    return-object v30

    .line 851
    .end local v7    # "_mse":D
    .end local v20    # "_sse":D
    .end local v24    # "_sxx":D
    .end local v26    # "_sxy":D
    .end local v28    # "_mean":D
    .end local v31    # "params":[D
    .local v3, "_mean":D
    :cond_9
    move-wide/from16 v28, v3

    .line 871
    .end local v3    # "_mean":D
    .end local v18    # "_syy":D
    nop

    .line 879
    const/4 v2, 0x0

    return-object v2

    .line 873
    :cond_a
    aget v4, v1, v2

    if-nez v4, :cond_b

    .line 876
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->regress()Lorg/apache/commons/math3/stat/regression/RegressionResults;

    move-result-object v2

    return-object v2

    .line 874
    :cond_b
    new-instance v4, Lorg/apache/commons/math3/exception/OutOfRangeException;

    aget v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v4, v2, v3, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v4

    .line 821
    :cond_c
    :goto_1
    new-instance v2, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_SIZE_EXCEEDS_MAX_VARIABLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length v4, v1

    if-le v4, v6, :cond_d

    iget-boolean v4, v0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    if-nez v4, :cond_d

    move v5, v6

    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/ModelSpecificationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v2

    .line 818
    :cond_e
    new-instance v3, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ARRAY_ZERO_LENGTH_OR_NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v3
.end method

.method public removeData(DD)V
    .locals 13
    .param p1, "x"    # D
    .param p3, "y"    # D

    .line 215
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 216
    iget-boolean v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->hasIntercept:Z

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_0

    .line 217
    iget-wide v3, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v3, v3

    sub-double/2addr v3, v1

    .line 218
    .local v3, "fact1":D
    iget-wide v5, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v5, v5

    iget-wide v7, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v7, v7

    sub-double/2addr v7, v1

    div-double/2addr v5, v7

    .line 219
    .local v5, "fact2":D
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    sub-double v0, p1, v0

    .line 220
    .local v0, "dx":D
    iget-wide v7, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    sub-double v7, p3, v7

    .line 221
    .local v7, "dy":D
    iget-wide v9, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v11, v0, v0

    mul-double/2addr v11, v5

    sub-double/2addr v9, v11

    iput-wide v9, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 222
    iget-wide v9, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v11, v7, v7

    mul-double/2addr v11, v5

    sub-double/2addr v9, v11

    iput-wide v9, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 223
    iget-wide v9, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v11, v0, v7

    mul-double/2addr v11, v5

    sub-double/2addr v9, v11

    iput-wide v9, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 224
    iget-wide v9, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    div-double v11, v0, v3

    sub-double/2addr v9, v11

    iput-wide v9, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 225
    iget-wide v9, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    div-double v11, v7, v3

    sub-double/2addr v9, v11

    iput-wide v9, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 226
    .end local v0    # "dx":D
    .end local v3    # "fact1":D
    .end local v5    # "fact2":D
    .end local v7    # "dy":D
    goto :goto_0

    .line 227
    :cond_0
    iget-wide v3, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    long-to-double v3, v3

    sub-double/2addr v3, v1

    .line 228
    .restart local v3    # "fact1":D
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    mul-double v5, p1, p1

    sub-double/2addr v0, v5

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXX:D

    .line 229
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    mul-double v5, p3, p3

    sub-double/2addr v0, v5

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumYY:D

    .line 230
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    mul-double v5, p1, p3

    sub-double/2addr v0, v5

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumXY:D

    .line 231
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    div-double v5, p1, v3

    sub-double/2addr v0, v5

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->xbar:D

    .line 232
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    div-double v5, p3, v3

    sub-double/2addr v0, v5

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->ybar:D

    .line 234
    .end local v3    # "fact1":D
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumX:D

    .line 235
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    sub-double v0, v0, p3

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->sumY:D

    .line 236
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    .line 238
    :cond_1
    return-void
.end method

.method public removeData([[D)V
    .locals 5
    .param p1, "data"    # [[D

    .line 331
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->n:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 332
    aget-object v1, p1, v0

    const/4 v2, 0x0

    aget-wide v1, v1, v2

    aget-object v3, p1, v0

    const/4 v4, 0x1

    aget-wide v3, v3, v4

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/apache/commons/math3/stat/regression/SimpleRegression;->removeData(DD)V

    .line 331
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 334
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
