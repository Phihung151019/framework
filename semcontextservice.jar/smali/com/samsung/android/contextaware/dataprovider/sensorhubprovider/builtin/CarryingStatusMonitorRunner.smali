.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CarryingStatusMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "CarryingStatusMonitorRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 210
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 211
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 212
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 199
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 200
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 201
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 186
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 187
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 188
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 59
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CARRYING_STATUS_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 2

    .line 116
    const-string v0, "Type"

    const-string v1, "Accuracy"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 2

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 83
    .local v0, "packet":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 84
    const/4 v1, 0x1

    aput-byte v1, v0, v1

    .line 86
    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 3

    .line 97
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 100
    .local v1, "packet":[B
    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 101
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    .line 103
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CarryingStatusMonitorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 224
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 70
    const/16 v0, 0x66

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 162
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 174
    return-object p0
.end method

.method public parse([BI)I
    .locals 6
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 131
    move v0, p2

    .line 133
    .local v0, "tmpNext":I
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 135
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CarryingStatusMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "names":[Ljava/lang/String;
    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x5

    if-gez v2, :cond_0

    .line 138
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 139
    const/4 v2, -0x1

    return v2

    .line 142
    :cond_0
    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 143
    add-int/2addr v0, v2

    .line 144
    add-int/2addr v0, v2

    .line 146
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v1, v4

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v0, p1, v0

    int-to-short v0, v0

    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 147
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    aget-object v2, v1, v2

    add-int/lit8 v3, v5, 0x1

    .end local v5    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v4, p1, v5

    int-to-short v4, v4

    invoke-virtual {v0, v2, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 149
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 151
    return v3
.end method
