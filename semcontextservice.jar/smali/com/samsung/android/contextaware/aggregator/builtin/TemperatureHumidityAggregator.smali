.class public Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;
.super Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;
.source "TemperatureHumidityAggregator.java"


# instance fields
.field private mSleepTime:J

.field private mWakeupTime:J


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

    .line 56
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
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;-><init>(ILandroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 40
    const-wide/16 p1, 0x0

    iput-wide p1, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    .line 41
    iput-wide p1, v0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    .line 57
    return-void
.end method


# virtual methods
.method protected final checkCompensationData([D)Z
    .locals 2
    .param p1, "compensationData"    # [D

    .line 206
    const/4 v0, 0x0

    .line 208
    .local v0, "res":Z
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_1

    .line 209
    :cond_0
    const/4 v0, 0x1

    .line 212
    :cond_1
    return v0
.end method

.method public final clear()V
    .locals 0

    .line 313
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 314
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->clear()V

    .line 315
    return-void
.end method

.method protected clearAccordingToRequest()V
    .locals 0

    .line 326
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 327
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->clearAccordingToRequest()V

    .line 328
    return-void
.end method

.method protected final compensateForRawData([[D)[D
    .locals 8
    .param p1, "rawSensorData"    # [[D

    .line 91
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    array-length v1, p1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    goto :goto_2

    .line 99
    :cond_0
    const/4 v1, 0x0

    aget-object v1, p1, v1

    array-length v1, v1

    .line 100
    .local v1, "nLenTemp":I
    aget-object v2, p1, v2

    array-length v2, v2

    .line 107
    .local v2, "nLenHumid":I
    if-eqz v1, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    const/4 v0, 0x0

    .line 113
    .local v0, "nLen":I
    if-gt v1, v2, :cond_2

    .line 114
    mul-int/lit8 v0, v1, 0x2

    goto :goto_0

    .line 116
    :cond_2
    mul-int/lit8 v0, v2, 0x2

    .line 119
    :goto_0
    new-array v3, v0, [D

    .line 121
    .local v3, "compensatedData":[D
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    mul-long/2addr v4, v6

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sleepTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", wakeupTime = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 166
    iget-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mWakeupTime:J

    iput-wide v4, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    .line 168
    return-object v3

    .line 108
    .end local v0    # "nLen":I
    .end local v3    # "compensatedData":[D
    :cond_3
    :goto_1
    return-object v0

    .line 92
    .end local v1    # "nLenTemp":I
    .end local v2    # "nLenHumid":I
    :cond_4
    :goto_2
    return-object v0
.end method

.method public final disable()V
    .locals 0

    .line 303
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 304
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 293
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 294
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 247
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE_HUMIDITY:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 2

    .line 236
    const-string v0, "Temperature"

    const-string v1, "Humidity"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 340
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 258
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 270
    return-object p0
.end method

.method protected final getRawSensorValueNames()[Ljava/lang/String;
    .locals 2

    .line 224
    const-string v0, "Temperature"

    const-string v1, "Humidity"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final initializeAggregator()V
    .locals 0

    .line 69
    return-void
.end method

.method protected final notifyCompensationData([D)V
    .locals 7
    .param p1, "compensationData"    # [D

    .line 180
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->getContextValueNames()[Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "names":[Ljava/lang/String;
    array-length v1, p1

    div-int/lit8 v1, v1, 0x2

    .line 182
    .local v1, "nLen":I
    new-array v2, v1, [D

    .line 183
    .local v2, "compensatedTemp":[D
    new-array v3, v1, [D

    .line 185
    .local v3, "compensatedHumid":[D
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_0

    .line 186
    aget-wide v5, p1, v4

    aput-wide v5, v2, v4

    .line 187
    add-int v5, v4, v1

    aget-wide v5, p1, v5

    aput-wide v5, v3, v4

    .line 185
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 190
    .end local v4    # "i":I
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v4, v5, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 191
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 193
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->notifyObserver()V

    .line 194
    return-void
.end method

.method protected final terminateAggregator()V
    .locals 0

    .line 80
    return-void
.end method

.method protected final updateApSleep()V
    .locals 4

    .line 280
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->getTimeStampForApStatus()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    .line 281
    .local v0, "timeStamp":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeStamp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 282
    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/builtin/TemperatureHumidityAggregator;->mSleepTime:J

    .line 283
    invoke-super {p0}, Lcom/samsung/android/contextaware/aggregator/EnvironmentSensorAggregator;->updateApSleep()V

    .line 284
    return-void
.end method
