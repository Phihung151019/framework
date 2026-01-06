.class public Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
.super Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;
.source "SynchronizedMultivariateSummaryStatistics.java"


# static fields
.field private static final serialVersionUID:J = 0x6287ad8bc27185a3L


# direct methods
.method public constructor <init>(IZ)V
    .locals 0
    .param p1, "k"    # I
    .param p2, "isCovarianceBiasCorrected"    # Z

    .line 48
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;-><init>(IZ)V

    .line 49
    return-void
.end method


# virtual methods
.method public declared-synchronized addValue([D)V
    .locals 0
    .param p1, "value"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    monitor-enter p0

    .line 56
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->addValue([D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    monitor-exit p0

    return-void

    .line 55
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    .end local p1    # "value":[D
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 160
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 161
    monitor-exit p0

    return-void

    .line 159
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    monitor-enter p0

    .line 168
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 168
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    .end local p1    # "object":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    monitor-enter p0

    .line 120
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getCovariance()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 120
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getDimension()I
    .locals 1

    monitor-enter p0

    .line 64
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getDimension()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 64
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getGeoMeanImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 269
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeoMeanImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 269
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getGeometricMean()[D
    .locals 1

    monitor-enter p0

    .line 144
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getGeometricMean()[D

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 144
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMax()[D
    .locals 1

    monitor-enter p0

    .line 128
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMax()[D

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 128
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMaxImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 235
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMaxImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 235
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMean()[D
    .locals 1

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMean()[D

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 104
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMeanImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 286
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMeanImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 286
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMin()[D
    .locals 1

    monitor-enter p0

    .line 136
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMin()[D

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 136
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getMinImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 218
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getMinImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 218
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getN()J
    .locals 2

    monitor-enter p0

    .line 72
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getN()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 72
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getStandardDeviation()[D
    .locals 1

    monitor-enter p0

    .line 112
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getStandardDeviation()[D

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 112
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSum()[D
    .locals 1

    monitor-enter p0

    .line 80
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSum()[D

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 80
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSumImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 184
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 184
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSumLog()[D
    .locals 1

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumLog()[D

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 96
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSumLogImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 252
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumLogImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 252
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSumSq()[D
    .locals 1

    monitor-enter p0

    .line 88
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumSq()[D

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 88
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getSumsqImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 1

    monitor-enter p0

    .line 201
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->getSumsqImpl()[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 201
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized hashCode()I
    .locals 1

    monitor-enter p0

    .line 176
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->hashCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 176
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setGeoMeanImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .param p1, "geoMeanImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 278
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setGeoMeanImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    monitor-exit p0

    return-void

    .line 277
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    .end local p1    # "geoMeanImpl":[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMaxImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .param p1, "maxImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 244
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setMaxImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-void

    .line 243
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    .end local p1    # "maxImpl":[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMeanImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .param p1, "meanImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 295
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setMeanImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    monitor-exit p0

    return-void

    .line 294
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    .end local p1    # "meanImpl":[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setMinImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .param p1, "minImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 227
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setMinImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 226
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    .end local p1    # "minImpl":[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSumImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .param p1, "sumImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 193
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setSumImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    monitor-exit p0

    return-void

    .line 192
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    .end local p1    # "sumImpl":[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSumLogImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .param p1, "sumLogImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 261
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setSumLogImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 262
    monitor-exit p0

    return-void

    .line 260
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    .end local p1    # "sumLogImpl":[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized setSumsqImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .param p1, "sumsqImpl"    # [Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    monitor-enter p0

    .line 210
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->setSumsqImpl([Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    monitor-exit p0

    return-void

    .line 209
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    .end local p1    # "sumsqImpl":[Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 152
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/MultivariateSummaryStatistics;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 152
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedMultivariateSummaryStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
