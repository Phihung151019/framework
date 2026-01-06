.class public Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;
.super Ljava/lang/Object;
.source "AggregateSummaryStatistics.java"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71e58548e148e35aL


# instance fields
.field private final statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

.field private final statisticsPrototype:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;-><init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V
    .locals 1
    .param p1, "prototypeStatistics"    # Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 99
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;-><init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    .line 101
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V
    .locals 1
    .param p1, "prototypeStatistics"    # Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .param p2, "initialStatistics"    # Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-nez p1, :cond_0

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statisticsPrototype:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 127
    if-nez p2, :cond_1

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    goto :goto_1

    :cond_1
    move-object v0, p2

    :goto_1
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    .line 129
    return-void
.end method

.method public static aggregate(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;",
            ">;)",
            "Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;"
        }
    .end annotation

    .line 306
    .local p0, "statistics":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 307
    return-object v0

    .line 309
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 310
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 311
    return-object v0

    .line 313
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;

    .line 314
    .local v0, "current":Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    .line 315
    .local v2, "n":J
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMin()D

    move-result-wide v4

    .line 316
    .local v4, "min":D
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getSum()D

    move-result-wide v6

    .line 317
    .local v6, "sum":D
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMax()D

    move-result-wide v8

    .line 318
    .local v8, "max":D
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v10

    .line 319
    .local v10, "var":D
    long-to-double v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    mul-double/2addr v12, v10

    .line 320
    .local v12, "m2":D
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v16

    move-wide/from16 v25, v4

    move-wide/from16 v27, v6

    move-wide/from16 v23, v8

    move-wide/from16 v17, v16

    .line 321
    .end local v4    # "min":D
    .end local v6    # "sum":D
    .end local v8    # "max":D
    .local v17, "mean":D
    .local v23, "max":D
    .local v25, "min":D
    .local v27, "sum":D
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 322
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;

    .line 323
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMin()D

    move-result-wide v4

    cmpg-double v4, v4, v25

    if-ltz v4, :cond_2

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 324
    :cond_2
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMin()D

    move-result-wide v4

    move-wide/from16 v25, v4

    .line 326
    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMax()D

    move-result-wide v4

    cmpl-double v4, v4, v23

    if-gtz v4, :cond_4

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 327
    :cond_4
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMax()D

    move-result-wide v4

    move-wide/from16 v23, v4

    .line 329
    :cond_5
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getSum()D

    move-result-wide v4

    add-double v27, v27, v4

    .line 330
    long-to-double v4, v2

    .line 331
    .local v4, "oldN":D
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v6

    long-to-double v6, v6

    .line 332
    .local v6, "curN":D
    long-to-double v8, v2

    add-double/2addr v8, v6

    double-to-long v2, v8

    .line 333
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v8

    sub-double v8, v8, v17

    .line 334
    .local v8, "meanDiff":D
    move-wide/from16 v19, v14

    long-to-double v14, v2

    div-double v17, v27, v14

    .line 335
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v14

    sub-double v21, v6, v19

    mul-double v14, v14, v21

    .line 336
    .local v14, "curM2":D
    add-double v21, v12, v14

    mul-double v29, v8, v8

    mul-double v29, v29, v4

    mul-double v29, v29, v6

    move-object/from16 v16, v0

    move-object/from16 v31, v1

    .end local v0    # "current":Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;>;"
    .local v16, "current":Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .local v31, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;>;"
    long-to-double v0, v2

    div-double v29, v29, v0

    add-double v12, v21, v29

    .line 337
    .end local v4    # "oldN":D
    .end local v6    # "curN":D
    .end local v8    # "meanDiff":D
    .end local v14    # "curM2":D
    move-object/from16 v0, v16

    move-wide/from16 v14, v19

    move-object/from16 v1, v31

    goto :goto_0

    .line 339
    .end local v16    # "current":Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .end local v31    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;>;"
    .restart local v0    # "current":Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .restart local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;>;"
    :cond_6
    move-object/from16 v31, v1

    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;>;"
    .restart local v31    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;>;"
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_7

    .line 340
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    move-wide/from16 v19, v4

    .local v4, "variance":D
    goto :goto_1

    .line 341
    .end local v4    # "variance":D
    :cond_7
    const-wide/16 v4, 0x1

    cmp-long v1, v2, v4

    if-nez v1, :cond_8

    .line 342
    const-wide/16 v4, 0x0

    move-wide/from16 v19, v4

    .restart local v4    # "variance":D
    goto :goto_1

    .line 344
    .end local v4    # "variance":D
    :cond_8
    sub-long v4, v2, v4

    long-to-double v4, v4

    div-double v4, v12, v4

    move-wide/from16 v19, v4

    .line 346
    .local v19, "variance":D
    :goto_1
    new-instance v16, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;

    move-wide/from16 v21, v2

    .end local v2    # "n":J
    .local v21, "n":J
    invoke-direct/range {v16 .. v28}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;-><init>(DDJDDD)V

    return-object v16
.end method


# virtual methods
.method public createContributingStatistics()Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .locals 2

    .line 284
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;-><init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    .line 288
    .local v0, "contributingStatistics":Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statisticsPrototype:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-static {v1, v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    .line 290
    return-object v0
.end method

.method public getGeometricMean()D
    .locals 3

    .line 231
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 232
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMax()D
    .locals 3

    .line 138
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 139
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 140
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMean()D
    .locals 3

    .line 149
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 150
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 151
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getMin()D
    .locals 3

    .line 161
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 162
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getN()J
    .locals 3

    .line 172
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 174
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSecondMoment()D
    .locals 3

    .line 257
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 258
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSecondMoment()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 259
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getStandardDeviation()D
    .locals 3

    .line 184
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getStandardDeviation()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 186
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSum()D
    .locals 3

    .line 195
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 196
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSumOfLogs()D
    .locals 3

    .line 219
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 220
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumOfLogs()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSummary()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .locals 15

    .line 269
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v1

    .line 270
    :try_start_0
    new-instance v2, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getMean()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getVariance()D

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getN()J

    move-result-wide v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getMax()D

    move-result-wide v9

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getMin()D

    move-result-wide v11

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getSum()D

    move-result-wide v13

    invoke-direct/range {v2 .. v14}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;-><init>(DDJDDD)V

    monitor-exit v1

    return-object v2

    .line 272
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSumsq()D
    .locals 3

    .line 243
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 244
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getVariance()D
    .locals 3

    .line 207
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
