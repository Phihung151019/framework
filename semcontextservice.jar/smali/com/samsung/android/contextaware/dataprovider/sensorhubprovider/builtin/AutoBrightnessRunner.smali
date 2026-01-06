.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "AutoBrightnessRunner.java"


# instance fields
.field mDeviceMode:B


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 44
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mDeviceMode:B

    .line 59
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 267
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 268
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 269
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 256
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 257
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 258
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 243
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 244
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 245
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 69
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_AUTO_BRIGHTNESS:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 2

    .line 107
    const-string v0, "Candela"

    const-string v1, "AmbientLux"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 3

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 93
    .local v0, "packet":[B
    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mDeviceMode:B

    aput-byte v2, v0, v1

    .line 95
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 281
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 282
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 80
    const/16 v0, 0x30

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 219
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 231
    return-object p0
.end method

.method public final parse([BI)I
    .locals 13
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 179
    move v0, p2

    .line 181
    .local v0, "tmpNext":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "names":[Ljava/lang/String;
    array-length v2, p1

    sub-int/2addr v2, v0

    add-int/lit8 v2, v2, -0x8

    if-gez v2, :cond_0

    .line 184
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 185
    const/4 v2, -0x1

    return v2

    .line 188
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v4, v1, v3

    add-int/lit8 v5, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v0, p1, v0

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "tmpNext":I
    .local v6, "tmpNext":I
    aget-byte v5, p1, v5

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v6, p1, v6

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "tmpNext":I
    .local v8, "tmpNext":I
    aget-byte v7, p1, v7

    const/4 v9, 0x4

    new-array v10, v9, [B

    aput-byte v0, v10, v3

    const/4 v0, 0x1

    aput-byte v5, v10, v0

    const/4 v5, 0x2

    aput-byte v6, v10, v5

    const/4 v6, 0x3

    aput-byte v7, v10, v6

    .line 189
    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 194
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    .line 188
    invoke-virtual {v2, v4, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 197
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    aget-object v4, v1, v0

    add-int/lit8 v7, v8, 0x1

    .end local v8    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    aget-byte v8, p1, v8

    add-int/lit8 v10, v7, 0x1

    .end local v7    # "tmpNext":I
    .local v10, "tmpNext":I
    aget-byte v7, p1, v7

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "tmpNext":I
    .local v11, "tmpNext":I
    aget-byte v10, p1, v10

    add-int/lit8 v12, v11, 0x1

    .end local v11    # "tmpNext":I
    .local v12, "tmpNext":I
    aget-byte v11, p1, v11

    new-array v9, v9, [B

    aput-byte v8, v9, v3

    aput-byte v7, v9, v0

    aput-byte v10, v9, v5

    aput-byte v11, v9, v6

    .line 198
    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 197
    invoke-virtual {v2, v4, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 206
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 208
    return v12
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 6
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .line 122
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 123
    .local v0, "result":Z
    const/16 v1, 0x40

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 124
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 125
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 124
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 126
    .local v1, "mode":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 128
    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-eq v1, v3, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    .line 131
    const-string v3, "invalid value for mode"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 132
    return v2

    .line 134
    :cond_0
    int-to-byte v2, v1

    iput-byte v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->mDeviceMode:B

    .line 136
    nop

    .line 140
    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    .line 136
    const/16 v4, 0x17

    const/16 v5, 0x30

    invoke-virtual {p0, v4, v5, v3, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AutoBrightnessRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 141
    .end local v1    # "mode":I
    goto :goto_2

    :cond_1
    const/16 v1, 0x41

    if-ne p1, v1, :cond_6

    .line 142
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 143
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 145
    .local v1, "str":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 150
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CFG = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 152
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->stringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    .line 153
    .local v3, "dataPacket":[B
    if-eqz v3, :cond_4

    array-length v4, v3

    if-gtz v4, :cond_3

    goto :goto_0

    .line 161
    :cond_3
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->setOffsetTable([B)V

    .line 162
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaAutoBrightnessTableManager;->sendAutoBrightnessTableToSensorHub()Z

    .line 164
    .end local v1    # "str":Ljava/lang/String;
    .end local v3    # "dataPacket":[B
    goto :goto_2

    .line 154
    .restart local v1    # "str":Ljava/lang/String;
    .restart local v3    # "dataPacket":[B
    :cond_4
    :goto_0
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LENGTH_ZERO:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 156
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    .line 155
    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 157
    return v2

    .line 146
    .end local v3    # "dataPacket":[B
    :cond_5
    :goto_1
    const-string v3, "value is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 147
    return v2

    .line 165
    .end local v1    # "str":Ljava/lang/String;
    :cond_6
    const/4 v0, 0x0

    .line 167
    :goto_2
    return v0
.end method
