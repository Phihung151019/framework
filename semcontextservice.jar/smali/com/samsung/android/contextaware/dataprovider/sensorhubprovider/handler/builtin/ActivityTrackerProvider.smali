.class public abstract Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ActivityTrackerProvider.java"


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 57
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->initialize(Landroid/content/Context;Landroid/os/Looper;)V

    .line 58
    return-void
.end method


# virtual methods
.method protected final byteArrayToLong([B)J
    .locals 5
    .param p1, "bytes"    # [B

    .line 290
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 291
    .local v1, "byte_buf":Ljava/nio/ByteBuffer;
    new-array v2, v0, [B

    .line 292
    .local v2, "change":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 293
    const/4 v4, 0x0

    aput-byte v4, v2, v3

    .line 292
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 295
    .end local v3    # "i":I
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 296
    rsub-int/lit8 v3, v0, 0x7

    array-length v4, p1

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v0

    aget-byte v4, p1, v4

    aput-byte v4, v2, v3

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 298
    .end local v0    # "i":I
    :cond_1
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 299
    .end local v1    # "byte_buf":Ljava/nio/ByteBuffer;
    .local v0, "byte_buf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 300
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    return-wide v3
.end method

.method public disable()V
    .locals 1

    .line 179
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->disable()V

    .line 180
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 181
    return-void
.end method

.method public enable()V
    .locals 1

    .line 167
    invoke-static {}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->getInstance()Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerHandler;->enable()V

    .line 168
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 169
    return-void
.end method

.method protected getAccuracyType()B
    .locals 1

    .line 198
    const/4 v0, 0x0

    return v0
.end method

.method protected getActivityType()I
    .locals 1

    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method protected getBatchingPeriod()I
    .locals 1

    .line 207
    const/4 v0, 0x0

    return v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 4

    .line 79
    const-string v0, "ActivityType"

    const-string v1, "Accuracy"

    const-string v2, "OperationMode"

    const-string v3, "TimeStamp"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 9

    .line 91
    const/16 v0, 0xb

    new-array v1, v0, [B

    .line 93
    .local v1, "packet":[B
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v2

    if-gez v2, :cond_0

    .line 96
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    nop

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v2

    .line 99
    const/4 v4, 0x4

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    .line 102
    .local v2, "activityType":[B
    aget-byte v5, v2, v3

    const/4 v6, 0x1

    aput-byte v5, v1, v6

    .line 103
    aget-byte v5, v2, v6

    const/4 v7, 0x2

    aput-byte v5, v1, v7

    .line 104
    aget-byte v5, v2, v7

    const/4 v8, 0x3

    aput-byte v5, v1, v8

    .line 105
    aget-byte v5, v2, v8

    aput-byte v5, v1, v4

    .line 107
    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getAccuracyType()B

    move-result v5

    aput-byte v5, v1, v4

    .line 109
    nop

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getBatchingPeriod()I

    move-result v4

    .line 109
    invoke-static {v4, v7}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    .line 111
    .local v4, "arBatchingPeriod":[B
    const/4 v5, 0x6

    aget-byte v7, v4, v3

    aput-byte v7, v1, v5

    .line 112
    const/4 v5, 0x7

    aget-byte v6, v4, v6

    aput-byte v6, v1, v5

    .line 114
    new-instance v5, Ljava/util/SimpleTimeZone;

    const-string v6, "GMT"

    invoke-direct {v5, v3, v6}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    .line 115
    invoke-static {v5}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v3

    .line 116
    .local v3, "temp":Ljava/util/Calendar;
    invoke-virtual {v3, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 117
    .local v0, "hour":I
    const/16 v5, 0xc

    invoke-virtual {v3, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 118
    .local v5, "minute":I
    const/16 v6, 0xd

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 119
    .local v6, "second":I
    const/16 v7, 0x8

    int-to-byte v8, v0

    aput-byte v8, v1, v7

    .line 120
    const/16 v7, 0x9

    int-to-byte v8, v5

    aput-byte v8, v1, v7

    .line 121
    const/16 v7, 0xa

    int-to-byte v8, v6

    aput-byte v8, v1, v7

    .line 123
    return-object v1
.end method

.method protected final getDataPacketToUnregisterLib()[B
    .locals 8

    .line 134
    const/16 v0, 0x8

    new-array v0, v0, [B

    .line 136
    .local v0, "packet":[B
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v1

    if-gez v1, :cond_0

    .line 139
    const/4 v1, 0x0

    return-object v1

    .line 142
    :cond_0
    nop

    .line 143
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getActivityType()I

    move-result v1

    .line 142
    const/4 v3, 0x4

    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 144
    .local v1, "activityType":[B
    aget-byte v4, v1, v2

    const/4 v5, 0x1

    aput-byte v4, v0, v5

    .line 145
    aget-byte v4, v1, v5

    const/4 v6, 0x2

    aput-byte v4, v0, v6

    .line 146
    aget-byte v4, v1, v6

    const/4 v7, 0x3

    aput-byte v4, v0, v7

    .line 147
    aget-byte v4, v1, v7

    aput-byte v4, v0, v3

    .line 149
    const/4 v3, 0x5

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getAccuracyType()B

    move-result v4

    aput-byte v4, v0, v3

    .line 151
    nop

    .line 152
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getBatchingPeriod()I

    move-result v3

    .line 151
    invoke-static {v3, v6}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    .line 153
    .local v3, "arBatchingPeriod":[B
    const/4 v4, 0x6

    aget-byte v2, v3, v2

    aput-byte v2, v0, v4

    .line 154
    const/4 v2, 0x7

    aget-byte v4, v3, v5

    aput-byte v4, v0, v2

    .line 156
    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 68
    const/16 v0, 0x1a

    return v0
.end method

.method protected abstract getModeType()B
.end method

.method public parse([BI)I
    .locals 9
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 218
    move v0, p2

    .line 220
    .local v0, "tmpNext":I
    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v2, 0x4

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    .line 221
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 222
    const/4 v1, -0x1

    return v1

    .line 225
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 227
    .local v1, "names":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getModeType()B

    move-result v6

    int-to-short v6, v6

    invoke-virtual {v3, v5, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 229
    new-array v2, v2, [B

    .line 230
    .local v2, "timeTemp":[B
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v0, p1, v0

    aput-byte v0, v2, v4

    .line 231
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v0    # "tmpNext":I
    aget-byte v3, p1, v3

    const/4 v4, 0x1

    aput-byte v3, v2, v4

    .line 232
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v0, p1, v0

    const/4 v5, 0x2

    aput-byte v0, v2, v5

    .line 233
    add-int/lit8 v0, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v0    # "tmpNext":I
    aget-byte v3, p1, v3

    const/4 v5, 0x3

    aput-byte v3, v2, v5

    .line 234
    invoke-virtual {p0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->byteArrayToLong([B)J

    move-result-wide v5

    .line 235
    .local v5, "time_tempdata":J
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    aget-object v4, v1, v4

    .line 236
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v7

    invoke-virtual {v7, v5, v6}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(J)J

    move-result-wide v7

    .line 235
    invoke-virtual {v3, v4, v7, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 238
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->parseData([BI)I

    move-result v0

    .line 240
    if-lez v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->notifyObserver()V

    .line 244
    :cond_1
    return v0
.end method

.method protected parseData([BI)I
    .locals 6
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 257
    move v0, p2

    .line 259
    .local v0, "tmpNext":I
    array-length v1, p1

    sub-int/2addr v1, v0

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    if-gez v1, :cond_0

    .line 260
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 261
    const/4 v1, -0x1

    return v1

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 266
    .local v1, "names":[Ljava/lang/String;
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v0, p1, v0

    .line 267
    .local v0, "activityType":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v2, v1, v2

    invoke-virtual {v4, v2, v0}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 269
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v3, p1, v3

    .line 270
    .local v3, "accuracy":I
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/handler/builtin/ActivityTrackerProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-virtual {v4, v5, v3}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 272
    return v2
.end method
