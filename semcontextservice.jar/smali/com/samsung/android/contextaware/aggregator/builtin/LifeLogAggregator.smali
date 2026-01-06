.class public Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "LifeLogAggregator.java"


# direct methods
.method public constructor <init>(ILjava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6
    .param p1, "version"    # I
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .line 52
    .local p2, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move-object v4, p2

    move-object v5, p3

    .end local p1    # "version":I
    .end local p2    # "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    .end local p3    # "observable":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .local v1, "version":I
    .local v4, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    .local v5, "observable":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 201
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 202
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clear()V

    .line 203
    return-void
.end method

.method protected clearAccordingToRequest()V
    .locals 0

    .line 214
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 215
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->clearAccordingToRequest()V

    .line 216
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 191
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 192
    return-void
.end method

.method protected display()V
    .locals 0

    .line 303
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 181
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 182
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 238
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LIFE_LOG:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 2

    .line 227
    const-string v0, "LoggingType"

    const-string v1, "LoggingBundle"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 315
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 249
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 261
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .line 273
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 275
    .local v0, "subCollectorName":Ljava/lang/String;
    const/16 v1, 0x1c

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1d

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1e

    if-eq p1, v1, :cond_1

    const/16 v1, 0x1f

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    const/16 v1, 0x20

    if-ne p1, v1, :cond_2

    .line 282
    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 279
    :cond_1
    :goto_0
    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 280
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 285
    :cond_2
    :goto_1
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 289
    :cond_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v2

    .line 290
    .local v2, "sub":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-nez v2, :cond_4

    .line 291
    sget-object v3, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_SUB_COLLECTOR_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    .line 293
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v3

    .line 292
    invoke-static {v3}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    .line 291
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 294
    return v1

    .line 297
    :cond_4
    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextComponent;->setPropertyValue(ILjava/lang/Object;)Z

    move-result v1

    return v1

    .line 286
    .end local v2    # "sub":Lcom/samsung/android/contextaware/manager/ContextComponent;
    :cond_5
    :goto_2
    return v1
.end method

.method public final declared-synchronized updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 11
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    monitor-enter p0

    .line 64
    if-eqz p1, :cond_8

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 71
    :cond_0
    if-nez p2, :cond_1

    .line 72
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_NULL_EXCEPTION:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    .line 74
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v0

    .line 73
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 78
    .end local p0    # "this":Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateContext:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 80
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 81
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v0, :cond_5

    .line 82
    const-string v0, "StayingAreaCount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "names":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v4

    invoke-virtual {v6, v7, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v5

    invoke-virtual {v6, v7, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 88
    sget-object v6, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 89
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v6

    .line 88
    invoke-virtual {p0, v6}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v6

    .line 90
    .local v6, "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-nez v6, :cond_2

    .line 91
    const-string v1, "Sub-collection object is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 95
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "keys":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v9, v7, v4

    aget-object v10, v7, v4

    .line 98
    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 97
    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v9, v7, v5

    aget-object v10, v7, v5

    .line 100
    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v10

    .line 99
    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[J)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v9, v7, v2

    aget-object v10, v7, v2

    .line 102
    invoke-virtual {p2, v10}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v10

    .line 101
    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    .line 103
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v9, v7, v3

    aget-object v3, v7, v3

    .line 104
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v3

    .line 103
    invoke-virtual {v8, v9, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    .line 105
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v8, v7, v1

    aget-object v1, v7, v1

    .line 106
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    .line 105
    invoke-virtual {v3, v8, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v3, 0x5

    aget-object v8, v7, v3

    aget-object v3, v7, v3

    .line 108
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 107
    invoke-virtual {v1, v8, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v3, 0x6

    aget-object v8, v7, v3

    aget-object v3, v7, v3

    .line 110
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 109
    invoke-virtual {v1, v8, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v3, 0x7

    aget-object v8, v7, v3

    aget-object v3, v7, v3

    .line 112
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v3

    .line 111
    invoke-virtual {v1, v8, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V

    .line 116
    .end local v0    # "names":[Ljava/lang/String;
    .end local v6    # "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    .end local v7    # "keys":[Ljava/lang/String;
    :cond_3
    const-string v0, "MovingCount"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    .line 117
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 118
    .restart local v0    # "names":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    aget-object v3, v0, v4

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    aget-object v2, v0, v5

    invoke-virtual {v1, v2, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 122
    sget-object v1, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 123
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    .line 122
    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v1

    .line 124
    .local v1, "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-nez v1, :cond_4

    .line 125
    const-string v2, "Sub-collection object is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    monitor-exit p0

    return-void

    .line 129
    :cond_4
    :try_start_3
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "keys":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x8

    aget-object v5, v2, v4

    aget-object v4, v2, v4

    .line 132
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 131
    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0x9

    aget-object v5, v2, v4

    aget-object v4, v2, v4

    .line 134
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 133
    invoke-virtual {v3, v5, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;J)V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xa

    aget-object v5, v2, v4

    aget-object v4, v2, v4

    .line 136
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 135
    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xb

    aget-object v5, v2, v4

    aget-object v4, v2, v4

    .line 138
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 137
    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    .line 139
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/16 v4, 0xc

    aget-object v5, v2, v4

    aget-object v4, v2, v4

    .line 140
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v4

    .line 139
    invoke-virtual {v3, v5, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[I)V

    .line 142
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V

    .line 143
    .end local v0    # "names":[Ljava/lang/String;
    .end local v1    # "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    .end local v2    # "keys":[Ljava/lang/String;
    goto/16 :goto_0

    .line 144
    :cond_5
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 146
    .restart local v0    # "names":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v4

    invoke-virtual {v6, v7, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v6

    aget-object v7, v0, v5

    invoke-virtual {v6, v7, p2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 150
    sget-object v6, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_LPP:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 151
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v6

    .line 150
    invoke-virtual {p0, v6}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getSubCollectionObj(Ljava/lang/String;)Lcom/samsung/android/contextaware/manager/ContextComponent;

    move-result-object v6

    .line 152
    .restart local v6    # "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    if-nez v6, :cond_6

    .line 153
    const-string v1, "Sub-collection object is null"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 157
    :cond_6
    :try_start_4
    invoke-virtual {v6}, Lcom/samsung/android/contextaware/manager/ContextComponent;->getContextValueNames()[Ljava/lang/String;

    move-result-object v7

    .line 159
    .restart local v7    # "keys":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v8

    aget-object v9, v7, v4

    aget-object v4, v7, v4

    .line 160
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 159
    invoke-virtual {v8, v9, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;I)V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v8, v7, v5

    aget-object v5, v7, v5

    .line 162
    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v5

    .line 161
    invoke-virtual {v4, v8, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[J)V

    .line 163
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v5, v7, v2

    aget-object v2, v7, v2

    .line 164
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v2

    .line 163
    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    .line 165
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    aget-object v4, v7, v3

    aget-object v3, v7, v3

    .line 166
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v3

    .line 165
    invoke-virtual {v2, v4, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    aget-object v3, v7, v1

    aget-object v1, v7, v1

    .line 168
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    .line 167
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContextForDisplay(Ljava/lang/String;[D)V

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/LifeLogAggregator;->notifyObserver()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 172
    .end local v0    # "names":[Ljava/lang/String;
    .end local v6    # "obj":Lcom/samsung/android/contextaware/manager/ContextComponent;
    .end local v7    # "keys":[Ljava/lang/String;
    :cond_7
    :goto_0
    monitor-exit p0

    return-void

    .line 65
    :cond_8
    :goto_1
    :try_start_5
    sget-object v0, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->ERROR_UPDATED_CONTEXT_TYPE_FAULT:Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;

    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getCode()I

    move-result v0

    .line 66
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/AggregatorErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    .line 63
    .end local p1    # "type":Ljava/lang/String;
    .end local p2    # "context":Landroid/os/Bundle;
    :catchall_0
    move-exception p1

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p1
.end method
