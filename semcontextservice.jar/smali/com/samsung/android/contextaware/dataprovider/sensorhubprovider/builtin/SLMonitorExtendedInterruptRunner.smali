.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SLMonitorExtendedInterruptRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;
    }
.end annotation


# static fields
.field private static final DEFAULT_DEVICE_TYPE:I = 0x1

.field private static final DEFAULT_STEP_LEVEL_DURATION:I = 0x12c

.field private static final DEFAULT_STEP_TYPE:I = 0x1


# instance fields
.field private mDeviceType:I

.field private mDuration:I

.field private mNotiCount:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 93
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 57
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    .line 60
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    .line 94
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 394
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 395
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 396
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 383
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 384
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 385
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 368
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 369
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 372
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 104
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SL_MONITOR_EXTENDED_INTERRUPT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .line 266
    const-string v0, "IsTimeOut"

    const-string v1, "InactiveTimeDuration"

    const-string v2, "InactiveStatus"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    .line 127
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 129
    .local v0, "packet":[B
    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 131
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    const/4 v4, 0x5

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v3, v6, :cond_0

    .line 134
    aput-byte v4, v0, v6

    goto :goto_0

    .line 135
    :cond_0
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    if-ne v3, v5, :cond_1

    .line 138
    aput-byte v5, v0, v6

    .line 141
    :cond_1
    :goto_0
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    invoke-static {v3, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    .line 142
    .local v3, "duration":[B
    aget-byte v7, v3, v1

    aput-byte v7, v0, v5

    .line 143
    aget-byte v7, v3, v6

    aput-byte v7, v0, v2

    .line 145
    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    invoke-static {v2, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v1

    const/4 v7, 0x4

    aput-byte v2, v0, v7

    .line 147
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v2

    .line 150
    .local v2, "utcTime":[I
    aget v7, v2, v1

    invoke-static {v7, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    aget-byte v7, v7, v1

    aput-byte v7, v0, v4

    .line 151
    aget v4, v2, v6

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v4, v4, v1

    const/4 v7, 0x6

    aput-byte v4, v0, v7

    .line 152
    aget v4, v2, v5

    invoke-static {v4, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v1, v4, v1

    const/4 v4, 0x7

    aput-byte v1, v0, v4

    .line 154
    return-object v0
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 3

    .line 165
    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 167
    .local v0, "packet":[B
    const/4 v1, 0x0

    const/4 v2, 0x3

    aput-byte v2, v0, v1

    .line 170
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 418
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 419
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 115
    const/16 v0, 0x2c

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 344
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 356
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .line 406
    return-object p0
.end method

.method public final parse([BI)I
    .locals 11
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 202
    move v0, p2

    .line 203
    .local v0, "tmpNext":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 205
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

    .line 215
    array-length v2, p1

    sub-int/2addr v2, v0

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "packet len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tmpNext:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 218
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 219
    const/4 v2, -0x1

    return v2

    .line 227
    :cond_0
    add-int/lit8 v2, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v0, p1, v0

    .line 228
    .local v0, "inactiveStatus":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v2, p1, v2

    .line 230
    .local v2, "timeOut":B
    if-nez v2, :cond_1

    .line 231
    const/4 v4, 0x0

    .local v4, "isTimeOut":Z
    goto :goto_0

    .line 233
    .end local v4    # "isTimeOut":Z
    :cond_1
    const/4 v4, 0x1

    .line 237
    .restart local v4    # "isTimeOut":Z
    :goto_0
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v3, p1, v3

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

    new-array v9, v9, [B

    const/4 v10, 0x0

    aput-byte v3, v9, v10

    const/4 v3, 0x1

    aput-byte v5, v9, v3

    const/4 v3, 0x2

    aput-byte v6, v9, v3

    const/4 v3, 0x3

    aput-byte v7, v9, v3

    invoke-static {v9}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 242
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 244
    .local v3, "duration":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->InactiveStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;)I

    move-result v6

    aget-object v6, v1, v6

    .line 245
    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 246
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->IsTimeOut:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;)I

    move-result v6

    aget-object v6, v1, v6

    .line 247
    invoke-virtual {v5, v6, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;Z)V

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->Duration:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;

    invoke-static {v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner$ContextValIndex;)I

    move-result v6

    aget-object v6, v1, v6

    .line 249
    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 251
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 253
    return v8
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 7
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .line 282
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 284
    .local v0, "result":Z
    const/16 v1, 0x3b

    const/4 v2, 0x2

    const/16 v3, 0x2c

    const/16 v4, 0x17

    if-ne p1, v1, :cond_0

    .line 285
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 286
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 285
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    .line 287
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duration = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 289
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDuration:I

    .line 293
    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 289
    const/4 v2, 0x5

    invoke-virtual {p0, v4, v3, v2, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 295
    :cond_0
    const/16 v1, 0x3c

    if-ne p1, v1, :cond_1

    .line 296
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 297
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 296
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notification count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 300
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mNotiCount:I

    .line 304
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 300
    invoke-virtual {p0, v4, v3, v2, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    goto/16 :goto_0

    .line 305
    :cond_1
    const/16 v1, 0x39

    if-ne p1, v1, :cond_2

    .line 306
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 307
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 306
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->mDeviceType:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_2
    const/16 v1, 0x37

    if-ne p1, v1, :cond_3

    .line 310
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 311
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 310
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 312
    .local v1, "start":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification start = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 314
    nop

    .line 318
    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    .line 314
    invoke-virtual {p0, v4, v3, v2, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 319
    .end local v1    # "start":I
    goto :goto_0

    :cond_3
    const/16 v1, 0x38

    if-ne p1, v1, :cond_4

    .line 320
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 321
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 320
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 322
    .local v1, "end":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notification end = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 324
    nop

    .line 328
    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    .line 324
    const/4 v5, 0x3

    invoke-virtual {p0, v4, v3, v5, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SLMonitorExtendedInterruptRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 329
    .end local v1    # "end":I
    goto :goto_0

    .line 330
    :cond_4
    const/4 v0, 0x0

    .line 333
    :goto_0
    return v0
.end method
