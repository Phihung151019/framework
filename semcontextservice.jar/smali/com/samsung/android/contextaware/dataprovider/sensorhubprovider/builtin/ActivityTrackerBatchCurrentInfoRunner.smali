.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchCurrentInfoRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ActivityTrackerBatchProviderForExtLib;
.source "ActivityTrackerBatchCurrentInfoRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 0
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ActivityTrackerBatchProviderForExtLib;-><init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 56
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 206
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 207
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ActivityTrackerBatchProviderForExtLib;->clear()V

    .line 208
    return-void
.end method

.method protected doTimeOutChecking(Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "listener"    # Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;
    .param p2, "bundle"    # Landroid/os/Bundle;

    .line 140
    if-nez p2, :cond_0

    .line 141
    sget-object v0, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_BUNDLE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 143
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getCode()I

    move-result v0

    .line 142
    invoke-static {v0}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 146
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/contextaware/manager/ContextAwareService$Listener;->setContextCollectionResultNotifyCompletion(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchCurrentInfoRunner;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchCurrentInfoRunner;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 149
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 182
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 183
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ActivityTrackerBatchProviderForExtLib;->enable()V

    .line 184
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->REQUEST_SENSORHUB_ACTIVITY_TRACKER_BATCH_CURRENT_INFO:Lcom/samsung/android/contextaware/ContextList$ContextType;

    .line 67
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 66
    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 1

    .line 126
    const-string v0, "MostActivity"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    .line 78
    const/4 v0, 0x2

    new-array v1, v0, [B

    .line 79
    .local v1, "packet":[B
    const/4 v2, 0x0

    aput-byte v0, v1, v2

    .line 80
    const/4 v0, 0x1

    aput-byte v2, v1, v0

    .line 82
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 218
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityTrackerBatchCurrentInfoRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 219
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ActivityTrackerBatchProviderForExtLib;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
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

.method protected final getTimeOutCheckObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;
    .locals 0

    .line 195
    return-object p0
.end method

.method protected final parse(I[B)I
    .locals 4
    .param p1, "next"    # I
    .param p2, "packet"    # [B

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getLibParser()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;

    move-result-object v0

    .line 98
    .local v0, "libParser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;
    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 99
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PARSER_NOT_EXIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 101
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    .line 100
    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    .line 99
    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 102
    return v1

    .line 105
    :cond_0
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->LIBRARY_DATATYPE_ACTIVITY_TRACKER:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;

    .line 107
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/TypeParser;->getParser(Ljava/lang/String;)Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    move-result-object v2

    .line 108
    .local v2, "parser":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-nez v2, :cond_1

    .line 109
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PARSER_NOT_EXIST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 111
    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    .line 110
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    .line 109
    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 112
    return v1

    .line 115
    :cond_1
    invoke-interface {v2, p2, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v1

    return v1
.end method
