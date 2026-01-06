.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "SleepMonitorRunner.java"


# static fields
.field private static final DEFAULT_SAMPLING_INTERVAL:I = 0x64

.field private static final DEFAULT_SENSIBILITY:I = 0x50


# instance fields
.field private mSamplingInterval:I

.field private mSensibility:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 121
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 87
    const/16 v0, 0x50

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSensibility:I

    .line 93
    const/16 v0, 0x64

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSamplingInterval:I

    .line 123
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 537
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 539
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 541
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 515
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 517
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 519
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 489
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 491
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 493
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 143
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SLEEP_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 6

    .line 303
    const-string v4, "Wrist"

    const-string v5, "Flag"

    const-string v0, "SleepStatus"

    const-string v1, "PIM"

    const-string v2, "ZCM"

    const-string v3, "Stage"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    .line 187
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 189
    .local v0, "packet":[B
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSensibility:I

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 191
    .local v1, "sensibility":[B
    const/4 v3, 0x0

    aget-byte v4, v1, v3

    aput-byte v4, v0, v3

    .line 193
    const/4 v4, 0x1

    aget-byte v5, v1, v4

    aput-byte v5, v0, v4

    .line 195
    const/4 v5, 0x2

    aget-byte v6, v1, v5

    aput-byte v6, v0, v5

    .line 197
    const/4 v6, 0x3

    aget-byte v7, v1, v6

    aput-byte v7, v0, v6

    .line 199
    iget v7, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSamplingInterval:I

    invoke-static {v7, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    .line 201
    .local v7, "samplingInterval":[B
    aget-byte v3, v7, v3

    aput-byte v3, v0, v2

    .line 203
    const/4 v2, 0x5

    aget-byte v3, v7, v4

    aput-byte v3, v0, v2

    .line 205
    const/4 v2, 0x6

    aget-byte v3, v7, v5

    aput-byte v3, v0, v2

    .line 207
    const/4 v2, 0x7

    aget-byte v3, v7, v6

    aput-byte v3, v0, v2

    .line 211
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 563
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 565
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 165
    const/16 v0, 0x25

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 441
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 465
    return-object p0
.end method

.method public final parse([BI)I
    .locals 16
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 325
    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 329
    .local v1, "tmpNext":I
    array-length v2, v0

    sub-int/2addr v2, v1

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    const/4 v4, -0x1

    if-gez v2, :cond_0

    .line 331
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 333
    return v4

    .line 339
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    .line 343
    .local v1, "dataSize":I
    if-lez v1, :cond_3

    rem-int/lit8 v2, v1, 0x11

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 353
    :cond_1
    div-int/lit8 v2, v1, 0x11

    .line 357
    .local v2, "arraySize":I
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    .line 359
    .local v4, "names":[Ljava/lang/String;
    new-array v6, v2, [I

    .line 361
    .local v6, "status":[I
    new-array v7, v2, [F

    .line 363
    .local v7, "pim":[F
    new-array v8, v2, [I

    .line 365
    .local v8, "zcm":[I
    new-array v9, v2, [I

    .line 367
    .local v9, "stage":[I
    new-array v10, v2, [I

    .line 369
    .local v10, "wrist":[I
    new-array v11, v2, [I

    .line 371
    .local v11, "flag":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v2, :cond_2

    .line 373
    add-int/lit8 v13, v5, 0x1

    .end local v5    # "tmpNext":I
    .local v13, "tmpNext":I
    aget-byte v5, v0, v5

    aput v5, v6, v12

    .line 375
    add-int/lit8 v5, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v13, v0, v13

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v5, 0x1

    .end local v5    # "tmpNext":I
    .local v14, "tmpNext":I
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v13, v5

    add-int/lit8 v5, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    add-int/2addr v13, v14

    add-int/lit8 v14, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v13, v5

    int-to-float v5, v13

    const/high16 v13, 0x41200000    # 10.0f

    div-float/2addr v5, v13

    aput v5, v7, v12

    .line 379
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v13, v0, v14

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v13, v5

    add-int/lit8 v5, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    add-int/2addr v13, v14

    add-int/lit8 v14, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v13, v5

    aput v13, v8, v12

    .line 383
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v13, v0, v14

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v13, v5

    add-int/lit8 v5, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    add-int/2addr v13, v14

    add-int/lit8 v14, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    add-int/2addr v13, v5

    aput v13, v9, v12

    .line 387
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v13, v0, v14

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v13, v5

    aput v13, v10, v12

    .line 389
    add-int/lit8 v5, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    aget-byte v13, v0, v14

    and-int/lit16 v13, v13, 0xff

    add-int/lit8 v14, v5, 0x1

    .end local v5    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v13, v5

    aput v13, v11, v12

    .line 391
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "status["

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, "] = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v15, v6, v12

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ", pim["

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v13, v7, v12

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, ", zcm["

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v13, " ] = "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v15, v8, v12

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ", stage["

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v15, v9, v12

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ", wrist["

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v15, v10, v12

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v15, ", flag["

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v13, v11, v12

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 371
    add-int/lit8 v12, v12, 0x1

    move v5, v14

    goto/16 :goto_0

    .line 401
    .end local v12    # "i":I
    .end local v14    # "tmpNext":I
    .restart local v5    # "tmpNext":I
    :cond_2
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v12

    const/4 v13, 0x0

    aget-object v13, v4, v13

    invoke-virtual {v12, v13, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 403
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v12

    const/4 v13, 0x1

    aget-object v13, v4, v13

    invoke-virtual {v12, v13, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 405
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v12

    aget-object v3, v4, v3

    invoke-virtual {v12, v3, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 407
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v12, 0x3

    aget-object v12, v4, v12

    invoke-virtual {v3, v12, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 409
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v12, 0x4

    aget-object v12, v4, v12

    invoke-virtual {v3, v12, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 411
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v12, 0x5

    aget-object v12, v4, v12

    invoke-virtual {v3, v12, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 415
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 419
    return v5

    .line 345
    .end local v2    # "arraySize":I
    .end local v4    # "names":[Ljava/lang/String;
    .end local v6    # "status":[I
    .end local v7    # "pim":[F
    .end local v8    # "zcm":[I
    .end local v9    # "stage":[I
    .end local v10    # "wrist":[I
    .end local v11    # "flag":[I
    :cond_3
    :goto_1
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 347
    return v4
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .line 235
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 237
    .local v0, "result":Z
    const/16 v1, 0x2a

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    .line 239
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 241
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 239
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 243
    .local v1, "sensibility":I
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSensibility:I

    if-gtz v3, :cond_0

    .line 245
    const-string v3, "sensibility must be above 0."

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 247
    return v2

    .line 251
    :cond_0
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSensibility:I

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sensibility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSensibility:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 255
    .end local v1    # "sensibility":I
    goto :goto_0

    :cond_1
    const/16 v1, 0x2b

    if-ne p1, v1, :cond_3

    .line 257
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 259
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 257
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 261
    .local v1, "samplingInterval":I
    if-gtz v1, :cond_2

    .line 263
    const-string v3, "sampling interval must be above 0."

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 265
    return v2

    .line 269
    :cond_2
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSamplingInterval:I

    .line 271
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sampling interval = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/SleepMonitorRunner;->mSamplingInterval:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 273
    .end local v1    # "samplingInterval":I
    goto :goto_0

    .line 275
    :cond_3
    const/4 v0, 0x0

    .line 279
    :goto_0
    return v0
.end method
