.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityCalibrationRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ActivityCalibrationRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 57
    const-string v0, "ActivityCalibrationRunner is created"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 193
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 194
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 195
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 182
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 183
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 184
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 169
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 170
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 171
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 123
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVITY_CALIBRATION:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 206
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityCalibrationRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 207
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 134
    const/16 v0, 0x3c

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 145
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 157
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .line 218
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 8
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .line 69
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 70
    .local v0, "result":Z
    const/4 v1, 0x2

    new-array v2, v1, [B

    .line 72
    .local v2, "dataPacket":[B
    const/16 v3, 0x5c

    const/16 v4, 0x3c

    const/16 v5, 0x17

    if-ne p1, v3, :cond_0

    .line 73
    const-string v3, "CALIBRATION_SPEED"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 75
    move-object v3, p2

    check-cast v3, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 79
    .local v3, "speed":F
    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v6, v3

    float-to-int v6, v6

    .line 87
    const/4 v7, 0x4

    invoke-static {v6, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    .line 79
    invoke-virtual {p0, v5, v4, v1, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityCalibrationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 88
    .end local v3    # "speed":F
    goto :goto_0

    .line 89
    :cond_0
    const/16 v1, 0x5b

    if-ne p1, v1, :cond_1

    .line 90
    const-string v1, "CALIBRATION_CURRENT_STATE"

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 92
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 94
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    .line 98
    const/4 v3, 0x1

    invoke-virtual {p0, v5, v4, v3, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActivityCalibrationRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 108
    .end local v1    # "data":Ljava/lang/String;
    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0
.end method
