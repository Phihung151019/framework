.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "AbnormalShockRunner.java"


# static fields
.field private static final DEFAULT_SHOCK_DURATION:I = 0xc8

.field private static final DEFAULT_SHOCK_STRENGTH:I = 0x3


# instance fields
.field private mDuration:I

.field private mStrength:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->mStrength:I

    .line 51
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->mDuration:I

    .line 66
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 259
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 260
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 261
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 248
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 249
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 250
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 235
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 236
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 237
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 76
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_SHOCK:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "UserStatus"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 5

    .line 98
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 99
    .local v0, "packet":[B
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->mStrength:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 100
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->mDuration:I

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 101
    .local v1, "data":[B
    aget-byte v2, v1, v2

    const/4 v4, 0x1

    aput-byte v2, v0, v4

    .line 102
    aget-byte v2, v1, v4

    aput-byte v2, v0, v3

    .line 104
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 272
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 273
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 87
    const/16 v0, 0x26

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 211
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 223
    return-object p0
.end method

.method public final parse([BI)I
    .locals 8
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 179
    move v0, p2

    .line 181
    .local v0, "tmpNext":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 184
    .local v1, "name":Ljava/lang/String;
    array-length v3, p1

    sub-int/2addr v3, v0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-gez v3, :cond_0

    .line 185
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 186
    const/4 v2, -0x1

    return v2

    .line 189
    :cond_0
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v0, p1, v0

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v5, "tmpNext":I
    aget-byte v3, p1, v3

    const/4 v6, 0x4

    new-array v6, v6, [B

    aput-byte v2, v6, v2

    const/4 v7, 0x1

    aput-byte v2, v6, v7

    aput-byte v0, v6, v4

    const/4 v0, 0x3

    aput-byte v3, v6, v0

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 196
    .local v0, "status":I
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 198
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 200
    return v5
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

    .line 128
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 129
    .local v0, "result":Z
    const/16 v1, 0x2c

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 130
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 131
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 130
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 132
    .local v1, "strength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Strength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 134
    if-lez v1, :cond_1

    const/4 v3, 0x5

    if-le v1, v3, :cond_0

    goto :goto_0

    .line 139
    :cond_0
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->mStrength:I

    .line 140
    .end local v1    # "strength":I
    goto/16 :goto_2

    .line 135
    .restart local v1    # "strength":I
    :cond_1
    :goto_0
    const-string v3, "range error of abnormal shock strength (range : 1~5)"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 137
    return v2

    .line 140
    .end local v1    # "strength":I
    :cond_2
    const/16 v1, 0x2d

    if-ne p1, v1, :cond_5

    .line 142
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 143
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 142
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 144
    .local v1, "duration":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Duration = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 146
    if-lez v1, :cond_4

    const/16 v3, 0x1388

    if-le v1, v3, :cond_3

    goto :goto_1

    .line 151
    :cond_3
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->mDuration:I

    .line 152
    .end local v1    # "duration":I
    goto :goto_2

    .line 147
    .restart local v1    # "duration":I
    :cond_4
    :goto_1
    const-string v3, "range error of abnormal shock duration (range : 1~5000)"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 149
    return v2

    .line 152
    .end local v1    # "duration":I
    :cond_5
    const/16 v1, 0x2e

    if-ne p1, v1, :cond_6

    .line 154
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 155
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 154
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 156
    .local v1, "action":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "User action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 159
    nop

    .line 163
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    .line 159
    const/16 v4, 0x17

    const/16 v5, 0x26

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 164
    .end local v1    # "action":I
    goto :goto_2

    .line 165
    :cond_6
    const/4 v0, 0x0

    .line 167
    :goto_2
    return v0
.end method
