.class public Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;
.super Ljava/lang/Object;
.source "SensorHubCommManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;


# instance fields
.field private mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs generatePacket([B[B)[B
    .locals 8
    .param p1, "data"    # [B
    .param p2, "headerData"    # [B

    .line 175
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 177
    :cond_0
    array-length v1, p2

    .line 178
    .local v1, "headerLength":I
    const/4 v2, 0x2

    if-lt v1, v2, :cond_4

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    goto :goto_2

    .line 182
    :cond_1
    const/4 v0, 0x0

    .line 183
    .local v0, "index":I
    array-length v2, p1

    add-int/2addr v2, v1

    new-array v2, v2, [B

    .line 185
    .local v2, "packet":[B
    array-length v3, p2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    aget-byte v6, p2, v5

    .line 186
    .local v6, "i":B
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "index":I
    .local v7, "index":I
    aput-byte v6, v2, v0

    .line 185
    .end local v6    # "i":B
    add-int/lit8 v5, v5, 0x1

    move v0, v7

    goto :goto_0

    .line 188
    .end local v7    # "index":I
    .restart local v0    # "index":I
    :cond_2
    array-length v3, p1

    :goto_1
    if-ge v4, v3, :cond_3

    aget-byte v5, p1, v4

    .line 189
    .local v5, "i":B
    add-int/lit8 v6, v0, 0x1

    .end local v0    # "index":I
    .local v6, "index":I
    aput-byte v5, v2, v0

    .line 188
    .end local v5    # "i":B
    add-int/lit8 v4, v4, 0x1

    move v0, v6

    goto :goto_1

    .line 192
    .end local v6    # "index":I
    .restart local v0    # "index":I
    :cond_3
    return-object v2

    .line 179
    .end local v0    # "index":I
    .end local v2    # "packet":[B
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;
    .locals 2

    .line 43
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    monitor-enter v0

    .line 44
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    if-nez v1, :cond_0

    .line 45
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    .line 47
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->instance:Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    return-object v0

    .line 47
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    return-object v0
.end method

.method private setSensorHubManager(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V
    .locals 0
    .param p1, "manager"    # Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    .line 202
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    .line 203
    return-void
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    if-nez p1, :cond_0

    .line 61
    const-string v0, "Context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 62
    return-void

    .line 65
    :cond_0
    new-instance v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->setSensorHubManager(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V

    .line 67
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 68
    const-string v0, "mSensorHubManager is null."

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 72
    :cond_1
    return-void
.end method

.method public final varargs sendCmdToSensorHub([B[B)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "headerData"    # [B

    .line 142
    array-length v0, p2

    .line 143
    .local v0, "headerLength":I
    const/4 v1, 0x2

    if-lt v0, v1, :cond_6

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    goto :goto_1

    .line 147
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->generatePacket([B[B)[B

    move-result-object v1

    .line 148
    .local v1, "packet":[B
    if-eqz v1, :cond_5

    array-length v2, v1

    if-gtz v2, :cond_1

    goto :goto_0

    .line 152
    :cond_1
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v2

    .line 153
    .local v2, "str":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 154
    :cond_2
    const-string v3, "Packet is null"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 157
    :cond_3
    array-length v3, v1

    invoke-virtual {p0, v3, v1}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendPacketToSensorHub(I[B)I

    move-result v3

    .line 158
    .local v3, "result":I
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 159
    invoke-static {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 162
    :cond_4
    return v3

    .line 149
    .end local v2    # "str":Ljava/lang/String;
    .end local v3    # "result":I
    :cond_5
    :goto_0
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_GENERATION_FAIL:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    return v2

    .line 144
    .end local v1    # "packet":[B
    :cond_6
    :goto_1
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_HEADER_LENGTH:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    return v1
.end method

.method public final declared-synchronized sendPacketToSensorHub(I[B)I
    .locals 4
    .param p1, "len"    # I
    .param p2, "packet"    # [B

    monitor-enter p0

    .line 95
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_SENSOR_HUB_MANAGER_NULL_EXEPTION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 97
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return v0

    .line 100
    .end local p0    # "this":Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->sendSensorHubData(I[B)I

    move-result v0

    .line 101
    .local v0, "result":I
    if-lez v0, :cond_1

    .line 102
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    .end local v0    # "result":I
    .local v1, "result":I
    goto :goto_0

    .line 103
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_1
    const/4 v1, -0x5

    if-ne v0, v1, :cond_2

    .line 104
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_I2C_COMM:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 105
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_2
    const/16 v1, -0xb

    if-ne v0, v1, :cond_3

    .line 106
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_RECEIVE_ACK:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    .end local v0    # "result":I
    .restart local v1    # "result":I
    goto :goto_0

    .line 108
    .end local v1    # "result":I
    .restart local v0    # "result":I
    :cond_3
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_SENSOR_HUB_MANAGER_FAULT:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    .line 115
    .end local v0    # "result":I
    .restart local v1    # "result":I
    :goto_0
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    if-eq v1, v0, :cond_6

    .line 116
    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 118
    invoke-static {p2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v0

    .line 119
    .local v0, "str":Ljava/lang/String;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 122
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to deliver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_2

    .line 120
    :cond_5
    :goto_1
    const-string v2, "Packet is null"

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 125
    :goto_2
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v2

    .line 129
    .end local v0    # "str":Ljava/lang/String;
    :cond_6
    monitor-exit p0

    return v1

    .line 94
    .end local v1    # "result":I
    .end local p1    # "len":I
    .end local p2    # "packet":[B
    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final terminateManager()V
    .locals 1

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->setSensorHubManager(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V

    .line 83
    return-void
.end method

.method public final varargs testGeneratePacket([B[B)[B
    .locals 1
    .param p1, "data"    # [B
    .param p2, "headerData"    # [B

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->generatePacket([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final testGetSensorHubManager()Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    return-object v0
.end method
