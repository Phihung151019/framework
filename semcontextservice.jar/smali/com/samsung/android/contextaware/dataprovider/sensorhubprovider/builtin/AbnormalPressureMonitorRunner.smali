.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalPressureMonitorRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "AbnormalPressureMonitorRunner.java"


# static fields
.field private static final LOG_FILE:Ljava/lang/String; = "/data/log/CAE/phone_state.txt"

.field private static final LOG_FILE_DIR:Ljava/lang/String; = "/data/log/CAE"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 58
    return-void
.end method

.method private getDate(J)Ljava/lang/String;
    .locals 2
    .param p1, "time"    # J

    .line 197
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 198
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private recordAbnormalPressure()V
    .locals 6

    .line 161
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/log/CAE"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    return-void

    .line 168
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/log/CAE/phone_state.txt"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 171
    .local v2, "fOutStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v2, v3

    .line 172
    nop

    .line 173
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalPressureMonitorRunner;->getDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " - ABNORMAL PRESSURE DETECTED\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "out":Ljava/lang/String;
    const-string v4, "UTF-8"

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    .end local v3    # "out":Ljava/lang/String;
    nop

    .line 183
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :goto_0
    goto :goto_1

    .line 184
    :catch_0
    move-exception v3

    .line 185
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 181
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 178
    :catch_1
    move-exception v3

    .line 179
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 183
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 193
    :cond_1
    :goto_1
    return-void

    .line 181
    :goto_2
    if-eqz v2, :cond_2

    .line 183
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 186
    goto :goto_3

    .line 184
    :catch_2
    move-exception v4

    .line 185
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 188
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v3
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 257
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 258
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 259
    return-void
.end method

.method public final disable()V
    .locals 0

    .line 246
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 247
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 248
    return-void
.end method

.method public final enable()V
    .locals 0

    .line 233
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 234
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 235
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 68
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_PRESSURE_MONITOR:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 4

    .line 93
    const-string v0, "zaxis"

    const-string v1, "barometer"

    const-string v2, "xaxis"

    const-string v3, "yaxis"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalPressureMonitorRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 271
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 79
    const/16 v0, 0x31

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 209
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 221
    return-object p0
.end method

.method public parse([BI)I
    .locals 16
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 110
    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 112
    .local v1, "tmpNext":I
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 114
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalPressureMonitorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, "names":[Ljava/lang/String;
    array-length v3, v0

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x10

    if-gez v3, :cond_0

    .line 117
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 118
    const/4 v3, -0x1

    return v3

    .line 121
    :cond_0
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v2, v4

    add-int/lit8 v6, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v6, "tmpNext":I
    aget-byte v1, v0, v1

    add-int/lit8 v7, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v6, v0, v6

    add-int/lit8 v8, v7, 0x1

    .end local v7    # "tmpNext":I
    .local v8, "tmpNext":I
    aget-byte v7, v0, v7

    add-int/lit8 v9, v8, 0x1

    .end local v8    # "tmpNext":I
    .local v9, "tmpNext":I
    aget-byte v8, v0, v8

    const/4 v10, 0x4

    new-array v11, v10, [B

    aput-byte v1, v11, v4

    const/4 v1, 0x1

    aput-byte v6, v11, v1

    const/4 v6, 0x2

    aput-byte v7, v11, v6

    const/4 v7, 0x3

    aput-byte v8, v11, v7

    invoke-static {v11}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 126
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    int-to-float v8, v8

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v8, v11

    .line 121
    invoke-virtual {v3, v5, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 128
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v5, v2, v1

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v9, v0, v9

    add-int/lit8 v12, v8, 0x1

    .end local v8    # "tmpNext":I
    .local v12, "tmpNext":I
    aget-byte v8, v0, v8

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "tmpNext":I
    .local v13, "tmpNext":I
    aget-byte v12, v0, v12

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .local v14, "tmpNext":I
    aget-byte v13, v0, v13

    new-array v15, v10, [B

    aput-byte v9, v15, v4

    aput-byte v8, v15, v1

    aput-byte v12, v15, v6

    aput-byte v13, v15, v7

    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 133
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    .line 128
    invoke-virtual {v3, v5, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 135
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v5, v2, v6

    add-int/lit8 v8, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v9, v0, v14

    add-int/lit8 v12, v8, 0x1

    .end local v8    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v8, v0, v8

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v12, v0, v12

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v13, v0, v13

    new-array v15, v10, [B

    aput-byte v9, v15, v4

    aput-byte v8, v15, v1

    aput-byte v12, v15, v6

    aput-byte v13, v15, v7

    invoke-static {v15}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v8

    .line 140
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v11

    .line 135
    invoke-virtual {v3, v5, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 142
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v5, v2, v7

    add-int/lit8 v8, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v8    # "tmpNext":I
    aget-byte v9, v0, v14

    add-int/lit8 v12, v8, 0x1

    .end local v8    # "tmpNext":I
    .restart local v12    # "tmpNext":I
    aget-byte v8, v0, v8

    add-int/lit8 v13, v12, 0x1

    .end local v12    # "tmpNext":I
    .restart local v13    # "tmpNext":I
    aget-byte v12, v0, v12

    add-int/lit8 v14, v13, 0x1

    .end local v13    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v13, v0, v13

    new-array v10, v10, [B

    aput-byte v9, v10, v4

    aput-byte v8, v10, v1

    aput-byte v12, v10, v6

    aput-byte v13, v10, v7

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v11

    .line 142
    invoke-virtual {v3, v5, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;F)V

    .line 149
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 153
    return v14
.end method
