.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/BottomFlatDetectorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "BottomFlatDetectorRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 48
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 207
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 208
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 209
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 196
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 197
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 198
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 183
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 184
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 185
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_BOTTOM_FLAT_DETECTOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 1

    .line 115
    const-string v0, "Status"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 2

    .line 80
    const/4 v0, 0x2

    new-array v0, v0, [B

    .line 82
    .local v0, "packet":[B
    const/4 v1, 0x0

    aput-byte v1, v0, v1

    .line 83
    const/4 v1, 0x1

    aput-byte v1, v0, v1

    .line 85
    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 3

    .line 96
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 99
    .local v1, "packet":[B
    const/4 v2, 0x0

    aput-byte v2, v1, v2

    .line 100
    const/4 v2, 0x1

    aput-byte v0, v1, v2

    .line 102
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 220
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/BottomFlatDetectorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 221
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 69
    const/16 v0, 0x65

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 159
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 171
    return-object p0
.end method

.method public parse([BI)I
    .locals 5
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 129
    move v0, p2

    .line 131
    .local v0, "tmpNext":I
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/BottomFlatDetectorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 135
    .local v1, "names":[Ljava/lang/String;
    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x4

    if-gez v2, :cond_0

    .line 136
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 137
    const/4 v2, -0x1

    return v2

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 141
    add-int/lit8 v0, v0, 0x1

    .line 142
    add-int/lit8 v0, v0, 0x1

    .line 144
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v1, v3

    add-int/lit8 v4, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v0, p1, v0

    int-to-short v0, v0

    invoke-virtual {v2, v3, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 146
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 148
    return v4
.end method
