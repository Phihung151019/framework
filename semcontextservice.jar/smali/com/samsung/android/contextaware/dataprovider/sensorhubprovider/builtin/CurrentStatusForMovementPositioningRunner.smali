.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CurrentStatusForMovementPositioningRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;
.source "CurrentStatusForMovementPositioningRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 179
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 180
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;->clear()V

    .line 181
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 156
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 157
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;->enable()V

    .line 158
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_MOVEMENT_FOR_POSITIONING_CURRENT_STATUS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 60
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 59
    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 1

    .line 110
    const-string v0, "Status"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    .line 71
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 72
    .local v0, "packet":[B
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-byte v2, v0, v1

    .line 73
    aput-byte v1, v0, v2

    .line 75
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 192
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CurrentStatusForMovementPositioningRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 193
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 133
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 145
    return-object p0
.end method

.method protected final getTimeOutCheckObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;
    .locals 0

    .line 169
    return-object p0
.end method

.method public occurTimeOut()V
    .locals 1

    .line 121
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 122
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;->occurTimeOut()V

    .line 123
    return-void
.end method

.method protected final parse(I[B)I
    .locals 4
    .param p1, "next"    # I
    .param p2, "packet"    # [B

    .line 86
    move v0, p1

    .line 88
    .local v0, "tmpNext":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CurrentStatusForMovementPositioningRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 90
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    array-length v2, p2

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    goto :goto_0

    .line 95
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v0, p2, v0

    .line 96
    .local v0, "data":I
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/PositioningProviderForExtLib;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 98
    return v2

    .line 91
    .end local v2    # "tmpNext":I
    .local v0, "tmpNext":I
    :cond_1
    :goto_0
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 92
    const/4 v2, -0x1

    return v2
.end method
