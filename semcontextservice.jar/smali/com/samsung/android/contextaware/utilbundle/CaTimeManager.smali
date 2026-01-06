.class public Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;
.super Ljava/lang/Object;
.source "CaTimeManager.java"


# static fields
.field private static volatile instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;
    .locals 2

    .line 40
    const-class v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    invoke-direct {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;-><init>()V

    sput-object v1, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    .line 44
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    sget-object v0, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->instance:Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    return-object v0

    .line 44
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public final getTimeStampForUTC(J)J
    .locals 13
    .param p1, "timeStamp"    # J

    .line 56
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "GMT"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 58
    .local v0, "calender":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 59
    .local v1, "hr":I
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 60
    .local v2, "min":I
    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 61
    .local v3, "sec":I
    const/16 v4, 0xe

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 63
    .local v4, "milliSec":I
    mul-int/lit16 v5, v1, 0xe10

    mul-int/lit8 v6, v2, 0x3c

    add-int/2addr v5, v6

    add-int/2addr v5, v3

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v5, v4

    int-to-long v7, v5

    .line 64
    .local v7, "curUtcTime":J
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    .line 66
    .local v9, "curTimeMilliSec":J
    move-object v6, p0

    move-wide v11, p1

    .end local p1    # "timeStamp":J
    .local v11, "timeStamp":J
    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC24(JJJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public final getTimeStampForUTC(JJJ)J
    .locals 4
    .param p1, "curUtcTime"    # J
    .param p3, "curTimeMilliSec"    # J
    .param p5, "timeStamp"    # J

    .line 106
    sub-long v0, p1, p5

    .line 107
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 108
    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    .line 110
    :cond_0
    sub-long v2, p3, v0

    return-wide v2
.end method

.method public final getTimeStampForUTC24(JJJ)J
    .locals 4
    .param p1, "curUtcTime"    # J
    .param p3, "curTimeMilliSec"    # J
    .param p5, "timeStamp"    # J

    .line 82
    sub-long v0, p1, p5

    .line 83
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 84
    const-wide/32 v2, -0x5095e20

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 85
    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    goto :goto_0

    .line 87
    :cond_0
    const-wide/16 v0, 0x0

    .line 90
    :cond_1
    :goto_0
    sub-long v2, p3, v0

    return-wide v2
.end method

.method public final sendCurTimeToSensorHub()V
    .locals 6

    .line 117
    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 119
    .local v0, "dataPacket":[B
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v1

    .line 122
    .local v1, "utcTime":[I
    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v2

    aput-byte v3, v0, v2

    .line 123
    aget v3, v1, v4

    invoke-static {v3, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    aget-byte v3, v3, v2

    aput-byte v3, v0, v4

    .line 124
    const/4 v3, 0x2

    aget v5, v1, v3

    invoke-static {v5, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    aget-byte v2, v4, v2

    aput-byte v2, v0, v3

    .line 126
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    new-array v3, v3, [B

    fill-array-data v3, :array_0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v2

    .line 129
    .local v2, "result":I
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 130
    invoke-static {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 132
    :cond_0
    return-void

    nop

    :array_0
    .array-data 1
        -0x3ft
        0xet
    .end array-data
.end method
