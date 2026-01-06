.class public Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
.super Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
.source "SynchronizedDescriptiveStatistics.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;-><init>(I)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "window"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 55
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;-><init>(I)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;)V
    .locals 0
    .param p1, "original"    # Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 65
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;-><init>()V

    .line 66
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;)V

    .line 67
    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;)V
    .locals 1
    .param p0, "source"    # Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    .param p1, "dest"    # Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 184
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 185
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 188
    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;)V

    .line 189
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 191
    return-void

    .line 189
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local p0    # "source":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    .end local p1    # "dest":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    :try_start_4
    throw v0

    .line 190
    .restart local p0    # "source":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    .restart local p1    # "dest":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method


# virtual methods
.method public declared-synchronized addValue(D)V
    .locals 0
    .param p1, "v"    # D

    monitor-enter p0

    .line 74
    :try_start_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->addValue(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 73
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    .end local p1    # "v":D
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D
    .locals 2
    .param p1, "stat"    # Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->apply(Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 82
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    .end local p1    # "stat":Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
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

    .line 90
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    monitor-exit p0

    return-void

    .line 89
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;->copy()Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized copy()Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    .locals 1

    monitor-enter p0

    .line 165
    :try_start_0
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;-><init>()V

    .line 168
    .local v0, "result":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    monitor-exit p0

    return-object v0

    .line 164
    .end local v0    # "result":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getElement(I)D
    .locals 2
    .param p1, "index"    # I

    monitor-enter p0

    .line 98
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getElement(I)D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 98
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    .end local p1    # "index":I
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized getN()J
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getN()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 106
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getQuadraticMean()D
    .locals 2

    monitor-enter p0

    .line 122
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getQuadraticMean()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 122
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getStandardDeviation()D
    .locals 2

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getStandardDeviation()D

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 114
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getValues()[D
    .locals 1

    monitor-enter p0

    .line 130
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getValues()[D

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 130
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getWindowSize()I
    .locals 1

    monitor-enter p0

    .line 138
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getWindowSize()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 138
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized setWindowSize(I)V
    .locals 0
    .param p1, "windowSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    monitor-enter p0

    .line 146
    :try_start_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->setWindowSize(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    .line 145
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    .end local p1    # "windowSize":I
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

    .line 154
    :try_start_0
    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 154
    .end local p0    # "this":Lorg/apache/commons/math3/stat/descriptive/SynchronizedDescriptiveStatistics;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
