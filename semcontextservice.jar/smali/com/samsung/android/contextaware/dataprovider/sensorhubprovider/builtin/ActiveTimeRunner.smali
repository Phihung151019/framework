.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ActiveTimeRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;
    }
.end annotation


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 71
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 281
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 282
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 283
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 270
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 271
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 272
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 255
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 256
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 259
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 81
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIVE_TIME:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 2

    .line 217
    const-string v0, "DataType"

    const-string v1, "ActiveTimeDuration"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 7

    .line 104
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 106
    .local v0, "packet":[B
    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 107
    const/4 v3, 0x1

    aput-byte v1, v0, v3

    .line 109
    aput-byte v1, v0, v2

    .line 110
    const/4 v4, 0x3

    aput-byte v1, v0, v4

    .line 112
    const/4 v4, 0x4

    aput-byte v1, v0, v4

    .line 114
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v4

    .line 115
    invoke-virtual {v4}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v4

    .line 117
    .local v4, "utcTime":[I
    aget v5, v4, v1

    invoke-static {v5, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    aget-byte v5, v5, v1

    const/4 v6, 0x5

    aput-byte v5, v0, v6

    .line 118
    aget v5, v4, v3

    invoke-static {v5, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    aget-byte v5, v5, v1

    const/4 v6, 0x6

    aput-byte v5, v0, v6

    .line 119
    aget v2, v4, v2

    invoke-static {v2, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v1, v2, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 121
    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 3

    .line 132
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 134
    .local v0, "packet":[B
    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    .line 136
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 305
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 306
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 92
    const/16 v0, 0x2c

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 231
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 243
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .line 293
    return-object p0
.end method

.method public final parse([BI)I
    .locals 11
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 162
    move v0, p2

    .line 164
    .local v0, "tmpNext":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 166
    .local v1, "names":[Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 169
    array-length v2, p1

    sub-int/2addr v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, -0x1

    if-gez v2, :cond_0

    .line 170
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 171
    return v4

    .line 174
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v0, p1, v0

    .line 176
    .local v0, "dataType":I
    const/4 v5, 0x2

    if-ne v0, v5, :cond_2

    .line 179
    array-length v6, p1

    sub-int/2addr v6, v2

    const/4 v7, 0x4

    if-ge v6, v7, :cond_1

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "packet len:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v5, p1

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " tmpNext:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 182
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 183
    return v4

    .line 186
    :cond_1
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v2, p1, v2

    add-int/lit8 v6, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v6, "tmpNext":I
    aget-byte v4, p1, v4

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v8, "tmpNext":I
    aget-byte v6, p1, v6

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .local v9, "tmpNext":I
    aget-byte v8, p1, v8

    new-array v7, v7, [B

    const/4 v10, 0x0

    aput-byte v2, v7, v10

    aput-byte v4, v7, v3

    aput-byte v6, v7, v5

    const/4 v2, 0x3

    aput-byte v8, v7, v2

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 191
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 193
    .local v2, "activeTime":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->ActiveTime:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;)I

    move-result v4

    aget-object v4, v1, v4

    .line 194
    invoke-virtual {v3, v4, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 195
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->DataType:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ActiveTimeRunner$ContextValIndex;)I

    move-result v4

    aget-object v4, v1, v4

    .line 196
    invoke-virtual {v3, v4, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 198
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 200
    .end local v2    # "activeTime":I
    move v2, v9

    goto :goto_0

    .line 201
    .end local v9    # "tmpNext":I
    .local v2, "tmpNext":I
    :cond_2
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_TYPE_VALUE:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 204
    :goto_0
    return v2
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 1
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .line 148
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 150
    .local v0, "result":Z
    return v0
.end method
