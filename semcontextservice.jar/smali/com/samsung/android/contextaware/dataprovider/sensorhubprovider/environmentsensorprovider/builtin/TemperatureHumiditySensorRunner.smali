.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
.source "TemperatureHumiditySensorRunner.java"


# instance fields
.field private mHumidityData:[D

.field private mTemperatureData:[D


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 54
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 94
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 95
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->clear()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    .line 98
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    .line 99
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 205
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 206
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->disable()V

    .line 207
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 192
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 193
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->enable()V

    .line 194
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 64
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_HUMIDITY_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 65
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .line 110
    const-string v0, "Temperature"

    const-string v1, "Humidity"

    const-string v2, "LoggingStatus"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 5

    .line 76
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 77
    .local v0, "packet":[B
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getInterval()I

    move-result v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 79
    .local v1, "data":[B
    const/4 v3, 0x6

    const/4 v4, 0x0

    aput-byte v3, v0, v4

    .line 80
    aget-byte v3, v1, v4

    const/4 v4, 0x1

    aput-byte v3, v0, v4

    .line 81
    aget-byte v3, v1, v4

    aput-byte v3, v0, v2

    .line 83
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 219
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 168
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 180
    return-object p0
.end method

.method public final parse([BI)I
    .locals 13
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 121
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 122
    .local v0, "tmpPacket":[B
    move v1, p2

    .line 124
    .local v1, "tmpNext":I
    array-length v2, v0

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    const/4 v4, -0x1

    if-gez v2, :cond_0

    .line 125
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 126
    return v4

    .line 129
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    .line 131
    .local v1, "sensorCount":I
    if-gtz v1, :cond_1

    .line 132
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_ENVIRONMENT_SENSOR_COUNT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 133
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 134
    return v4

    .line 137
    :cond_1
    new-array v2, v1, [D

    iput-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    .line 138
    new-array v2, v1, [D

    iput-object v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    .line 140
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 141
    array-length v6, v0

    sub-int/2addr v6, v5

    sub-int/2addr v6, v3

    if-gez v6, :cond_2

    .line 142
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 143
    return v4

    .line 146
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v5, v0, v5

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "tmpNext":I
    .local v8, "tmpNext":I
    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v5, v7

    int-to-double v9, v5

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    div-double/2addr v9, v11

    aput-wide v9, v6, v2

    .line 147
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    add-int/lit8 v6, v8, 0x1

    .end local v8    # "tmpNext":I
    .local v6, "tmpNext":I
    aget-byte v7, v0, v8

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v7, v6

    int-to-double v6, v7

    div-double/2addr v6, v11

    aput-wide v6, v5, v2

    .line 140
    add-int/lit8 v2, v2, 0x1

    move v5, v8

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    .end local v8    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    .line 151
    .local v2, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v6, 0x0

    aget-object v6, v2, v6

    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getLoggingStatus()I

    move-result v7

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 152
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v6, v2, v6

    iget-object v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mTemperatureData:[D

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 153
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v3, v2, v3

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/TemperatureHumiditySensorRunner;->mHumidityData:[D

    invoke-virtual {v4, v3, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 155
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->notifyObserver()V

    .line 157
    return v5
.end method
