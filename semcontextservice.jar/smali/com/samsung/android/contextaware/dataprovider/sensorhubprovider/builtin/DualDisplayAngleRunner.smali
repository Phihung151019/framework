.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DualDisplayAngleRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "DualDisplayAngleRunner.java"


# instance fields
.field private mOffAngle:I

.field private mOnAngle:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DualDisplayAngleRunner;->mOnAngle:I

    .line 41
    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DualDisplayAngleRunner;->mOffAngle:I

    .line 53
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 210
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 211
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 212
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 200
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 201
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 202
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 188
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 189
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 190
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_DUAL_DISPLAY_ANGLE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .line 83
    const-string v0, "Type"

    const-string v1, "Intensity"

    const-string v2, "Angle"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDataPacketToRegisterLib()[B
    .locals 7

    .line 123
    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 124
    .local v0, "packet":[B
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DualDisplayAngleRunner;->mOnAngle:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 125
    .local v1, "onAngle":[B
    iget v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DualDisplayAngleRunner;->mOffAngle:I

    invoke-static {v3, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    .line 126
    .local v3, "offAngle":[B
    const/4 v4, 0x0

    aget-byte v5, v1, v4

    aput-byte v5, v0, v4

    .line 127
    const/4 v5, 0x1

    aget-byte v6, v1, v5

    aput-byte v6, v0, v5

    .line 128
    aget-byte v4, v3, v4

    aput-byte v4, v0, v2

    .line 129
    const/4 v2, 0x3

    aget-byte v4, v3, v5

    aput-byte v4, v0, v2

    .line 130
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DualDisplayAngleRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 223
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 72
    const/16 v0, 0x35

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 166
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 177
    return-object p0
.end method

.method public final parse([BI)I
    .locals 8
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 95
    move v0, p2

    .line 97
    .local v0, "tmpNext":I
    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    .line 98
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 99
    const/4 v1, -0x1

    return v1

    .line 102
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DualDisplayAngleRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, "names":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 105
    .local v3, "angle":S
    const/4 v4, 0x0

    .line 106
    .local v4, "type":S
    const/4 v5, 0x0

    .line 108
    .local v5, "intensity":S
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v6, "tmpNext":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v0, v6

    int-to-short v0, v0

    .line 109
    .end local v3    # "angle":S
    .local v0, "angle":S
    add-int/lit8 v3, v7, 0x1

    .end local v7    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v6, p1, v7

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v6, v3

    int-to-short v3, v6

    .line 110
    .end local v4    # "type":S
    .local v3, "type":S
    add-int/lit8 v4, v7, 0x1

    .end local v7    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v6, p1, v7

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v7, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v6, v4

    int-to-short v4, v6

    .line 112
    .end local v5    # "intensity":S
    .local v4, "intensity":S
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-virtual {v5, v6, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 113
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-virtual {v5, v6, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 114
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    aget-object v2, v1, v2

    invoke-virtual {v5, v2, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 116
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 118
    return v7
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

    .line 142
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 143
    .local v0, "result":Z
    const/16 v1, 0x4c

    if-ne p1, v1, :cond_0

    .line 144
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 145
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 144
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 146
    .local v1, "onAngle":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAngle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 147
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DualDisplayAngleRunner;->mOnAngle:I

    .line 148
    .end local v1    # "onAngle":I
    goto :goto_0

    :cond_0
    const/16 v1, 0x4d

    if-ne p1, v1, :cond_1

    .line 149
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 150
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 149
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 151
    .local v1, "offAngle":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offAngle = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 152
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/DualDisplayAngleRunner;->mOffAngle:I

    .line 153
    .end local v1    # "offAngle":I
    goto :goto_0

    .line 154
    :cond_1
    const/4 v0, 0x0

    .line 156
    :goto_0
    return v0
.end method
