.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorCurrentInfoRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SleepMonitorProviderForExtLib;
.source "SleepMonitorCurrentInfoRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SleepMonitorProviderForExtLib;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 52
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 181
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 182
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SleepMonitorProviderForExtLib;->clear()V

    .line 183
    return-void
.end method

.method protected doTimeOutChecking(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 122
    if-nez p2, :cond_0

    .line 123
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 124
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 127
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->setContextCollectionResultNotifyCompletion(Z)V

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorCurrentInfoRunner;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorCurrentInfoRunner;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 129
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 159
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 160
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SleepMonitorProviderForExtLib;->enable()V

    .line 161
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_SLEEP_MONITOR_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 1

    .line 110
    const/4 v0, 0x0

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
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorCurrentInfoRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 193
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SleepMonitorProviderForExtLib;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 138
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 149
    return-object p0
.end method

.method protected final getTimeOutCheckObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;
    .locals 0

    .line 171
    return-object p0
.end method

.method protected final parse(I[B)I
    .locals 4
    .param p1, "next"    # I
    .param p2, "packet"    # [B

    .line 85
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    move-result-object v0

    .line 86
    .local v0, "libParser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 87
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PARSER_NOT_EXIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 88
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    .line 87
    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 89
    return v1

    .line 92
    :cond_0
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_SLEEP_MONITOR:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 93
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v2

    .line 94
    .local v2, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-nez v2, :cond_1

    .line 95
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PARSER_NOT_EXIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 96
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    .line 95
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 97
    return v1

    .line 100
    :cond_1
    invoke-interface {v2, p2, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v1

    return v1
.end method
