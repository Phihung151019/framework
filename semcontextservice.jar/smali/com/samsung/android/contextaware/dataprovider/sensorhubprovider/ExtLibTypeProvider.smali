.class abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "ExtLibTypeProvider.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/ITimeOutCheckObserver;


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 44
    return-void
.end method


# virtual methods
.method protected final checkNotifyCondition()Z
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->getTimeOutCheckManager()Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;->isTimeOut()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final disable()V
    .locals 0

    .line 137
    return-void
.end method

.method public enable()V
    .locals 0

    .line 125
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->clear()V

    .line 126
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 127
    return-void
.end method

.method protected final getInstructionForDisable()B
    .locals 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method protected final getInstructionForEnable()B
    .locals 1

    .line 54
    const/16 v0, -0x48

    return v0
.end method

.method public occurTimeOut()V
    .locals 3

    .line 147
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 148
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getTimeOutCheckManager()Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;->setTimeOutOccurence(Z)V

    .line 149
    nop

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->ERROR_TIME_OUT:Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;

    .line 153
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/manager/ContextAwareServiceErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 149
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->notifyCmdProcessResultObserver(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 154
    return-void
.end method

.method protected abstract parse(I[B)I
.end method

.method public final parse([BI)I
    .locals 2
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 76
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->parse(I[B)I

    move-result v0

    .line 78
    .local v0, "tmpNext":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->getTimeOutCheckManager()Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;->getHandler()Ljava/lang/Thread;

    move-result-object v1

    if-nez v1, :cond_0

    .line 79
    return v0

    .line 82
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->getTimeOutCheckManager()Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;->getHandler()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 83
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TIME_OUT_CHECK_THREAD_NOT_ALIVE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 84
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 85
    return v0

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->getTimeOutCheckManager()Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;->getService()Lcom/samsung/android/contextaware/utilbundle/CaTimeOutCheckManager;

    move-result-object v1

    if-nez v1, :cond_2

    .line 89
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TIME_OUT_CHECK_SERVICE_NULL_EXCEPTION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 90
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 91
    return v0

    .line 94
    :cond_2
    if-ltz v0, :cond_3

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->getTimeOutCheckManager()Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/contextaware/manager/IContextTimeOutCheck;->getHandler()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->notifyObserver()V

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ExtLibTypeProvider;->notifyFaultDetectionResult()V

    .line 100
    :cond_3
    return v0
.end method
