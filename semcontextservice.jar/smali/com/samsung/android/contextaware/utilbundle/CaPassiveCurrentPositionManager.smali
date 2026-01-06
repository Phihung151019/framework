.class public Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;
.super Ljava/lang/Object;
.source "CaPassiveCurrentPositionManager.java"

# interfaces
.implements Lcom/samsung/android/contextaware/utilbundle/IUtilManager;
.implements Lcom/samsung/android/contextaware/utilbundle/IPassiveCurrentPositionObservable;


# static fields
.field private static final ACCURACY_GOOD_THRESHOLE:F = 4800.0f

.field private static final GPS_MIN_DISTANCE:F = 0.0f

.field private static final GPS_MIN_TIME:J = 0x3e8L


# instance fields
.field private mEnable:Z

.field private mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private final mGpsListener:Landroid/location/LocationListener;

.field private mGpsManager:Landroid/location/LocationManager;

.field private mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

.field private final mLooper:Landroid/os/Looper;

.field private mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

.field private mSatelliteCount:I

.field private final m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmGpsInfo(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrePosition(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSatelliteCount(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmSatelliteCount(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterGpsListener(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->registerGpsListener()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterGpsListener(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->unregisterGpsListener()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "observer"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    .line 127
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$1;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    .line 180
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$2;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    .line 79
    iput-object p2, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    .line 81
    invoke-virtual {p0, p1}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->initializeManager(Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0, p3}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->registerPassiveCurrentPositionObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V

    .line 83
    return-void
.end method

.method private registerGpsListener()V
    .locals 8

    .line 321
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 322
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 323
    return-void

    .line 326
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v6, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    iget-object v7, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    const-string v2, "passive"

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 328
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/GpsStatus$NmeaListener;)Z

    .line 329
    return-void
.end method

.method public static sendPositionToSensorHub(I[IDDDDFFI)I
    .locals 10
    .param p0, "type"    # I
    .param p1, "utcTime"    # [I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "distance"    # D
    .param p10, "speed"    # F
    .param p11, "accuracy"    # F
    .param p12, "satelliteCount"    # I

    .line 371
    const/16 v0, 0x16

    new-array v0, v0, [B

    .line 372
    .local v0, "dataPacket":[B
    const/4 v1, 0x0

    .line 374
    .local v1, "size":I
    const-wide v2, 0x412e848000000000L    # 1000000.0

    mul-double v4, p2, v2

    double-to-int v4, v4

    .line 375
    const/4 v5, 0x4

    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    .line 374
    const/4 v6, 0x0

    invoke-static {v4, v6, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 377
    mul-double/2addr v2, p4

    double-to-int v2, v2

    .line 378
    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    add-int/2addr v1, v5

    .line 377
    invoke-static {v2, v6, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 380
    const-wide v2, 0x408f400000000000L    # 1000.0

    mul-double v7, p6, v2

    double-to-int v4, v7

    .line 381
    invoke-static {v4, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v4

    add-int/2addr v1, v5

    .line 380
    invoke-static {v4, v6, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 383
    move/from16 v4, p11

    float-to-int v7, v4

    const/4 v8, 0x1

    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    add-int/2addr v1, v5

    invoke-static {v7, v6, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 385
    aget v5, p1, v6

    invoke-static {v5, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    add-int/2addr v1, v8

    invoke-static {v5, v6, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    aget v5, p1, v8

    invoke-static {v5, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v5

    add-int/2addr v1, v8

    invoke-static {v5, v6, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    const/4 v5, 0x2

    aget v7, p1, v5

    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    add-int/2addr v1, v8

    invoke-static {v7, v6, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 391
    move/from16 v7, p12

    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    add-int/2addr v1, v8

    invoke-static {v9, v6, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 393
    const/high16 v9, 0x42c80000    # 100.0f

    mul-float v9, v9, p10

    float-to-int v9, v9

    invoke-static {v9, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v9

    add-int/2addr v1, v8

    invoke-static {v9, v6, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 395
    mul-double v2, v2, p8

    double-to-int v2, v2

    .line 396
    invoke-static {v2, v5}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    add-int/2addr v1, v5

    .line 395
    invoke-static {v2, v6, v0, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 398
    invoke-static {p0, v8}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v2

    add-int/2addr v1, v5

    invoke-static {v2, v6, v0, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 401
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->getInstance()Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    new-array v3, v5, [B

    fill-array-data v3, :array_0

    invoke-virtual {v2, v0, v3}, Lcom/samsung/android/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v2

    return v2

    nop

    :array_0
    .array-data 1
        -0x3ft
        0x16t
    .end array-data
.end method

.method private unregisterGpsListener()V
    .locals 2

    .line 335
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 336
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 337
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 341
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->m_nmea_listener:Landroid/location/GpsStatus$NmeaListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/GpsStatus$NmeaListener;)V

    .line 342
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 4

    .line 240
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 241
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 242
    return-void

    .line 245
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    if-nez v0, :cond_1

    .line 246
    return-void

    .line 249
    :cond_1
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 251
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$4;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    .line 265
    return-void
.end method

.method public final enable()V
    .locals 4

    .line 201
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 202
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 203
    return-void

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 207
    const-string v0, "Looper is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 208
    return-void

    .line 211
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    if-eqz v0, :cond_2

    .line 212
    return-void

    .line 215
    :cond_2
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 216
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    .line 217
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mSatelliteCount:I

    .line 219
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 220
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 222
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager$3;-><init>(Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 234
    return-void
.end method

.method public final initializeManager(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 94
    if-nez p1, :cond_0

    .line 95
    return-void

    .line 98
    :cond_0
    nop

    .line 99
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    .line 101
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    .line 102
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 105
    :cond_1
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    const/high16 v1, 0x447a0000    # 1000.0f

    invoke-direct {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>(F)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsInfo:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 106
    new-instance v0, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    invoke-direct {v0}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mEnable:Z

    .line 109
    return-void
.end method

.method public final notifyPassiveCurrentPositionObserver(Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;)V
    .locals 16
    .param p1, "position"    # Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 305
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    if-nez v1, :cond_0

    .line 306
    return-void

    .line 309
    :cond_0
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mPrePosition:Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;

    .line 310
    iget-object v2, v0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getType()I

    move-result v3

    .line 311
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getUtcTime()[I

    move-result-object v4

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLatitude()D

    move-result-wide v5

    .line 312
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getLongitude()D

    move-result-wide v7

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAltitude()D

    move-result-wide v9

    .line 313
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getDistance()D

    move-result-wide v11

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSpeed()F

    move-result v13

    .line 314
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getAccuracy()F

    move-result v14

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/utilbundle/PositionContextBean;->getSatelliteCount()I

    move-result v15

    .line 310
    invoke-interface/range {v2 .. v15}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;->updatePassiveCurrentPosition(I[IDDDDFFI)V

    .line 315
    return-void
.end method

.method public final registerPassiveCurrentPositionObserver(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;)V
    .locals 0
    .param p1, "observer"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    .line 278
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    .line 279
    return-void
.end method

.method public final terminateManager()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    if-nez v0, :cond_0

    .line 120
    const-string v0, "mGpsManager is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 121
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mGpsListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 124
    return-void
.end method

.method public final unregisterPassiveCurrentPositionObserver()V
    .locals 1

    .line 290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPassiveCurrentPositionManager;->mListener:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/IPassiveCurrrentPositionObserver;

    .line 291
    return-void
.end method
