.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ChLocTriggerRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ChLocTriggerRunner.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 25
    const-string v0, "LTG ChLocTriggerRunner Create"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 26
    return-void
.end method


# virtual methods
.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CH_LOC_TRIGGER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ChLocTriggerRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 162
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getInstLibType()B
    .locals 1

    .line 37
    const/16 v0, 0x3d

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 42
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 47
    return-object p0
.end method

.method public parse([BI)I
    .locals 16
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 53
    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 57
    .local v1, "tmpNext":I
    array-length v2, v0

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, -0x1

    if-gez v2, :cond_0

    .line 58
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 59
    return v4

    .line 63
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v1, v0, v1

    .line 64
    .local v1, "result":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v2, v0, v2

    .line 65
    .local v2, "flag":I
    const-string v6, "property"

    const-string v7, "result"

    if-ne v1, v4, :cond_1

    .line 67
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v1, v0, v5

    .line 68
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v2, v0, v4

    .line 69
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v5, v0, v5

    add-int/lit8 v8, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v8, "tmpNext":I
    aget-byte v4, v0, v4

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .local v9, "tmpNext":I
    aget-byte v8, v0, v8

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .local v10, "tmpNext":I
    aget-byte v9, v0, v9

    const/4 v11, 0x4

    new-array v12, v11, [B

    const/4 v13, 0x0

    aput-byte v5, v12, v13

    aput-byte v4, v12, v3

    const/4 v4, 0x2

    aput-byte v8, v12, v4

    const/4 v5, 0x3

    aput-byte v9, v12, v5

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 74
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 75
    .local v8, "duration":I
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v10, v0, v10

    add-int/lit8 v12, v9, 0x1

    .end local v9    # "tmpNext":I
    .local v12, "tmpNext":I
    aget-byte v9, v0, v9

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "tmpNext":I
    .local v14, "tmpNext":I
    aget-byte v12, v0, v12

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "tmpNext":I
    .local v15, "tmpNext":I
    aget-byte v14, v0, v14

    new-array v11, v11, [B

    aput-byte v10, v11, v13

    aput-byte v9, v11, v3

    aput-byte v12, v11, v4

    aput-byte v14, v11, v5

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 80
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    .line 82
    .local v3, "reserved":I
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v4, v7, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 83
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v4, v6, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 84
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const-string v5, "duration"

    invoke-virtual {v4, v5, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 85
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const-string v5, "reserved"

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 86
    .end local v3    # "reserved":I
    .end local v8    # "duration":I
    move v5, v15

    goto :goto_0

    .line 88
    .end local v15    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    :cond_1
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    invoke-virtual {v3, v7, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 89
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    invoke-virtual {v3, v6, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 91
    :goto_0
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 95
    return v5
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

    .line 101
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 103
    .local v0, "result":Z
    const/16 v1, 0x59

    const/16 v2, 0x3d

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-ne p1, v1, :cond_0

    .line 104
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 105
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 104
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 107
    .local v1, "type":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChLocTriggerRunner setProperty type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 109
    nop

    .line 117
    invoke-static {v1, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    .line 109
    invoke-virtual {p0, v3, v2, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ChLocTriggerRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 118
    .end local v1    # "type":I
    goto/16 :goto_0

    .line 119
    :cond_0
    const/16 v1, 0x5a

    const/4 v5, 0x2

    if-ne p1, v1, :cond_1

    .line 120
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 121
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 120
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 123
    .local v1, "min":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChLocTriggerRunner setProperty duration : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 125
    nop

    .line 133
    invoke-static {v1, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    .line 125
    invoke-virtual {p0, v3, v2, v5, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ChLocTriggerRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 134
    .end local v1    # "min":I
    goto :goto_0

    .line 135
    :cond_1
    const/16 v1, 0x9

    if-ne p1, v1, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ChLocTriggerRunner;->getInstLibType()B

    move-result v1

    new-array v2, v5, [B

    const/16 v3, -0x48

    invoke-virtual {p0, v3, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ChLocTriggerRunner;->sendCmdToSensorHub(BB[B)V

    goto :goto_0

    .line 140
    :cond_2
    const/16 v1, 0x78

    if-ne p1, v1, :cond_4

    .line 141
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 142
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 141
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 143
    .local v1, "posture":I
    if-lez v1, :cond_3

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ChLocTriggerRunner setProperty posture : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 145
    int-to-byte v5, v1

    new-array v4, v4, [B

    const/4 v6, 0x0

    aput-byte v5, v4, v6

    .line 146
    .local v4, "triggerposture":[B
    const/4 v5, 0x3

    invoke-virtual {p0, v3, v2, v5, v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ChLocTriggerRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 153
    .end local v1    # "posture":I
    .end local v4    # "triggerposture":[B
    :cond_3
    goto :goto_0

    .line 154
    :cond_4
    const/4 v0, 0x0

    .line 156
    :goto_0
    return v0
.end method
