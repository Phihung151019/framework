.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CareGiverRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "CareGiverRunner.java"


# static fields
.field private static final DEFAULT_CARE_GIVER_DURATION:I = 0xc8

.field private static final DEFAULT_CARE_GIVER_STRENGTH:I = 0x3


# instance fields
.field private mDuration:I

.field private mStrength:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CareGiverRunner;->mStrength:I

    .line 50
    const/16 v0, 0xc8

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CareGiverRunner;->mDuration:I

    .line 65
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 241
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 242
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 243
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 230
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 231
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 232
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 217
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 218
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 219
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 75
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CARE_GIVER:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 1

    .line 115
    const-string v0, "UserStatus"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 5

    .line 97
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 98
    .local v0, "packet":[B
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CareGiverRunner;->mStrength:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 99
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CareGiverRunner;->mDuration:I

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 100
    .local v1, "data":[B
    aget-byte v2, v1, v2

    const/4 v4, 0x1

    aput-byte v2, v0, v4

    .line 101
    aget-byte v2, v1, v4

    aput-byte v2, v0, v3

    .line 103
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 254
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CareGiverRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 255
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 86
    const/16 v0, 0x1e

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 193
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 205
    return-object p0
.end method

.method public final parse([BI)I
    .locals 6
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 163
    move v0, p2

    .line 165
    .local v0, "tmpNext":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CareGiverRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    .line 167
    .local v1, "name":Ljava/lang/String;
    array-length v3, p1

    sub-int/2addr v3, v0

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-gez v3, :cond_0

    .line 168
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 169
    const/4 v2, -0x1

    return v2

    .line 172
    :cond_0
    new-array v3, v4, [B

    fill-array-data v3, :array_0

    .line 173
    .local v3, "stat":[B
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v0, p1, v0

    aput-byte v0, v3, v2

    .line 174
    add-int/lit8 v0, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v0    # "tmpNext":I
    aget-byte v2, p1, v4

    const/4 v4, 0x1

    aput-byte v2, v3, v4

    .line 175
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 176
    .local v2, "wrapped":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    .line 178
    .local v4, "num":S
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    invoke-virtual {v5, v1, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 180
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 182
    return v0

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 5
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .line 127
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 128
    .local v0, "result":Z
    const/16 v1, 0x28

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    .line 129
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 130
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 129
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 131
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

    .line 133
    if-lez v1, :cond_1

    const/4 v3, 0x5

    if-le v1, v3, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CareGiverRunner;->mStrength:I

    .line 138
    .end local v1    # "strength":I
    goto :goto_2

    .line 134
    .restart local v1    # "strength":I
    :cond_1
    :goto_0
    const-string v3, "range error of care giver strength (range : 1~5)"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 135
    return v2

    .line 138
    .end local v1    # "strength":I
    :cond_2
    const/16 v1, 0x29

    if-ne p1, v1, :cond_5

    .line 139
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 140
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 139
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 141
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

    .line 143
    if-lez v1, :cond_4

    const/16 v3, 0x1388

    if-le v1, v3, :cond_3

    goto :goto_1

    .line 147
    :cond_3
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/CareGiverRunner;->mDuration:I

    .line 148
    .end local v1    # "duration":I
    goto :goto_2

    .line 144
    .restart local v1    # "duration":I
    :cond_4
    :goto_1
    const-string v3, "range error of care giver duration (range : 1~5000)"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 145
    return v2

    .line 149
    .end local v1    # "duration":I
    :cond_5
    const/4 v0, 0x0

    .line 151
    :goto_2
    return v0
.end method
