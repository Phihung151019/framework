.class public abstract Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;
.super Lcom/samsung/android/contextaware/aggregator/Aggregator;
.source "EnvironmentSensorAggregator.java"


# instance fields
.field private mLoggingStatus:I


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 2
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p5, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/contextaware/manager/ContextComponent;",
            ">;",
            "Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;",
            ")V"
        }
    .end annotation

    .line 58
    .local p4, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/contextaware/aggregator/Aggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 38
    move-object v0, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "version":I
    .local v0, "observable":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;
    .local p2, "version":I
    .local p3, "context":Landroid/content/Context;
    .local p4, "looper":Landroid/os/Looper;
    .local p5, "collectionList":Ljava/util/concurrent/CopyOnWriteArrayList;, "Ljava/util/concurrent/CopyOnWriteArrayList<Lcom/samsung/android/contextaware/manager/ContextComponent;>;"
    const/4 v1, 0x0

    iput v1, p1, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    .line 59
    return-void
.end method


# virtual methods
.method protected abstract checkCompensationData([D)Z
.end method

.method protected abstract compensateForRawData([[D)[D
.end method

.method protected final getLoggingStatus()I
    .locals 1

    .line 195
    iget v0, p0, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    return v0
.end method

.method protected final getRawSensorData(Landroid/os/Bundle;Ljava/lang/String;)[D
    .locals 1
    .param p1, "context"    # Landroid/os/Bundle;
    .param p2, "valueName"    # Ljava/lang/String;

    .line 151
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method protected getRawSensorValueNames()[Ljava/lang/String;
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyCompensationData([D)V
    .locals 3
    .param p1, "compensationData"    # [D

    .line 134
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 136
    .local v0, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 137
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->notifyObserver()V

    .line 138
    return-void
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

    .line 173
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 174
    .local v0, "result":Z
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/Aggregator;->getSubCollectors()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 175
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 176
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/contextaware/manager/ContextProvider;

    .line 177
    .local v2, "next":Lcom/samsung/android/contextaware/manager/ContextProvider;
    if-nez v2, :cond_0

    .line 178
    goto :goto_0

    .line 180
    :cond_0
    instance-of v3, v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;

    if-nez v3, :cond_1

    .line 181
    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {v2, p1, p2}, Lcom/samsung/android/contextaware/manager/ContextProvider;->setPropertyValue(ILjava/lang/Object;)Z

    move-result v0

    .line 184
    nop

    .line 186
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "next":Lcom/samsung/android/contextaware/manager/ContextProvider;
    :cond_2
    return v0
.end method

.method public final updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/os/Bundle;

    .line 70
    if-nez p2, :cond_0

    .line 71
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 75
    const-string v0, "getRawSensorValueNames() is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 76
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 79
    .local v0, "bufSize":I
    if-gtz v0, :cond_2

    .line 80
    const-string v1, "length of getRawSensorValueNames() is zero"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 81
    return-void

    .line 84
    :cond_2
    const-string v1, "LoggingStatus"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->mLoggingStatus:I

    .line 86
    new-array v1, v0, [[D

    .line 87
    .local v1, "rawData":[[D
    const/4 v2, 0x0

    .line 89
    .local v2, "num":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorValueNames()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    aget-object v6, v3, v5

    .line 90
    .local v6, "i":Ljava/lang/String;
    invoke-virtual {p0, p2, v6}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getRawSensorData(Landroid/os/Bundle;Ljava/lang/String;)[D

    move-result-object v7

    aput-object v7, v1, v2

    .line 91
    aget-object v7, v1, v2

    if-eqz v7, :cond_4

    aget-object v7, v1, v2

    array-length v7, v7

    if-gtz v7, :cond_3

    goto :goto_1

    .line 96
    :cond_3
    nop

    .end local v6    # "i":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    .line 89
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 92
    .restart local v6    # "i":Ljava/lang/String;
    :cond_4
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rawData["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "].length is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 94
    return-void

    .line 99
    .end local v6    # "i":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->compensateForRawData([[D)[D

    move-result-object v3

    .line 100
    .local v3, "compensationData":[D
    if-eqz v3, :cond_7

    .line 101
    invoke-virtual {p0, v3}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->checkCompensationData([D)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_2

    .line 105
    :cond_6
    invoke-virtual {p0, v3}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->notifyCompensationData([D)V

    .line 106
    return-void

    .line 102
    :cond_7
    :goto_2
    return-void
.end method
