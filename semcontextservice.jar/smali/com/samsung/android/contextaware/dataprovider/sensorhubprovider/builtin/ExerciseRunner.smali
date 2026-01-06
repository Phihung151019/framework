.class public Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
.super Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ExerciseRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;
    }
.end annotation


# static fields
.field private static final DATA_TYPE_BATCH:B = 0x0t

.field private static final DATA_TYPE_GPS_STATUS:B = 0x1t


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastGpsEnabled:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensorType:I

.field private mTotalPedoDistance:D

.field private mTotalStepCount:J

.field private startTimeStamp:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastGpsEnabled(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastGpsEnabled(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$misGpsEnabled(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->isGpsEnabled()Z

    move-result p0

    return p0
.end method

.method public constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 5
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 52
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    .line 53
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    .line 55
    iput-wide v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->startTimeStamp:J

    .line 80
    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    .line 82
    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    .line 534
    new-instance v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$1;-><init>(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;)V

    iput-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    iput-object p2, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    .line 99
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;BBB[B)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;
    .param p1, "x1"    # B
    .param p2, "x2"    # B
    .param p3, "x3"    # B
    .param p4, "x4"    # [B

    .line 47
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v0

    return v0
.end method

.method private isGpsEnabled()Z
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 559
    .local v0, "manager":Landroid/location/LocationManager;
    if-eqz v0, :cond_0

    .line 560
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v1

    return v1

    .line 562
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public final clear()V
    .locals 2

    .line 500
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 502
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    .line 503
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    .line 505
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 506
    return-void
.end method

.method public final disable()V
    .locals 2

    .line 486
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 488
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 490
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 491
    return-void
.end method

.method public final enable()V
    .locals 4

    .line 466
    invoke-static {}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 468
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->isGpsEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mLastGpsEnabled:Z

    .line 469
    iget-object v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.location.PROVIDERS_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 472
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->startTimeStamp:J

    .line 474
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 475
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .line 109
    sget-object v0, Lcom/samsung/android/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_EXERCISE:Lcom/samsung/android/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Lcom/samsung/android/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 13

    .line 144
    const-string v11, "TotalStepCount"

    const-string v12, "TotalPedoDistance"

    const-string v0, "TimeStampArray"

    const-string v1, "DataCount"

    const-string v2, "LatitudeArray"

    const-string v3, "LongitudeArray"

    const-string v4, "AltitudeArray"

    const-string v5, "PressureArray"

    const-string v6, "StepCountDiffArray"

    const-string v7, "PedoDistanceDiffArray"

    const-string v8, "PedoSpeedArray"

    const-string v9, "SpeedArray"

    const-string v10, "GpsStatus"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 2

    .line 132
    iget v0, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .line 529
    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 530
    invoke-super {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .line 120
    const/16 v0, 0x2e

    return v0
.end method

.method protected final getPowerObserver()Lcom/samsung/android/contextaware/manager/IApPowerObserver;
    .locals 0

    .line 442
    return-object p0
.end method

.method protected final getPowerResetObserver()Lcom/samsung/android/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .line 454
    return-object p0
.end method

.method protected final getTimeChangeObserver()Lcom/samsung/android/contextaware/utilbundle/ITimeChangeObserver;
    .locals 0

    .line 516
    return-object p0
.end method

.method public final parse([BI)I
    .locals 50
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .line 213
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 215
    .local v2, "tmpNext":I
    invoke-virtual {v0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    .line 218
    .local v3, "names":[Ljava/lang/String;
    array-length v4, v1

    sub-int/2addr v4, v2

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    const/4 v6, -0x1

    if-gez v4, :cond_0

    .line 219
    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 220
    return v6

    .line 223
    :cond_0
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v2, v1, v2

    .line 225
    .local v2, "dataType":I
    if-nez v2, :cond_7

    .line 228
    array-length v7, v1

    sub-int/2addr v7, v4

    const/4 v8, 0x6

    sub-int/2addr v7, v8

    if-gez v7, :cond_1

    .line 229
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 230
    return v6

    .line 234
    :cond_1
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "tmpNext":I
    .local v7, "tmpNext":I
    aget-byte v4, v1, v4

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "tmpNext":I
    .local v9, "tmpNext":I
    aget-byte v7, v1, v7

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .local v10, "tmpNext":I
    aget-byte v9, v1, v9

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "tmpNext":I
    .local v11, "tmpNext":I
    aget-byte v10, v1, v10

    const/16 v12, 0x8

    new-array v13, v12, [B

    const/4 v14, 0x0

    aput-byte v14, v13, v14

    aput-byte v14, v13, v5

    const/4 v15, 0x2

    aput-byte v14, v13, v15

    const/16 v16, 0x3

    aput-byte v14, v13, v16

    move/from16 v17, v6

    const/4 v6, 0x4

    aput-byte v4, v13, v6

    const/4 v4, 0x5

    aput-byte v7, v13, v4

    aput-byte v9, v13, v8

    const/4 v7, 0x7

    aput-byte v10, v13, v7

    .line 235
    invoke-static {v13}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 244
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v9

    .line 246
    .local v9, "baseTimeStamp":J
    move/from16 v18, v7

    move v13, v8

    iget-wide v7, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->startTimeStamp:J

    const-wide/16 v19, 0x3e8

    add-long v7, v7, v19

    add-long/2addr v9, v7

    .line 249
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "tmpNext":I
    .restart local v7    # "tmpNext":I
    aget-byte v8, v1, v11

    add-int/lit8 v11, v7, 0x1

    .end local v7    # "tmpNext":I
    .restart local v11    # "tmpNext":I
    aget-byte v7, v1, v7

    move/from16 v21, v4

    new-array v4, v6, [B

    aput-byte v14, v4, v14

    aput-byte v14, v4, v5

    aput-byte v8, v4, v15

    aput-byte v7, v4, v16

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 254
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 256
    .local v4, "dataSize":I
    if-gtz v4, :cond_2

    .line 257
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 258
    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 259
    return v17

    .line 263
    :cond_2
    array-length v7, v1

    sub-int/2addr v7, v11

    mul-int/lit8 v8, v4, 0x15

    sub-int/2addr v7, v8

    if-gez v7, :cond_3

    .line 264
    sget-object v5, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v5}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 265
    return v17

    .line 270
    :cond_3
    new-array v7, v4, [J

    .line 271
    .local v7, "timeStamp":[J
    new-array v8, v4, [D

    .line 272
    .local v8, "latitude":[D
    move/from16 v22, v13

    new-array v13, v4, [D

    .line 273
    .local v13, "longitude":[D
    move/from16 v23, v14

    new-array v14, v4, [F

    .line 274
    .local v14, "altitude":[F
    move/from16 v24, v15

    new-array v15, v4, [F

    .line 275
    .local v15, "pressure":[F
    move/from16 v25, v5

    new-array v5, v4, [J

    .line 276
    .local v5, "stepCountDiff":[J
    move/from16 v26, v6

    new-array v6, v4, [D

    .line 277
    .local v6, "pedoDistanceDiff":[D
    new-array v12, v4, [D

    .line 278
    .local v12, "pedoSpeed":[D
    move-object/from16 v28, v3

    .end local v3    # "names":[Ljava/lang/String;
    .local v28, "names":[Ljava/lang/String;
    new-array v3, v4, [F

    .line 280
    .local v3, "speed":[F
    const/16 v29, 0x0

    move-wide/from16 v48, v9

    move/from16 v9, v29

    move-wide/from16 v29, v48

    .local v9, "i":I
    .local v29, "baseTimeStamp":J
    :goto_0
    if-ge v9, v4, :cond_6

    .line 283
    move/from16 v31, v11

    .end local v11    # "tmpNext":I
    .local v31, "tmpNext":I
    int-to-long v10, v9

    mul-long v10, v10, v19

    add-long v10, v10, v29

    aput-wide v10, v7, v9

    .line 286
    add-int/lit8 v11, v31, 0x1

    .end local v31    # "tmpNext":I
    .restart local v11    # "tmpNext":I
    aget-byte v10, v1, v31

    .line 287
    .local v10, "byte1":B
    add-int/lit8 v31, v11, 0x1

    .end local v11    # "tmpNext":I
    .restart local v31    # "tmpNext":I
    aget-byte v11, v1, v11

    .line 288
    .local v11, "byte2":B
    add-int/lit8 v32, v31, 0x1

    .end local v31    # "tmpNext":I
    .local v32, "tmpNext":I
    aget-byte v31, v1, v31

    .line 289
    .local v31, "byte3":B
    add-int/lit8 v33, v32, 0x1

    .end local v32    # "tmpNext":I
    .local v33, "tmpNext":I
    aget-byte v32, v1, v32

    .line 291
    .local v32, "byte4":B
    add-int/lit8 v34, v33, 0x1

    .end local v33    # "tmpNext":I
    .local v34, "tmpNext":I
    aget-byte v33, v1, v33

    .line 293
    .local v33, "midByte":B
    move/from16 v35, v9

    .end local v9    # "i":I
    .local v35, "i":I
    and-int/lit16 v9, v10, 0x80

    move/from16 v36, v10

    .end local v10    # "byte1":B
    .local v36, "byte1":B
    const/16 v10, 0x80

    if-ne v9, v10, :cond_4

    .line 294
    const/16 v9, 0x8

    new-array v10, v9, [B

    aput-byte v17, v10, v23

    aput-byte v17, v10, v25

    aput-byte v17, v10, v24

    aput-byte v36, v10, v16

    aput-byte v11, v10, v26

    aput-byte v31, v10, v21

    aput-byte v32, v10, v22

    aput-byte v33, v10, v18

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 303
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v9

    shr-long v9, v9, v26

    .local v9, "lat":J
    goto :goto_1

    .line 305
    .end local v9    # "lat":J
    :cond_4
    const/16 v9, 0x8

    new-array v10, v9, [B

    aput-byte v23, v10, v23

    aput-byte v23, v10, v25

    aput-byte v23, v10, v24

    aput-byte v36, v10, v16

    aput-byte v11, v10, v26

    aput-byte v31, v10, v21

    aput-byte v32, v10, v22

    aput-byte v33, v10, v18

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v9

    .line 314
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v9

    shr-long v9, v9, v26

    .line 317
    .restart local v9    # "lat":J
    :goto_1
    move/from16 v37, v2

    .end local v2    # "dataType":I
    .local v37, "dataType":I
    long-to-double v1, v9

    const-wide v38, 0x4197d78400000000L    # 1.0E8

    div-double v1, v1, v38

    aput-wide v1, v8, v35

    .line 320
    add-int/lit8 v1, v34, 0x1

    .end local v34    # "tmpNext":I
    .local v1, "tmpNext":I
    aget-byte v2, p1, v34

    .line 321
    .end local v36    # "byte1":B
    .local v2, "byte1":B
    add-int/lit8 v34, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v34    # "tmpNext":I
    aget-byte v1, p1, v1

    .line 322
    .end local v11    # "byte2":B
    .local v1, "byte2":B
    add-int/lit8 v11, v34, 0x1

    .end local v34    # "tmpNext":I
    .local v11, "tmpNext":I
    aget-byte v31, p1, v34

    .line 323
    add-int/lit8 v34, v11, 0x1

    .end local v11    # "tmpNext":I
    .restart local v34    # "tmpNext":I
    aget-byte v11, p1, v11

    .line 325
    .end local v32    # "byte4":B
    .local v11, "byte4":B
    move/from16 v32, v1

    .end local v1    # "byte2":B
    .local v32, "byte2":B
    and-int/lit8 v1, v33, 0x8

    move/from16 v36, v2

    const/16 v2, 0x8

    .end local v2    # "byte1":B
    .restart local v36    # "byte1":B
    if-ne v1, v2, :cond_5

    .line 326
    and-int/lit8 v1, v33, 0xf

    or-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    move/from16 v40, v1

    new-array v1, v2, [B

    aput-byte v17, v1, v23

    aput-byte v17, v1, v25

    aput-byte v17, v1, v24

    aput-byte v40, v1, v16

    aput-byte v36, v1, v26

    aput-byte v32, v1, v21

    aput-byte v31, v1, v22

    aput-byte v11, v1, v18

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 335
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    move-wide/from16 v48, v1

    move-object v1, v3

    move-wide/from16 v2, v48

    .local v1, "lon":J
    goto :goto_2

    .line 338
    .end local v1    # "lon":J
    :cond_5
    and-int/lit8 v1, v33, 0xf

    int-to-byte v1, v1

    move/from16 v27, v1

    const/16 v2, 0x8

    new-array v1, v2, [B

    aput-byte v23, v1, v23

    aput-byte v23, v1, v25

    aput-byte v23, v1, v24

    aput-byte v27, v1, v16

    aput-byte v36, v1, v26

    aput-byte v32, v1, v21

    aput-byte v31, v1, v22

    aput-byte v11, v1, v18

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 347
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v40

    move-object v1, v3

    move-wide/from16 v2, v40

    .line 349
    .end local v3    # "speed":[F
    .local v1, "speed":[F
    .local v2, "lon":J
    :goto_2
    move-wide/from16 v40, v9

    .end local v9    # "lat":J
    .local v40, "lat":J
    long-to-double v9, v2

    div-double v9, v9, v38

    aput-wide v9, v13, v35

    .line 352
    add-int/lit8 v9, v34, 0x1

    .end local v34    # "tmpNext":I
    .local v9, "tmpNext":I
    aget-byte v10, p1, v34

    add-int/lit8 v34, v9, 0x1

    .end local v9    # "tmpNext":I
    .restart local v34    # "tmpNext":I
    aget-byte v9, p1, v9

    add-int/lit8 v38, v34, 0x1

    .end local v34    # "tmpNext":I
    .local v38, "tmpNext":I
    aget-byte v34, p1, v34

    move-object/from16 v39, v1

    move-wide/from16 v42, v2

    move/from16 v1, v26

    .end local v1    # "speed":[F
    .end local v2    # "lon":J
    .local v39, "speed":[F
    .local v42, "lon":J
    new-array v2, v1, [B

    aput-byte v23, v2, v23

    aput-byte v10, v2, v25

    aput-byte v9, v2, v24

    aput-byte v34, v2, v16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 357
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v9

    double-to-float v1, v1

    aput v1, v14, v35

    .line 360
    add-int/lit8 v1, v38, 0x1

    .end local v38    # "tmpNext":I
    .local v1, "tmpNext":I
    aget-byte v2, p1, v38

    add-int/lit8 v3, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v1, p1, v1

    add-int/lit8 v34, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v34    # "tmpNext":I
    aget-byte v3, p1, v3

    move-wide/from16 v44, v9

    const/4 v9, 0x4

    new-array v10, v9, [B

    aput-byte v23, v10, v23

    aput-byte v2, v10, v25

    aput-byte v1, v10, v24

    aput-byte v3, v10, v16

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 365
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-double v1, v1

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v1, v9

    double-to-float v1, v1

    aput v1, v15, v35

    .line 368
    iget-wide v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    add-int/lit8 v3, v34, 0x1

    .end local v34    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v9, p1, v34

    int-to-long v9, v9

    add-long/2addr v1, v9

    iput-wide v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    .line 369
    iget-wide v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalStepCount:J

    aput-wide v1, v5, v35

    .line 372
    iget-wide v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    add-int/lit8 v9, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v9    # "tmpNext":I
    aget-byte v3, p1, v3

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "tmpNext":I
    .local v10, "tmpNext":I
    aget-byte v9, p1, v9

    move-wide/from16 v46, v1

    const/4 v1, 0x4

    new-array v2, v1, [B

    aput-byte v23, v2, v23

    aput-byte v23, v2, v25

    aput-byte v3, v2, v24

    aput-byte v9, v2, v16

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-double v1, v1

    div-double v1, v1, v44

    add-double v1, v46, v1

    iput-wide v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    .line 378
    iget-wide v1, v0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mTotalPedoDistance:D

    aput-wide v1, v6, v35

    .line 381
    add-int/lit8 v1, v10, 0x1

    .end local v10    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    aget-byte v2, p1, v10

    .line 382
    .end local v36    # "byte1":B
    .local v2, "byte1":B
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v1, p1, v1

    .line 383
    .end local v33    # "midByte":B
    .local v1, "midByte":B
    const/4 v9, 0x4

    new-array v10, v9, [B

    aput-byte v23, v10, v23

    aput-byte v23, v10, v25

    aput-byte v2, v10, v24

    aput-byte v1, v10, v16

    invoke-static {v10}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 388
    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v10

    shr-int/2addr v10, v9

    int-to-double v9, v10

    div-double v9, v9, v44

    aput-wide v9, v12, v35

    .line 391
    and-int/lit8 v9, v1, 0xf

    int-to-byte v9, v9

    add-int/lit8 v10, v3, 0x1

    .end local v3    # "tmpNext":I
    .restart local v10    # "tmpNext":I
    aget-byte v3, p1, v3

    move/from16 v26, v1

    const/4 v0, 0x4

    .end local v1    # "midByte":B
    .local v26, "midByte":B
    new-array v1, v0, [B

    aput-byte v23, v1, v23

    aput-byte v23, v1, v25

    aput-byte v9, v1, v24

    aput-byte v3, v1, v16

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 396
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v1

    int-to-double v0, v1

    div-double v0, v0, v44

    double-to-float v0, v0

    aput v0, v39, v35

    .line 280
    add-int/lit8 v0, v35, 0x1

    move-object/from16 v1, p1

    move v9, v0

    move v11, v10

    move/from16 v2, v37

    move-object/from16 v3, v39

    const/16 v26, 0x4

    move-object/from16 v0, p0

    .end local v35    # "i":I
    .local v0, "i":I
    goto/16 :goto_0

    .end local v0    # "i":I
    .end local v10    # "tmpNext":I
    .end local v26    # "midByte":B
    .end local v31    # "byte3":B
    .end local v32    # "byte2":B
    .end local v37    # "dataType":I
    .end local v39    # "speed":[F
    .end local v40    # "lat":J
    .end local v42    # "lon":J
    .local v2, "dataType":I
    .local v3, "speed":[F
    .local v9, "i":I
    .local v11, "tmpNext":I
    :cond_6
    move/from16 v37, v2

    move-object/from16 v39, v3

    move/from16 v35, v9

    move/from16 v31, v11

    .line 399
    .end local v2    # "dataType":I
    .end local v3    # "speed":[F
    .end local v9    # "i":I
    .end local v11    # "tmpNext":I
    .local v31, "tmpNext":I
    .restart local v37    # "dataType":I
    .restart local v39    # "speed":[F
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->TimeStamp:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v1

    aget-object v1, v28, v1

    invoke-virtual {v0, v1, v7}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 400
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->DataCount:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v1

    aget-object v1, v28, v1

    invoke-virtual {v0, v1, v4}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 401
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Latitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v1

    aget-object v1, v28, v1

    invoke-virtual {v0, v1, v8}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 402
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Longitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v1

    aget-object v1, v28, v1

    invoke-virtual {v0, v1, v13}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 403
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Altitude:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v1

    aget-object v1, v28, v1

    invoke-virtual {v0, v1, v14}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 404
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Pressure:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v1

    aget-object v1, v28, v1

    invoke-virtual {v0, v1, v15}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 405
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->StepCountDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v1

    aget-object v1, v28, v1

    invoke-virtual {v0, v1, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[J)V

    .line 406
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoDistanceDiff:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v1

    aget-object v1, v28, v1

    invoke-virtual {v0, v1, v6}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 407
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->PedoSpeed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v1

    aget-object v1, v28, v1

    invoke-virtual {v0, v1, v12}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[D)V

    .line 408
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->Speed:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v1

    aget-object v1, v28, v1

    move-object/from16 v2, v39

    .end local v39    # "speed":[F
    .local v2, "speed":[F
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;[F)V

    .line 410
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 412
    .end local v2    # "speed":[F
    .end local v4    # "dataSize":I
    .end local v5    # "stepCountDiff":[J
    .end local v6    # "pedoDistanceDiff":[D
    .end local v7    # "timeStamp":[J
    .end local v8    # "latitude":[D
    .end local v12    # "pedoSpeed":[D
    .end local v13    # "longitude":[D
    .end local v14    # "altitude":[F
    .end local v15    # "pressure":[F
    .end local v29    # "baseTimeStamp":J
    move-object/from16 v2, p1

    move/from16 v0, v37

    goto :goto_3

    .end local v28    # "names":[Ljava/lang/String;
    .end local v31    # "tmpNext":I
    .end local v37    # "dataType":I
    .local v2, "dataType":I
    .local v3, "names":[Ljava/lang/String;
    .local v4, "tmpNext":I
    :cond_7
    move/from16 v37, v2

    move-object/from16 v28, v3

    move/from16 v25, v5

    move/from16 v17, v6

    .end local v2    # "dataType":I
    .end local v3    # "names":[Ljava/lang/String;
    .restart local v28    # "names":[Ljava/lang/String;
    .restart local v37    # "dataType":I
    move/from16 v1, v25

    move/from16 v0, v37

    .end local v37    # "dataType":I
    .local v0, "dataType":I
    if-ne v0, v1, :cond_9

    .line 415
    move-object/from16 v2, p1

    array-length v3, v2

    sub-int/2addr v3, v4

    sub-int/2addr v3, v1

    if-gez v3, :cond_8

    .line 416
    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 417
    return v17

    .line 420
    :cond_8
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v11    # "tmpNext":I
    aget-byte v1, v2, v4

    .line 422
    .local v1, "gpsStatus":B
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Lcom/samsung/android/contextaware/manager/ContextBean;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->GpsStatus:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;

    invoke-static {v4}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;->-$$Nest$fgetval(Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner$ContextName;)B

    move-result v4

    aget-object v4, v28, v4

    int-to-short v5, v1

    invoke-virtual {v3, v4, v5}, Lcom/samsung/android/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;S)V

    .line 424
    invoke-super/range {p0 .. p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    .line 425
    .end local v1    # "gpsStatus":B
    nop

    .line 431
    :goto_3
    return v11

    .line 426
    .end local v11    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_9
    move-object/from16 v2, p1

    sget-object v1, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_DATA_FIELD_PARSING:Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    .line 427
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 426
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 428
    return v17
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

    .line 170
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 171
    .local v0, "result":Z
    const/16 v1, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    .line 172
    move-object v1, p2

    check-cast v1, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;

    .line 173
    invoke-virtual {v1}, Lcom/samsung/android/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 172
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 174
    .local v1, "dataType":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exercise data type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 175
    iget v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    or-int/2addr v4, v1

    iput v4, p0, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->mSensorType:I

    .line 186
    nop

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->isGpsEnabled()Z

    move-result v4

    if-ne v4, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    int-to-byte v4, v4

    new-array v3, v3, [B

    aput-byte v4, v3, v2

    .line 186
    const/16 v2, 0x17

    const/16 v4, 0x2e

    const/16 v5, 0x25

    invoke-virtual {p0, v2, v4, v5, v3}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    .line 191
    .end local v1    # "dataType":I
    goto :goto_1

    :cond_1
    if-nez p1, :cond_2

    .line 192
    const/4 v1, 0x2

    new-array v1, v1, [B

    .line 193
    .local v1, "packet":[B
    aput-byte v3, v1, v2

    .line 194
    aput-byte v2, v1, v3

    .line 196
    const/16 v2, -0x48

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->getInstLibType()B

    move-result v3

    invoke-virtual {p0, v2, v3, v1}, Lcom/samsung/android/contextaware/dataprovider/sensorhubprovider/builtin/ExerciseRunner;->sendCmdToSensorHub(BB[B)V

    .line 198
    .end local v1    # "packet":[B
    goto :goto_1

    .line 199
    :cond_2
    const/4 v0, 0x0

    .line 201
    :goto_1
    return v0
.end method
