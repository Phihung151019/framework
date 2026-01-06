.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
.source "BarometerSensorRunner.java"


# instance fields
.field private mBarometerData:[I

.field private mBarometerInitData:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 53
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 92
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 93
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->clear()V

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    .line 97
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

    .line 63
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 1

    .line 108
    const-string v0, "Barometer"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 5

    .line 74
    const/4 v0, 0x3

    new-array v1, v0, [B

    .line 75
    .local v1, "packet":[B
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getInterval()I

    move-result v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    .line 77
    .local v2, "data":[B
    const/4 v4, 0x0

    aput-byte v0, v1, v4

    .line 78
    aget-byte v0, v2, v4

    const/4 v4, 0x1

    aput-byte v0, v1, v4

    .line 79
    aget-byte v0, v2, v4

    aput-byte v0, v1, v3

    .line 81
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->checkFaultDetectionResult()Z

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
    .locals 8
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 119
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 120
    .local v0, "tmpPacket":[B
    move v1, p2

    .line 122
    .local v1, "tmpNext":I
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x1

    const/4 v3, -0x1

    if-gez v2, :cond_0

    .line 123
    return v3

    .line 126
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v1, v0, v1

    .line 127
    .local v1, "sensorCount":I
    if-gtz v1, :cond_1

    .line 128
    mul-int/lit8 v1, v1, -0x1

    .line 130
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    iput v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    move v2, v5

    .line 134
    .end local v5    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    :cond_1
    new-array v4, v1, [I

    iput-object v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    .line 136
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 137
    array-length v5, v0

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x1

    if-gez v5, :cond_2

    .line 138
    return v3

    .line 141
    :cond_2
    if-gtz v4, :cond_3

    .line 142
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    iget v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v2, v0, v2

    add-int/2addr v6, v2

    aput v6, v5, v4

    move v2, v7

    goto :goto_1

    .line 145
    .end local v7    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    :cond_3
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    add-int/lit8 v7, v4, -0x1

    aget v6, v6, v7

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    aget-byte v2, v0, v2

    add-int/2addr v6, v2

    aput v6, v5, v4

    move v2, v7

    .line 149
    .end local v7    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    aget v5, v5, v4

    iput v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 152
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    .line 153
    .local v3, "names":[Ljava/lang/String;
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v3, v5

    iget-object v6, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    invoke-virtual {v4, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 155
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->notifyObserver()V

    .line 157
    return v2
.end method
