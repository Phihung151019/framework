.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "LifeLogComponentRunner.java"

# interfaces
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;
.implements Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;


# static fields
.field private static final DEFAULT_BATCHING_PERIOD:I = 0xffff

.field private static final DEFAULT_STOP_PERIOD:I = 0x12c

.field private static final DEFAULT_WAIT_PERIOD:I = 0x5dc


# instance fields
.field private final mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

.field protected final mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

.field private mStopPeriod:I

.field private mWaitPeriod:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 3
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 63
    const/16 v0, 0x12c

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    .line 66
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    .line 89
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-direct {v0, p2, p3, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    .line 91
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    .line 93
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    invoke-interface {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;->registerObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;)V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mCurrentPositionRequest:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;

    check-cast v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    invoke-virtual {p0, v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->addRequestParser(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V

    .line 95
    return-void
.end method

.method private checkMovingPacket([BI)Z
    .locals 2
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 292
    add-int/lit8 v0, p2, 0x5

    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkStayingAreaPacket([BI)Z
    .locals 2
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 279
    add-int/lit8 v0, p2, 0x17

    array-length v1, p1

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseForMoving([BIJJ)I
    .locals 16
    .param p1, "packet"    # [B
    .param p2, "next"    # I
    .param p3, "curUtcTime"    # J
    .param p5, "curTimeMillis"    # J

    .line 418
    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 420
    .local v1, "tmpNext":I
    array-length v2, v0

    sub-int/2addr v2, v1

    add-int/lit8 v2, v2, -0x4

    const/4 v3, -0x1

    if-gez v2, :cond_0

    .line 421
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 422
    return v3

    .line 425
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x8

    shl-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    int-to-long v11, v1

    .line 430
    .local v11, "timeStamp":J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v6

    .line 431
    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    invoke-virtual/range {v6 .. v12}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v1

    .line 433
    .local v1, "movingTimeStamp":J
    array-length v6, v0

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_1

    .line 434
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 435
    return v3

    .line 437
    :cond_1
    add-int/lit8 v6, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v6, "tmpNext":I
    aget-byte v4, v0, v4

    .line 438
    .local v4, "movingCount":I
    if-gtz v4, :cond_2

    .line 439
    return v6

    .line 442
    :cond_2
    new-array v7, v4, [I

    .line 443
    .local v7, "movingActivity":[I
    new-array v8, v4, [I

    .line 444
    .local v8, "movingAccuracy":[I
    new-array v9, v4, [I

    .line 446
    .local v9, "movingTimeDuration":[I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v4, :cond_5

    .line 447
    move-object/from16 v13, p0

    invoke-direct {v13, v0, v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkMovingPacket([BI)Z

    move-result v14

    if-eqz v14, :cond_4

    add-int/lit8 v14, v4, -0x1

    if-le v10, v14, :cond_3

    goto :goto_1

    .line 452
    :cond_3
    add-int/lit8 v14, v6, 0x1

    .end local v6    # "tmpNext":I
    .local v14, "tmpNext":I
    aget-byte v6, v0, v6

    aput v6, v7, v10

    .line 453
    add-int/lit8 v6, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    aget-byte v14, v0, v14

    aput v14, v8, v10

    .line 454
    add-int/lit8 v14, v6, 0x1

    .end local v6    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v6, v0, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "tmpNext":I
    .local v15, "tmpNext":I
    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/2addr v14, v5

    add-int/2addr v6, v14

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    add-int/2addr v6, v15

    aput v6, v9, v10

    .line 446
    add-int/lit8 v10, v10, 0x1

    move v6, v14

    goto :goto_0

    .line 448
    .end local v14    # "tmpNext":I
    .restart local v6    # "tmpNext":I
    :cond_4
    :goto_1
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 449
    return v3

    .line 446
    :cond_5
    move-object/from16 v13, p0

    .line 459
    .end local v10    # "i":I
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    .line 460
    .local v3, "names":[Ljava/lang/String;
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v10

    aget-object v5, v3, v5

    invoke-virtual {v10, v5, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 461
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v10, 0x9

    aget-object v10, v3, v10

    invoke-virtual {v5, v10, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;J)V

    .line 462
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v10, 0xa

    aget-object v10, v3, v10

    invoke-virtual {v5, v10, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 463
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v10, 0xb

    aget-object v10, v3, v10

    invoke-virtual {v5, v10, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 464
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v5

    const/16 v10, 0xc

    aget-object v10, v3, v10

    invoke-virtual {v5, v10, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 466
    return v6
.end method

.method private parseForStayingArea([BIJJ)I
    .locals 24
    .param p1, "packet"    # [B
    .param p2, "next"    # I
    .param p3, "curUtcTime"    # J
    .param p5, "curTimeMillis"    # J

    .line 333
    move-object/from16 v0, p1

    move/from16 v1, p2

    .line 335
    .local v1, "tmpNext":I
    array-length v2, v0

    sub-int/2addr v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/4 v4, -0x1

    if-gez v2, :cond_0

    .line 336
    sget-object v2, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 337
    return v4

    .line 340
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v1, v0, v1

    .line 341
    .local v1, "stayingAreaCount":I
    if-gtz v1, :cond_1

    .line 342
    return v2

    .line 345
    :cond_1
    new-array v5, v1, [J

    .line 347
    .local v5, "stayingAreaTimeStamp":[J
    new-array v6, v1, [D

    .line 348
    .local v6, "stayingAreaLatitude":[D
    new-array v7, v1, [D

    .line 349
    .local v7, "stayingAreaLongitude":[D
    new-array v8, v1, [D

    .line 350
    .local v8, "stayingAreaAltitude":[D
    new-array v9, v1, [I

    .line 351
    .local v9, "stayingAreaTimeDuration":[I
    new-array v10, v1, [I

    .line 352
    .local v10, "stayingAreaRadius":[I
    new-array v11, v1, [I

    .line 354
    .local v11, "stayingAreaStatus":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v1, :cond_3

    .line 355
    move-object/from16 v13, p0

    invoke-direct {v13, v0, v2}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkStayingAreaPacket([BI)Z

    move-result v14

    if-nez v14, :cond_2

    add-int/lit8 v14, v1, -0x1

    if-lt v12, v14, :cond_2

    .line 357
    sget-object v3, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 358
    return v4

    .line 361
    :cond_2
    add-int/lit8 v14, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v14, "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "tmpNext":I
    .local v15, "tmpNext":I
    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v14, v14, 0x10

    add-int/2addr v2, v14

    add-int/lit8 v14, v15, 0x1

    .end local v15    # "tmpNext":I
    .restart local v14    # "tmpNext":I
    aget-byte v15, v0, v15

    and-int/lit16 v15, v15, 0xff

    shl-int/lit8 v15, v15, 0x8

    add-int/2addr v2, v15

    add-int/lit8 v15, v14, 0x1

    .end local v14    # "tmpNext":I
    .restart local v15    # "tmpNext":I
    aget-byte v14, v0, v14

    and-int/lit16 v14, v14, 0xff

    add-int/2addr v2, v14

    move/from16 v23, v3

    int-to-long v3, v2

    .line 366
    .local v3, "timeStamp":J
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;

    move-result-object v16

    .line 367
    move-wide/from16 v17, p3

    move-wide/from16 v19, p5

    move-wide/from16 v21, v3

    .end local v3    # "timeStamp":J
    .local v21, "timeStamp":J
    invoke-virtual/range {v16 .. v22}, Lcom/samsung/android/contextaware/utilbundle/CaTimeManager;->getTimeStampForUTC(JJJ)J

    move-result-wide v2

    aput-wide v2, v5, v12

    .line 369
    add-int/lit8 v2, v15, 0x1

    .end local v15    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v3, v0, v15

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    int-to-double v2, v3

    const-wide v15, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v15

    aput-wide v2, v6, v12

    .line 372
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    int-to-double v2, v3

    div-double/2addr v2, v15

    aput-wide v2, v7, v12

    .line 375
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    int-to-double v2, v3

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v15

    aput-wide v2, v8, v12

    .line 379
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v3, v2

    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v3, v4

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    aput v3, v9, v12

    .line 383
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v3, v0, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    aput v3, v10, v12

    .line 386
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    aget-byte v3, v0, v4

    aput v3, v11, v12

    .line 354
    .end local v21    # "timeStamp":J
    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v23

    const/4 v4, -0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v13, p0

    move/from16 v23, v3

    .line 390
    .end local v12    # "i":I
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "names":[Ljava/lang/String;
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v12, 0x0

    aget-object v12, v3, v12

    invoke-virtual {v4, v12, v1}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 392
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    aget-object v12, v3, v23

    invoke-virtual {v4, v12, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 393
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v12, 0x2

    aget-object v12, v3, v12

    invoke-virtual {v4, v12, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 394
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v12, 0x3

    aget-object v12, v3, v12

    invoke-virtual {v4, v12, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 395
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v12, 0x4

    aget-object v12, v3, v12

    invoke-virtual {v4, v12, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 396
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v12, 0x5

    aget-object v12, v3, v12

    invoke-virtual {v4, v12, v9}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 397
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v12, 0x6

    aget-object v12, v3, v12

    invoke-virtual {v4, v12, v10}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 398
    invoke-virtual {v13}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v4

    const/4 v12, 0x7

    aget-object v12, v3, v12

    invoke-virtual {v4, v12, v11}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[I)V

    .line 400
    return v2
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 503
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 504
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 505
    return-void
.end method

.method public final disable()V
    .locals 1

    .line 490
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 491
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->disable()V

    .line 492
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 493
    return-void
.end method

.method protected display()V
    .locals 0

    .line 267
    return-void
.end method

.method public final enable()V
    .locals 1

    .line 477
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 478
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mPassiveCurrentPosition:Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->enable()V

    .line 479
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 480
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 105
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_LIFE_LOG_COMPONENT:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 13

    .line 159
    const-string v11, "MovingAccuracy"

    const-string v12, "MovingTimeDuration"

    const-string v0, "StayingAreaCount"

    const-string v1, "StayingAreaTimeStamp"

    const-string v2, "StayingAreaLatitude"

    const-string v3, "StayingAreaLongitude"

    const-string v4, "StayingAreaAltitude"

    const-string v5, "StayingAreaTimeDuration"

    const-string v6, "StayingAreaRadius"

    const-string v7, "StayingAreaStatus"

    const-string v8, "MovingCount"

    const-string v9, "MovingTimeStamp"

    const-string v10, "MovingActivity"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 8

    .line 127
    const/16 v0, 0x9

    new-array v0, v0, [B

    .line 129
    .local v0, "packet":[B
    iget v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 130
    .local v1, "data":[B
    const/4 v3, 0x0

    aget-byte v4, v1, v3

    aput-byte v4, v0, v3

    .line 131
    const/4 v4, 0x1

    aget-byte v5, v1, v4

    aput-byte v5, v0, v4

    .line 133
    iget v5, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    invoke-static {v5, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 134
    aget-byte v5, v1, v3

    aput-byte v5, v0, v2

    .line 135
    const/4 v5, 0x3

    aget-byte v6, v1, v4

    aput-byte v6, v0, v5

    .line 137
    const v5, 0xffff

    invoke-static {v5, v2}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v1

    .line 138
    const/4 v5, 0x4

    aget-byte v6, v1, v3

    aput-byte v6, v0, v5

    .line 139
    const/4 v5, 0x5

    aget-byte v6, v1, v4

    aput-byte v6, v0, v5

    .line 141
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;

    move-result-object v5

    .line 142
    invoke-virtual {v5}, Lcom/samsung/android/contextaware/utilbundle/CaCurrentUtcTimeManager;->getUtcTime()[I

    move-result-object v5

    .line 144
    .local v5, "utcTime":[I
    aget v6, v5, v3

    invoke-static {v6, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    aget-byte v6, v6, v3

    const/4 v7, 0x6

    aput-byte v6, v0, v7

    .line 145
    aget v6, v5, v4

    invoke-static {v6, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    aget-byte v6, v6, v3

    const/4 v7, 0x7

    aput-byte v6, v0, v7

    .line 146
    aget v2, v5, v2

    invoke-static {v2, v4}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    aget-byte v2, v2, v3

    const/16 v3, 0x8

    aput-byte v2, v0, v3

    .line 148
    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 591
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 592
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 116
    const/16 v0, 0x1d

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 303
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 315
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .line 515
    return-object p0
.end method

.method public parse([BI)I
    .locals 19
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 175
    move/from16 v2, p2

    .line 177
    .local v2, "tmpNext":I
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v3, "GMT"

    invoke-direct {v0, v1, v3}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v7

    .line 179
    .local v7, "calender":Ljava/util/Calendar;
    const/16 v0, 0xb

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    .line 180
    .local v8, "hour":I
    const/16 v0, 0xc

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 181
    .local v9, "minute":I
    const/16 v0, 0xd

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    .line 182
    .local v10, "second":I
    const/16 v0, 0xe

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 184
    .local v11, "milliSec":I
    mul-int/lit16 v0, v8, 0xe10

    mul-int/lit8 v1, v9, 0x3c

    add-int/2addr v0, v1

    add-int/2addr v0, v10

    mul-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v11

    int-to-long v3, v0

    .line 185
    .local v3, "curUtcTime":J
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    .line 187
    .local v17, "curTimeMillis":J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parse start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 189
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v5, v17

    .end local v17    # "curTimeMillis":J
    .local v5, "curTimeMillis":J
    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->parseForStayingArea([BIJJ)I

    move-result v14

    .line 191
    move-wide v15, v3

    .end local v2    # "tmpNext":I
    .end local v3    # "curUtcTime":J
    .end local v5    # "curTimeMillis":J
    .local v14, "tmpNext":I
    .local v15, "curUtcTime":J
    .restart local v17    # "curTimeMillis":J
    if-gtz v14, :cond_0

    .line 192
    return v14

    .line 195
    :cond_0
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    invoke-direct/range {v12 .. v18}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->parseForMoving([BIJJ)I

    move-result v0

    .line 196
    .end local v14    # "tmpNext":I
    .local v0, "tmpNext":I
    if-gtz v0, :cond_1

    .line 197
    return v0

    .line 200
    :cond_1
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 202
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 204
    return v0
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

    .line 216
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 218
    .local v0, "result":Z
    const/16 v1, 0x1c

    const/16 v2, 0x17

    const/4 v3, 0x2

    const/16 v4, 0x1d

    if-ne p1, v1, :cond_0

    .line 219
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 220
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 219
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 221
    .local v1, "stopPeriod":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StopPeriod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 222
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mStopPeriod:I

    .line 223
    nop

    .line 227
    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    .line 223
    const/4 v5, 0x1

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 228
    .end local v1    # "stopPeriod":I
    goto/16 :goto_0

    :cond_0
    if-ne p1, v4, :cond_1

    .line 229
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 230
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 229
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 231
    .local v1, "waitPeriod":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WaitPeriod = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 232
    iput v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->mWaitPeriod:I

    .line 233
    nop

    .line 237
    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    .line 233
    invoke-virtual {p0, v2, v4, v3, v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 238
    .end local v1    # "waitPeriod":I
    goto :goto_0

    :cond_1
    const/16 v1, 0x1e

    if-ne p1, v1, :cond_2

    .line 239
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 240
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 239
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 241
    .local v1, "stayingRadius":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StayingRadius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 242
    nop

    .line 246
    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    .line 242
    const/4 v5, 0x3

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 247
    .end local v1    # "stayingRadius":I
    goto :goto_0

    :cond_2
    const/16 v1, 0x1f

    if-ne p1, v1, :cond_3

    .line 248
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 249
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 248
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 250
    .local v1, "stayingAreaRadius":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "StayingAreaRadius = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 251
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 250
    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 252
    nop

    .line 256
    invoke-static {v1, v3}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v3

    .line 252
    const/4 v5, 0x4

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    .line 257
    .end local v1    # "stayingAreaRadius":I
    goto :goto_0

    .line 258
    :cond_3
    const/4 v0, 0x0

    .line 261
    :goto_0
    return v0
.end method

.method public updatePassiveCurrentPosition(I[IDDDDFFI)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "utcTime"    # [I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "distance"    # D
    .param p11, "speed"    # F
    .param p12, "accuracy"    # F
    .param p13, "satelliteCount"    # I

    .line 608
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->isDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 609
    return-void

    .line 612
    :cond_0
    const-string v0, "send the passive current position to SensorHub"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 614
    nop

    .line 615
    invoke-static/range {p1 .. p13}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->sendPositionToSensorHub(I[IDDDDFFI)I

    move-result v0

    .line 617
    .local v0, "result":I
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 618
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 620
    :cond_1
    return-void
.end method

.method public final updatePosition(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V
    .locals 17
    .param p1, "position"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->isDisable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    return-void

    .line 533
    :cond_0
    if-nez p1, :cond_1

    .line 534
    sget-object v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CURRENT_POSITION_NULL_EXCEPTION:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 536
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    .line 535
    invoke-static {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 537
    return-void

    .line 540
    :cond_1
    move-object/from16 v0, p1

    .line 542
    .local v0, "pos":Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getLatitude()D

    move-result-wide v1

    const-wide v3, 0x412e848000000000L    # 1000000.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    .line 543
    .local v1, "latitude":I
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getLongitude()D

    move-result-wide v5

    mul-double/2addr v5, v3

    double-to-int v2, v5

    .line 544
    .local v2, "longitude":I
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getAltitude()D

    move-result-wide v3

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v3, v5

    double-to-int v3, v3

    .line 545
    .local v3, "altitude":I
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getAccuracy()F

    move-result v4

    float-to-int v4, v4

    .line 546
    .local v4, "accuracy":I
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getUtcTime()[I

    move-result-object v7

    .line 547
    .local v7, "utcTime":[I
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getSatelliteCount()I

    move-result v8

    .line 548
    .local v8, "satelliteCount":I
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getSpeed()F

    move-result v9

    const/high16 v10, 0x42c80000    # 100.0f

    mul-float/2addr v9, v10

    float-to-int v9, v9

    .line 549
    .local v9, "speed":I
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getDistance()D

    move-result-wide v10

    mul-double/2addr v10, v5

    double-to-int v5, v10

    .line 550
    .local v5, "distance":I
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->getType()I

    move-result v6

    .line 552
    .local v6, "type":I
    const/16 v10, 0x16

    new-array v11, v10, [B

    .line 553
    .local v11, "dataPacket":[B
    const/4 v12, 0x0

    .line 555
    .local v12, "size":I
    const/4 v13, 0x4

    invoke-static {v1, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14, v15, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 557
    invoke-static {v2, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/2addr v12, v13

    invoke-static {v14, v15, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 559
    invoke-static {v3, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v14

    add-int/2addr v12, v13

    invoke-static {v14, v15, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 561
    const/4 v14, 0x1

    move/from16 v16, v13

    invoke-static {v4, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    add-int/lit8 v12, v12, 0x4

    invoke-static {v13, v15, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 563
    aget v13, v7, v15

    invoke-static {v13, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    add-int/2addr v12, v14

    invoke-static {v13, v15, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    aget v13, v7, v14

    invoke-static {v13, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v13

    add-int/2addr v12, v14

    invoke-static {v13, v15, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 567
    const/4 v13, 0x2

    aget v10, v7, v13

    invoke-static {v10, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    add-int/2addr v12, v14

    invoke-static {v10, v15, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 569
    invoke-static {v8, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    add-int/2addr v12, v14

    invoke-static {v10, v15, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 571
    invoke-static {v9, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    add-int/2addr v12, v14

    invoke-static {v10, v15, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 573
    invoke-static {v5, v13}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    add-int/2addr v12, v13

    invoke-static {v10, v15, v11, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    invoke-static {v6, v14}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v10

    add-int/2addr v12, v13

    invoke-static {v10, v15, v11, v12, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 578
    const/16 v13, 0x16

    move-object/from16 v10, p0

    invoke-virtual {v10, v13, v11}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/LifeLogComponentRunner;->sendCommonValueToSensorHub(B[B)Z

    .line 580
    return-void
.end method
