.class Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;
.super Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;
.source "PedometerInvenImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;,
        Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    }
.end annotation


# static fields
.field private static final LOGGING_MAX_TIME:J = 0x124f80L

.field private static final PATH_BOSCH_SHEALTH_ENABLE:Ljava/lang/String; = "/shealth_enable"

.field private static final PATH_CADENCE:Ljava/lang/String; = "/shealth_cadence"

.field private static final PATH_CADENCE_ENABLE:Ljava/lang/String; = "/shealth_cadence_enable"

.field private static final PATH_CADENCE_INTERRUPT:Ljava/lang/String; = "/event_shealth_int"

.field private static final PATH_FLUSH_CADENCE:Ljava/lang/String; = "/shealth_flush_cadence"

.field private static final PATH_PREFIX:Ljava/lang/String; = "/sys/bus/iio/devices/iio:device"

.field private static final PATH_STEPCOUNT:Ljava/lang/String; = "/pedometer_steps"

.field private static final TAG:Ljava/lang/String; = "SemContext.MiscProvider.PedometerInvenImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEventThread:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;

.field private final mIsBarometerAvailable:Z

.field private mIsStarted:Z

.field private final mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

.field private mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

.field private mPedometerEngine:Lcom/samsung/android/hardware/context/lib/PedometerEngine;

.field private final mPrefix:Ljava/lang/String;

.field private mPrevInterrupt:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

.field private mPrevStepCnt:J

.field private mSensor:Landroid/hardware/Sensor;

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimeStamp:[J


# direct methods
.method static bridge synthetic -$$Nest$fgetmIsStarted(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefix(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTimeStamp(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)[J
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmPrevInterrupt(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    return-void
.end method

.method static bridge synthetic -$$Nest$mparseCadence(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->parseCadence(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    .line 63
    new-instance v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$1;-><init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Lcom/samsung/android/hardware/context/lib/PedometerEngine;

    .line 81
    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mEventThread:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    .line 84
    sget-object v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->UNKNOWN:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    .line 88
    iput-object p2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 89
    new-instance v0, Lcom/samsung/android/hardware/context/lib/PedometerEngine;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/lib/PedometerEngine;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Lcom/samsung/android/hardware/context/lib/PedometerEngine;

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 91
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.sensor.barometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mIsBarometerAvailable:Z

    .line 92
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mContext:Landroid/content/Context;

    .line 93
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->getDeviceNode()I

    move-result v1

    .line 94
    .local v1, "node":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sys/bus/iio/devices/iio:device"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    .line 95
    const-string v2, "SemContext.MiscProvider.PedometerInvenImpl"

    const-string v3, "SensorManager is initialized()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return-void

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private getCalculatedData(I[J[JIJ[J)Landroid/os/Bundle;
    .locals 36
    .param p1, "mode"    # I
    .param p2, "walkCadence"    # [J
    .param p3, "runCadence"    # [J
    .param p4, "dataSize"    # I
    .param p5, "interval"    # J
    .param p7, "timeStampArray"    # [J

    .line 231
    move-object/from16 v0, p0

    move/from16 v5, p4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 233
    .local v1, "context":Landroid/os/Bundle;
    new-array v10, v5, [J

    .line 234
    .local v10, "totalStepCountArray":[J
    new-array v8, v5, [J

    .line 235
    .local v8, "walkFlatStepCountArray":[J
    new-array v2, v5, [J

    .line 236
    .local v2, "walkUpStepCountArray":[J
    new-array v3, v5, [J

    .line 237
    .local v3, "walkDownStepCountArray":[J
    new-array v9, v5, [J

    .line 238
    .local v9, "runFlatStepCountArray":[J
    new-array v4, v5, [J

    .line 239
    .local v4, "runUpStepCountArray":[J
    new-array v6, v5, [J

    .line 240
    .local v6, "runDownStepCountArray":[J
    new-array v11, v5, [D

    .line 241
    .local v11, "calorieArray":[D
    new-array v12, v5, [D

    .line 242
    .local v12, "distanceArray":[D
    new-array v13, v5, [D

    .line 243
    .local v13, "speedArray":[D
    const/4 v7, 0x1

    new-array v14, v7, [J

    const/16 v21, 0x0

    const-wide/16 v15, 0x0

    aput-wide v15, v14, v21

    .line 244
    .local v14, "totalStepCountTemp":[J
    move-wide/from16 v17, v15

    new-array v15, v7, [J

    aput-wide v17, v15, v21

    .line 245
    .local v15, "walkFlatStepCountTemp":[J
    move-object/from16 v16, v1

    .end local v1    # "context":Landroid/os/Bundle;
    .local v16, "context":Landroid/os/Bundle;
    new-array v1, v7, [J

    aput-wide v17, v1, v21

    move-object/from16 v22, v1

    .line 246
    .local v22, "walkUpStepCountTemp":[J
    new-array v1, v7, [J

    aput-wide v17, v1, v21

    move-object/from16 v23, v1

    .line 247
    .local v23, "walkDownStepCountTemp":[J
    new-array v1, v7, [J

    aput-wide v17, v1, v21

    .line 248
    .local v1, "runFlatStepCountTemp":[J
    move-object/from16 v19, v1

    .end local v1    # "runFlatStepCountTemp":[J
    .local v19, "runFlatStepCountTemp":[J
    new-array v1, v7, [J

    aput-wide v17, v1, v21

    move-object/from16 v24, v1

    .line 249
    .local v24, "runUpStepCountTemp":[J
    new-array v1, v7, [J

    aput-wide v17, v1, v21

    move-object/from16 v25, v1

    .line 250
    .local v25, "runDownStepCountTemp":[J
    new-array v1, v7, [D

    const-wide/16 v17, 0x0

    aput-wide v17, v1, v21

    .line 251
    .local v1, "calorieTemp":[D
    move-object/from16 v20, v1

    .end local v1    # "calorieTemp":[D
    .local v20, "calorieTemp":[D
    new-array v1, v7, [D

    aput-wide v17, v1, v21

    .line 252
    .local v1, "distanceTemp":[D
    move-object/from16 v26, v1

    .end local v1    # "distanceTemp":[D
    .local v26, "distanceTemp":[D
    new-array v1, v7, [D

    aput-wide v17, v1, v21

    .line 253
    .local v1, "walkingFrequencyTemp":[D
    filled-new-array/range {v21 .. v21}, [I

    move-result-object v17

    .line 255
    .local v17, "statusTemp":[I
    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v6

    move-object/from16 v27, v16

    move/from16 v2, p1

    move-object/from16 v16, v14

    move-object v14, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v1

    goto/16 :goto_0

    .line 258
    :cond_0
    iget-boolean v7, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mIsBarometerAvailable:Z

    if-nez v7, :cond_1

    .line 259
    move-object/from16 v7, v16

    move-object/from16 v16, v14

    move-object v14, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v1

    .end local v1    # "walkingFrequencyTemp":[D
    .local v7, "context":Landroid/os/Bundle;
    .local v14, "walkFlatStepCountTemp":[J
    .local v15, "runFlatStepCountTemp":[J
    .local v16, "totalStepCountTemp":[J
    .local v17, "calorieTemp":[D
    .local v19, "statusTemp":[I
    .local v20, "walkingFrequencyTemp":[D
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Lcom/samsung/android/hardware/context/lib/PedometerEngine;

    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v6

    move-object/from16 v27, v7

    move-object/from16 v18, v26

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v6, p5

    .end local v2    # "walkUpStepCountArray":[J
    .end local v3    # "walkDownStepCountArray":[J
    .end local v4    # "runUpStepCountArray":[J
    .end local v6    # "runDownStepCountArray":[J
    .end local v7    # "context":Landroid/os/Bundle;
    .end local v26    # "distanceTemp":[D
    .local v18, "distanceTemp":[D
    .local v27, "context":Landroid/os/Bundle;
    .local v28, "walkUpStepCountArray":[J
    .local v29, "walkDownStepCountArray":[J
    .local v30, "runUpStepCountArray":[J
    .local v31, "runDownStepCountArray":[J
    invoke-virtual/range {v1 .. v20}, Lcom/samsung/android/hardware/context/lib/PedometerEngine;->native_Pedometer_getCalculate_data(I[J[JIJ[J[J[J[D[D[D[J[J[J[D[D[I[D)V

    .end local v18    # "distanceTemp":[D
    .restart local v26    # "distanceTemp":[D
    goto :goto_1

    .line 258
    .end local v27    # "context":Landroid/os/Bundle;
    .end local v28    # "walkUpStepCountArray":[J
    .end local v29    # "walkDownStepCountArray":[J
    .end local v30    # "runUpStepCountArray":[J
    .end local v31    # "runDownStepCountArray":[J
    .restart local v1    # "walkingFrequencyTemp":[D
    .restart local v2    # "walkUpStepCountArray":[J
    .restart local v3    # "walkDownStepCountArray":[J
    .restart local v4    # "runUpStepCountArray":[J
    .restart local v6    # "runDownStepCountArray":[J
    .local v14, "totalStepCountTemp":[J
    .local v15, "walkFlatStepCountTemp":[J
    .local v16, "context":Landroid/os/Bundle;
    .local v17, "statusTemp":[I
    .local v19, "runFlatStepCountTemp":[J
    .local v20, "calorieTemp":[D
    :cond_1
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v6

    move-object/from16 v27, v16

    move/from16 v2, p1

    move-object/from16 v16, v14

    move-object v14, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v1

    .end local v1    # "walkingFrequencyTemp":[D
    .end local v2    # "walkUpStepCountArray":[J
    .end local v3    # "walkDownStepCountArray":[J
    .end local v4    # "runUpStepCountArray":[J
    .end local v6    # "runDownStepCountArray":[J
    .local v14, "walkFlatStepCountTemp":[J
    .local v15, "runFlatStepCountTemp":[J
    .local v16, "totalStepCountTemp":[J
    .local v17, "calorieTemp":[D
    .local v19, "statusTemp":[I
    .local v20, "walkingFrequencyTemp":[D
    .restart local v27    # "context":Landroid/os/Bundle;
    .restart local v28    # "walkUpStepCountArray":[J
    .restart local v29    # "walkDownStepCountArray":[J
    .restart local v30    # "runUpStepCountArray":[J
    .restart local v31    # "runDownStepCountArray":[J
    goto :goto_1

    .line 255
    .end local v27    # "context":Landroid/os/Bundle;
    .end local v28    # "walkUpStepCountArray":[J
    .end local v29    # "walkDownStepCountArray":[J
    .end local v30    # "runUpStepCountArray":[J
    .end local v31    # "runDownStepCountArray":[J
    .restart local v1    # "walkingFrequencyTemp":[D
    .restart local v2    # "walkUpStepCountArray":[J
    .restart local v3    # "walkDownStepCountArray":[J
    .restart local v4    # "runUpStepCountArray":[J
    .restart local v6    # "runDownStepCountArray":[J
    .local v14, "totalStepCountTemp":[J
    .local v15, "walkFlatStepCountTemp":[J
    .local v16, "context":Landroid/os/Bundle;
    .local v17, "statusTemp":[I
    .local v19, "runFlatStepCountTemp":[J
    .local v20, "calorieTemp":[D
    :cond_2
    move-object/from16 v28, v2

    move-object/from16 v29, v3

    move-object/from16 v30, v4

    move-object/from16 v31, v6

    move-object/from16 v27, v16

    move/from16 v2, p1

    move-object/from16 v16, v14

    move-object v14, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v1

    .line 256
    .end local v1    # "walkingFrequencyTemp":[D
    .end local v2    # "walkUpStepCountArray":[J
    .end local v3    # "walkDownStepCountArray":[J
    .end local v4    # "runUpStepCountArray":[J
    .end local v6    # "runDownStepCountArray":[J
    .local v14, "walkFlatStepCountTemp":[J
    .local v15, "runFlatStepCountTemp":[J
    .local v16, "totalStepCountTemp":[J
    .local v17, "calorieTemp":[D
    .local v19, "statusTemp":[I
    .local v20, "walkingFrequencyTemp":[D
    .restart local v27    # "context":Landroid/os/Bundle;
    .restart local v28    # "walkUpStepCountArray":[J
    .restart local v29    # "walkDownStepCountArray":[J
    .restart local v30    # "runUpStepCountArray":[J
    .restart local v31    # "runDownStepCountArray":[J
    :goto_0
    aput v21, v19, v21

    .line 267
    :goto_1
    aget v1, v19, v21

    if-eqz v1, :cond_6

    .line 268
    if-nez v2, :cond_3

    .line 269
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/samsung/android/hardware/context/util/PedoHistory;->updateBufferIndex(I)V

    .line 270
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v6, v16, v21

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putTotalStepInfoSingle(J)V

    .line 271
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v6, v14, v21

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putWalkStepInfoSingle(J)V

    .line 272
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v6, v22, v21

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putWalkUpStepInfoSingle(J)V

    .line 273
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v6, v23, v21

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putWalkDnStepInfoSingle(J)V

    .line 274
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v6, v15, v21

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putRunStepInfoSingle(J)V

    .line 275
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v6, v24, v21

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putRunUpStepInfoSingle(J)V

    .line 276
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v6, v25, v21

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putRunDnStepInfoSingle(J)V

    .line 277
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v6, v17, v21

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putCalorieInfoSingle(D)V

    .line 278
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v6, v26, v21

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putDistanceInfoSingle(D)V

    .line 279
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v6, v13, v21

    invoke-virtual {v1, v6, v7}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putSpeedInfoSingle(D)V

    move-object/from16 v6, p7

    move-object v7, v14

    move-object/from16 v18, v15

    goto/16 :goto_3

    .line 280
    :cond_3
    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 281
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v5, :cond_4

    .line 282
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/samsung/android/hardware/context/util/PedoHistory;->updateBufferIndex(I)V

    .line 283
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    move-object/from16 v6, p7

    move-object v7, v14

    move-object/from16 v18, v15

    .end local v14    # "walkFlatStepCountTemp":[J
    .end local v15    # "runFlatStepCountTemp":[J
    .local v7, "walkFlatStepCountTemp":[J
    .local v18, "runFlatStepCountTemp":[J
    aget-wide v14, v6, v1

    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putTimestamp(J)V

    .line 284
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v14, v10, v1

    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putTotalStepInfo(J)V

    .line 285
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v14, v8, v1

    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putWalkStepInfo(J)V

    .line 286
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v14, v28, v1

    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putWalkUpStepInfo(J)V

    .line 287
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v14, v29, v1

    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putWalkDnStepInfo(J)V

    .line 288
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v14, v9, v1

    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putRunStepInfo(J)V

    .line 289
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v14, v30, v1

    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putRunUpStepInfo(J)V

    .line 290
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v14, v31, v1

    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putRunDnStepInfo(J)V

    .line 291
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v14, v11, v1

    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putCalorieInfo(D)V

    .line 292
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v14, v12, v1

    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putDistanceInfo(D)V

    .line 293
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    aget-wide v14, v13, v1

    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/hardware/context/util/PedoHistory;->putSpeedInfo(D)V

    .line 281
    add-int/lit8 v1, v1, 0x1

    move-object v14, v7

    move-object/from16 v15, v18

    goto :goto_2

    .end local v7    # "walkFlatStepCountTemp":[J
    .end local v18    # "runFlatStepCountTemp":[J
    .restart local v14    # "walkFlatStepCountTemp":[J
    .restart local v15    # "runFlatStepCountTemp":[J
    :cond_4
    move-object/from16 v6, p7

    move-object v7, v14

    move-object/from16 v18, v15

    .end local v14    # "walkFlatStepCountTemp":[J
    .end local v15    # "runFlatStepCountTemp":[J
    .restart local v7    # "walkFlatStepCountTemp":[J
    .restart local v18    # "runFlatStepCountTemp":[J
    goto :goto_3

    .line 280
    .end local v1    # "i":I
    .end local v7    # "walkFlatStepCountTemp":[J
    .end local v18    # "runFlatStepCountTemp":[J
    .restart local v14    # "walkFlatStepCountTemp":[J
    .restart local v15    # "runFlatStepCountTemp":[J
    :cond_5
    move-object/from16 v6, p7

    move-object v7, v14

    move-object/from16 v18, v15

    .end local v14    # "walkFlatStepCountTemp":[J
    .end local v15    # "runFlatStepCountTemp":[J
    .restart local v7    # "walkFlatStepCountTemp":[J
    .restart local v18    # "runFlatStepCountTemp":[J
    goto :goto_3

    .line 267
    .end local v7    # "walkFlatStepCountTemp":[J
    .end local v18    # "runFlatStepCountTemp":[J
    .restart local v14    # "walkFlatStepCountTemp":[J
    .restart local v15    # "runFlatStepCountTemp":[J
    :cond_6
    move-object/from16 v6, p7

    move-object v7, v14

    move-object/from16 v18, v15

    const/4 v3, 0x1

    .line 298
    .end local v14    # "walkFlatStepCountTemp":[J
    .end local v15    # "runFlatStepCountTemp":[J
    .restart local v7    # "walkFlatStepCountTemp":[J
    .restart local v18    # "runFlatStepCountTemp":[J
    :goto_3
    const-string v1, "Mode"

    move-object/from16 v4, v27

    .end local v27    # "context":Landroid/os/Bundle;
    .local v4, "context":Landroid/os/Bundle;
    invoke-virtual {v4, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 299
    aget v1, v19, v21

    const-string v14, "StepStatus"

    invoke-virtual {v4, v14, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    const-string v1, "CalorieDiff"

    move-object/from16 v27, v14

    aget-wide v14, v17, v21

    invoke-virtual {v4, v1, v14, v15}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 301
    const-string v1, "DistanceDiff"

    aget-wide v14, v26, v21

    invoke-virtual {v4, v1, v14, v15}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 302
    aget-wide v14, v13, v21

    const-string v1, "Speed"

    invoke-virtual {v4, v1, v14, v15}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 303
    const-string v14, "WalkingFrequency"

    move-object v15, v1

    aget-wide v0, v20, v21

    invoke-virtual {v4, v14, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 304
    const-string v0, "TotalStepCountDiff"

    move-object v1, v15

    aget-wide v14, v16, v21

    invoke-virtual {v4, v0, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 305
    const-string v0, "WalkStepCountDiff"

    aget-wide v14, v7, v21

    invoke-virtual {v4, v0, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 306
    const-string v0, "WalkUpStepCountDiff"

    aget-wide v14, v22, v21

    invoke-virtual {v4, v0, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 307
    const-string v0, "WalkDownStepCountDiff"

    aget-wide v14, v23, v21

    invoke-virtual {v4, v0, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 308
    const-string v0, "RunStepCountDiff"

    aget-wide v14, v18, v21

    invoke-virtual {v4, v0, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 309
    const-string v0, "RunUpStepCountDiff"

    aget-wide v14, v24, v21

    invoke-virtual {v4, v0, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 310
    const-string v0, "RunDownStepCountDiff"

    aget-wide v14, v25, v21

    invoke-virtual {v4, v0, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 311
    aget-wide v14, v22, v21

    aget-wide v32, v23, v21

    add-long v14, v14, v32

    aget-wide v32, v24, v21

    add-long v14, v14, v32

    aget-wide v32, v25, v21

    add-long v14, v14, v32

    const-string v0, "UpDownStepCountDiff"

    invoke-virtual {v4, v0, v14, v15}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 313
    if-ne v2, v3, :cond_9

    .line 314
    const-string v0, "LoggingCount"

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 315
    const-string v0, "TimeStampArray"

    invoke-virtual {v4, v0, v6}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 316
    const-string v0, "CalorieDiffArray"

    invoke-virtual {v4, v0, v11}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 317
    const-string v0, "DistanceDiffArray"

    invoke-virtual {v4, v0, v12}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 318
    const-string v0, "SpeedArray"

    invoke-virtual {v4, v0, v13}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 319
    const-string v0, "TotalStepCountDiffArray"

    invoke-virtual {v4, v0, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 320
    const-string v0, "WalkStepCountDiffArray"

    invoke-virtual {v4, v0, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 321
    const-string v0, "WalkUpStepCountDiffArray"

    move-object/from16 v3, v28

    .end local v28    # "walkUpStepCountArray":[J
    .local v3, "walkUpStepCountArray":[J
    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 322
    const-string v0, "WalkDownStepCountDiffArray"

    move-object/from16 v14, v29

    .end local v29    # "walkDownStepCountArray":[J
    .local v14, "walkDownStepCountArray":[J
    invoke-virtual {v4, v0, v14}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 323
    const-string v0, "RunStepCountDiffArray"

    invoke-virtual {v4, v0, v9}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 324
    const-string v0, "RunUpStepCountDiffArray"

    move-object/from16 v15, v30

    .end local v30    # "runUpStepCountArray":[J
    .local v15, "runUpStepCountArray":[J
    invoke-virtual {v4, v0, v15}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 325
    const-string v0, "RunDownStepCountDiffArray"

    move-object/from16 v21, v1

    move-object/from16 v1, v31

    .end local v31    # "runDownStepCountArray":[J
    .local v1, "runDownStepCountArray":[J
    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 326
    const/4 v0, -0x1

    move-object/from16 v1, v27

    .end local v1    # "runDownStepCountArray":[J
    .restart local v31    # "runDownStepCountArray":[J
    invoke-virtual {v4, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 327
    const-wide/16 v0, 0x0

    .line 328
    .local v0, "speed":D
    const/16 v27, 0x0

    move-wide/from16 v34, v0

    move/from16 v0, v27

    move-wide/from16 v27, v34

    .local v0, "i":I
    .local v27, "speed":D
    :goto_4
    if-ge v0, v5, :cond_7

    .line 329
    aget-wide v29, v13, v0

    add-double v27, v27, v29

    .line 328
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 331
    .end local v0    # "i":I
    :cond_7
    if-lez v5, :cond_8

    .line 332
    int-to-double v0, v5

    div-double v0, v27, v0

    .end local v27    # "speed":D
    .local v0, "speed":D
    goto :goto_5

    .line 331
    .end local v0    # "speed":D
    .restart local v27    # "speed":D
    :cond_8
    move-wide/from16 v0, v27

    .line 334
    .end local v27    # "speed":D
    .restart local v0    # "speed":D
    :goto_5
    move-object/from16 v2, v21

    invoke-virtual {v4, v2, v0, v1}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_6

    .line 313
    .end local v0    # "speed":D
    .end local v3    # "walkUpStepCountArray":[J
    .end local v14    # "walkDownStepCountArray":[J
    .end local v15    # "runUpStepCountArray":[J
    .restart local v28    # "walkUpStepCountArray":[J
    .restart local v29    # "walkDownStepCountArray":[J
    .restart local v30    # "runUpStepCountArray":[J
    :cond_9
    move-object/from16 v3, v28

    move-object/from16 v14, v29

    move-object/from16 v15, v30

    .line 336
    .end local v28    # "walkUpStepCountArray":[J
    .end local v29    # "walkDownStepCountArray":[J
    .end local v30    # "runUpStepCountArray":[J
    .restart local v3    # "walkUpStepCountArray":[J
    .restart local v14    # "walkDownStepCountArray":[J
    .restart local v15    # "runUpStepCountArray":[J
    :goto_6
    return-object v4
.end method

.method private getDeviceNode()I
    .locals 5

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "node":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 458
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 459
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v2, "/sys/bus/iio/devices/iio:device"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 461
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/shealth_cadence"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    goto :goto_1

    .line 465
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 467
    .end local v1    # "sb":Ljava/lang/StringBuffer;
    .end local v2    # "f":Ljava/io/File;
    :cond_1
    :goto_1
    return v0
.end method

.method private isBoschDevice()Z
    .locals 4

    .line 471
    const/4 v0, 0x0

    .line 472
    .local v0, "res":Z
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/shealth_enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 473
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    const/4 v0, 0x1

    .line 476
    :cond_0
    return v0
.end method

.method private parseCadence(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    .locals 35
    .param p1, "interruptMode"    # Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;
    .param p2, "str"    # Ljava/lang/String;

    .line 340
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    if-nez v9, :cond_0

    sget-object v1, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    if-eq v8, v1, :cond_0

    .line 341
    return-void

    .line 343
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    aput-wide v2, v1, v4

    .line 344
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseCadence() : Interrupt Mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimeStamp[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/4 v3, 0x0

    aget-wide v5, v2, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimeStamp[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v2, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemContext.MiscProvider.PedometerInvenImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, "walkStepCount":[J
    const/4 v5, 0x0

    .line 349
    .local v5, "runStepCount":[J
    const/4 v6, 0x0

    .line 350
    .local v6, "timeStamp":[J
    const-wide/16 v10, 0x0

    .line 351
    .local v10, "interval":J
    const/4 v7, 0x0

    .line 352
    .local v7, "dataSize":I
    const/4 v12, 0x0

    .line 353
    .local v12, "mode":I
    sget-object v13, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->STOP:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    if-ne v8, v13, :cond_1

    .line 354
    const/4 v12, 0x0

    .line 355
    const/4 v7, 0x1

    move-object v2, v1

    move-object v3, v5

    move v4, v7

    move v1, v12

    move-object v7, v6

    move-wide v5, v10

    goto/16 :goto_8

    .line 356
    :cond_1
    sget-object v13, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->NORMAL:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    if-eq v8, v13, :cond_e

    sget-object v13, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    if-ne v8, v13, :cond_2

    move/from16 v30, v3

    goto/16 :goto_6

    .line 384
    :cond_2
    sget-object v13, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    if-ne v8, v13, :cond_d

    .line 385
    const/4 v12, 0x1

    .line 386
    new-instance v13, Ljava/util/StringTokenizer;

    const-string v15, ","

    invoke-direct {v13, v9, v15}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    .local v13, "tokenizer":Ljava/util/StringTokenizer;
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v15, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v16

    if-eqz v16, :cond_3

    .line 389
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v14

    .line 390
    .local v14, "strToken":Ljava/lang/String;
    const-string v4, "\n"

    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 391
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .end local v14    # "strToken":Ljava/lang/String;
    const/4 v4, 0x1

    goto :goto_0

    .line 397
    :cond_3
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v14, 0x3

    if-ge v4, v14, :cond_4

    .line 398
    return-void

    .line 401
    :cond_4
    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 402
    .local v18, "start_mpu_nano_time":J
    const/4 v4, 0x1

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 403
    .local v20, "end_mpu_nano_time":J
    sub-long v22, v20, v18

    const-wide/32 v24, 0xf4240

    div-long v22, v22, v24

    .line 404
    .local v22, "total_interval":J
    const-wide/32 v26, 0x124f80

    cmp-long v4, v22, v26

    const-wide/32 v26, 0xea60

    if-ltz v4, :cond_5

    .line 405
    const-wide/32 v10, 0xea60

    goto :goto_1

    .line 407
    :cond_5
    rem-long v10, v22, v26

    .line 409
    :goto_1
    const/4 v4, 0x2

    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 410
    const/4 v4, 0x1

    if-lt v7, v4, :cond_c

    const/16 v14, 0x14

    if-le v7, v14, :cond_6

    goto/16 :goto_4

    .line 415
    :cond_6
    iget-object v2, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v28, v2, v4

    sub-long v30, v20, v18

    div-long v30, v30, v24

    sub-long v28, v28, v30

    .line 416
    .local v28, "start_time":J
    iget-object v2, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v24, v2, v3

    cmp-long v2, v28, v24

    const-wide/16 v24, 0x1

    if-gez v2, :cond_7

    .line 417
    iget-object v2, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v30, v2, v3

    add-long v28, v30, v24

    .line 419
    :cond_7
    add-int/lit8 v2, v7, -0x1

    move v14, v3

    int-to-long v3, v2

    mul-long v3, v3, v26

    add-long v3, v28, v3

    div-long v3, v3, v26

    mul-long v3, v3, v26

    .line 420
    .local v3, "end_time":J
    new-array v1, v7, [J

    .line 421
    new-array v5, v7, [J

    .line 422
    new-array v6, v7, [J

    .line 424
    add-int/lit8 v2, v7, -0x1

    .line 425
    .local v2, "count":I
    const/16 v17, 0x0

    move/from16 v30, v14

    move/from16 v14, v17

    .local v14, "i":I
    :goto_2
    if-ge v14, v7, :cond_b

    .line 426
    move-object/from16 v17, v1

    .end local v1    # "walkStepCount":[J
    .local v17, "walkStepCount":[J
    add-int/lit8 v1, v14, 0x3

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 427
    .local v1, "temp":I
    move-wide/from16 v31, v3

    .end local v3    # "end_time":J
    .local v31, "end_time":J
    shr-int/lit8 v3, v1, 0x8

    int-to-long v3, v3

    aput-wide v3, v5, v2

    .line 428
    and-int/lit16 v3, v1, 0xff

    int-to-long v3, v3

    aput-wide v3, v17, v2

    .line 429
    if-nez v2, :cond_9

    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrevInterrupt:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    sget-object v4, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    if-eq v3, v4, :cond_9

    .line 430
    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v3, v3, v30

    cmp-long v3, v28, v3

    if-gez v3, :cond_8

    .line 431
    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v3, v3, v30

    add-long v3, v3, v24

    aput-wide v3, v6, v2

    goto :goto_3

    .line 433
    :cond_8
    aput-wide v28, v6, v2

    goto :goto_3

    .line 435
    :cond_9
    add-int/lit8 v3, v7, -0x1

    if-ne v2, v3, :cond_a

    .line 436
    aput-wide v31, v6, v2

    goto :goto_3

    .line 438
    :cond_a
    add-int/lit8 v3, v2, 0x1

    aget-wide v3, v6, v3

    sub-long v3, v3, v26

    aput-wide v3, v6, v2

    .line 440
    :goto_3
    iget-wide v3, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    aget-wide v33, v5, v2

    add-long v3, v3, v33

    aget-wide v33, v17, v2

    add-long v3, v3, v33

    iput-wide v3, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    .line 441
    nop

    .end local v1    # "temp":I
    add-int/lit8 v2, v2, -0x1

    .line 425
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v17

    move-wide/from16 v3, v31

    goto :goto_2

    .end local v17    # "walkStepCount":[J
    .end local v31    # "end_time":J
    .local v1, "walkStepCount":[J
    .restart local v3    # "end_time":J
    :cond_b
    move-object/from16 v17, v1

    move-wide/from16 v31, v3

    .end local v1    # "walkStepCount":[J
    .end local v3    # "end_time":J
    .restart local v17    # "walkStepCount":[J
    .restart local v31    # "end_time":J
    move-object v3, v5

    move v4, v7

    move v1, v12

    move-object/from16 v2, v17

    move-object v7, v6

    move-wide v5, v10

    goto/16 :goto_8

    .line 411
    .end local v2    # "count":I
    .end local v14    # "i":I
    .end local v17    # "walkStepCount":[J
    .end local v28    # "start_time":J
    .end local v31    # "end_time":J
    .restart local v1    # "walkStepCount":[J
    :cond_c
    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the size of cadence is wrong. : size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void

    .line 384
    .end local v13    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v15    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v18    # "start_mpu_nano_time":J
    .end local v20    # "end_mpu_nano_time":J
    .end local v22    # "total_interval":J
    :cond_d
    :goto_5
    move-object v2, v1

    move-object v3, v5

    move v4, v7

    move v1, v12

    move-object v7, v6

    move-wide v5, v10

    goto :goto_8

    .line 356
    :cond_e
    move/from16 v30, v3

    .line 358
    :goto_6
    const/4 v12, 0x0

    .line 360
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v13, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    sub-long/2addr v2, v13

    .line 361
    .local v2, "diffStepCnt":J
    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    iput-wide v13, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrevStepCnt:J

    .line 362
    const/4 v7, 0x1

    .line 363
    new-array v1, v7, [J

    .line 364
    new-array v5, v7, [J

    .line 366
    sget-object v4, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    const-wide/16 v13, 0x6

    if-ne v8, v4, :cond_f

    cmp-long v4, v2, v13

    if-nez v4, :cond_f

    .line 367
    const-wide/16 v10, 0x0

    goto :goto_5

    .line 369
    :cond_f
    const-wide/16 v18, 0x0

    cmp-long v4, v2, v18

    if-lez v4, :cond_d

    .line 370
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/16 v17, 0x1

    aget-wide v17, v4, v17

    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v19, v4, v30

    sub-long v17, v17, v19

    .line 371
    .end local v10    # "interval":J
    .local v17, "interval":J
    cmp-long v4, v2, v13

    if-lez v4, :cond_11

    .line 372
    sget-object v4, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->START:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    if-ne v8, v4, :cond_10

    .line 373
    const-wide/16 v2, 0x6

    .line 374
    const-wide/16 v10, 0x0

    .end local v17    # "interval":J
    .restart local v10    # "interval":J
    goto :goto_7

    .line 376
    .end local v10    # "interval":J
    .restart local v17    # "interval":J
    :cond_10
    const-wide/16 v2, 0x1

    move-wide/from16 v10, v17

    goto :goto_7

    .line 378
    :cond_11
    const-wide/16 v10, 0x2

    cmp-long v4, v2, v10

    if-lez v4, :cond_12

    cmp-long v4, v2, v13

    if-gez v4, :cond_12

    .line 379
    const-wide/16 v2, 0x1

    move-wide/from16 v10, v17

    goto :goto_7

    .line 381
    :cond_12
    move-wide/from16 v10, v17

    .end local v17    # "interval":J
    .restart local v10    # "interval":J
    :goto_7
    aput-wide v2, v1, v30

    goto :goto_5

    .line 445
    .end local v6    # "timeStamp":[J
    .end local v10    # "interval":J
    .end local v12    # "mode":I
    .local v1, "mode":I
    .local v2, "walkStepCount":[J
    .local v3, "runStepCount":[J
    .local v4, "dataSize":I
    .local v5, "interval":J
    .local v7, "timeStamp":[J
    :goto_8
    if-lez v4, :cond_13

    .line 446
    iget-object v10, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 448
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->getCalculatedData(I[J[JIJ[J)Landroid/os/Bundle;

    move-result-object v11

    .line 446
    const/4 v0, 0x2

    invoke-interface {v10, v0, v11}, Lcom/samsung/android/hardware/context/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 451
    :cond_13
    return-void
.end method

.method private setBoschPedometer(Z)Z
    .locals 5
    .param p1, "isEnabled"    # Z

    .line 481
    const/4 v0, 0x0

    .line 482
    .local v0, "res":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBoschPedometer() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemContext.MiscProvider.PedometerInvenImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/shealth_enable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 486
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 487
    if-eqz p1, :cond_0

    .line 488
    const/16 v3, 0x31

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    .line 490
    :cond_0
    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :goto_0
    const/4 v0, 0x1

    .line 497
    nop

    .line 499
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 503
    :goto_1
    goto :goto_2

    .line 500
    :catch_0
    move-exception v3

    .line 502
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 497
    :catchall_0
    move-exception v3

    goto :goto_3

    .line 493
    :catch_1
    move-exception v3

    .line 495
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 497
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_1

    .line 499
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 506
    :cond_1
    :goto_2
    return v0

    .line 497
    :goto_3
    if-eqz v2, :cond_2

    .line 499
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 503
    goto :goto_4

    .line 500
    :catch_2
    move-exception v4

    .line 502
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 505
    .end local v4    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v3
.end method


# virtual methods
.method getHistoryData()V
    .locals 41

    .line 512
    move-object/from16 v0, p0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 514
    .local v1, "context":Landroid/os/Bundle;
    const-wide/16 v2, 0x0

    .line 515
    .local v2, "totalStepCountDiff":J
    const-wide/16 v4, 0x0

    .line 516
    .local v4, "walkStepCountDiff":J
    const-wide/16 v6, 0x0

    .line 517
    .local v6, "runStepCountDiff":J
    const-wide/16 v8, 0x0

    .line 518
    .local v8, "walkUpStepCountDiff":J
    const-wide/16 v10, 0x0

    .line 519
    .local v10, "walkDownStepCountDiff":J
    const-wide/16 v12, 0x0

    .line 520
    .local v12, "runUpStepCountDiff":J
    const-wide/16 v14, 0x0

    .line 521
    .local v14, "runDownStepCountDiff":J
    const-wide/16 v16, 0x0

    .line 522
    .local v16, "distanceDiff":D
    const-wide/16 v18, 0x0

    .line 523
    .local v18, "calorieDiff":D
    const-wide/16 v20, 0x0

    .line 525
    .local v20, "speed":D
    move-wide/from16 v22, v2

    .end local v2    # "totalStepCountDiff":J
    .local v22, "totalStepCountDiff":J
    iget-object v2, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getBufferSize()I

    move-result v2

    .line 527
    .local v2, "loggingCount":I
    if-nez v2, :cond_0

    .line 528
    const-string v3, "SemContext.MiscProvider.PedometerInvenImpl"

    move-wide/from16 v24, v4

    .end local v4    # "walkStepCountDiff":J
    .local v24, "walkStepCountDiff":J
    const-string v4, "History Data Buffer is null!!"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 527
    .end local v24    # "walkStepCountDiff":J
    .restart local v4    # "walkStepCountDiff":J
    :cond_0
    move-wide/from16 v24, v4

    .line 531
    .end local v4    # "walkStepCountDiff":J
    .restart local v24    # "walkStepCountDiff":J
    :goto_0
    new-array v3, v2, [J

    .line 532
    .local v3, "timeStampArray":[J
    new-array v4, v2, [D

    .line 533
    .local v4, "distanceDiffArray":[D
    new-array v5, v2, [D

    .line 534
    .local v5, "calorieDiffArray":[D
    move-wide/from16 v26, v6

    .end local v6    # "runStepCountDiff":J
    .local v26, "runStepCountDiff":J
    new-array v6, v2, [D

    .line 535
    .local v6, "speedArray":[D
    new-array v7, v2, [J

    .line 536
    .local v7, "walkStepCountDiffArray":[J
    move-wide/from16 v28, v8

    .end local v8    # "walkUpStepCountDiff":J
    .local v28, "walkUpStepCountDiff":J
    new-array v8, v2, [J

    .line 537
    .local v8, "runStepCountDiffArray":[J
    new-array v9, v2, [J

    .line 538
    .local v9, "walkUpStepCountDiffArray":[J
    move-wide/from16 v30, v10

    .end local v10    # "walkDownStepCountDiff":J
    .local v30, "walkDownStepCountDiff":J
    new-array v10, v2, [J

    .line 539
    .local v10, "walkDownStepCountDiffArray":[J
    new-array v11, v2, [J

    .line 540
    .local v11, "runUpStepCountDiffArray":[J
    move-wide/from16 v32, v12

    .end local v12    # "runUpStepCountDiff":J
    .local v32, "runUpStepCountDiff":J
    new-array v12, v2, [J

    .line 541
    .local v12, "runDownStepCountDiffArray":[J
    new-array v13, v2, [J

    .line 543
    .local v13, "totalStepCountDiffArray":[J
    const/16 v34, 0x0

    move-wide/from16 v39, v14

    move/from16 v14, v34

    move-wide/from16 v34, v39

    .local v14, "i":I
    .local v34, "runDownStepCountDiff":J
    :goto_1
    if-ge v14, v2, :cond_1

    .line 544
    iget-object v15, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    invoke-virtual {v15, v14}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getTimeStampSingle(I)J

    move-result-wide v36

    aput-wide v36, v3, v14

    .line 546
    iget-object v15, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    .line 547
    invoke-virtual {v15, v14}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getTotalStepCountSingle(I)J

    move-result-wide v36

    aput-wide v36, v13, v14

    .line 548
    aget-wide v36, v13, v14

    add-long v22, v22, v36

    .line 550
    iget-object v15, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    .line 551
    invoke-virtual {v15, v14}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getWalkStepCountSingle(I)J

    move-result-wide v36

    aput-wide v36, v7, v14

    .line 552
    aget-wide v36, v7, v14

    add-long v24, v24, v36

    .line 554
    iget-object v15, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    .line 555
    invoke-virtual {v15, v14}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getRunStepCountSingle(I)J

    move-result-wide v36

    aput-wide v36, v8, v14

    .line 556
    aget-wide v36, v8, v14

    add-long v26, v26, v36

    .line 558
    iget-object v15, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    .line 559
    invoke-virtual {v15, v14}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getWalkUpStepCountSingle(I)J

    move-result-wide v36

    aput-wide v36, v9, v14

    .line 560
    aget-wide v36, v9, v14

    add-long v28, v28, v36

    .line 562
    iget-object v15, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    .line 563
    invoke-virtual {v15, v14}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getRunUpStepCountSingle(I)J

    move-result-wide v36

    aput-wide v36, v11, v14

    .line 564
    aget-wide v36, v11, v14

    add-long v32, v32, v36

    .line 566
    iget-object v15, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    .line 567
    invoke-virtual {v15, v14}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getWalkDnStepCountSingle(I)J

    move-result-wide v36

    aput-wide v36, v10, v14

    .line 568
    aget-wide v36, v10, v14

    add-long v30, v30, v36

    .line 570
    iget-object v15, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    .line 571
    invoke-virtual {v15, v14}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getRunDnStepCountSingle(I)J

    move-result-wide v36

    aput-wide v36, v12, v14

    .line 572
    aget-wide v36, v12, v14

    add-long v34, v34, v36

    .line 574
    iget-object v15, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    .line 575
    invoke-virtual {v15, v14}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getDistanceArraySingle(I)D

    move-result-wide v36

    aput-wide v36, v4, v14

    .line 576
    aget-wide v36, v4, v14

    add-double v16, v16, v36

    .line 578
    iget-object v15, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    .line 579
    invoke-virtual {v15, v14}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getCalorieArraySingle(I)D

    move-result-wide v36

    aput-wide v36, v5, v14

    .line 580
    aget-wide v36, v5, v14

    add-double v18, v18, v36

    .line 582
    iget-object v15, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    invoke-virtual {v15, v14}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getSpeedArraySingle(I)D

    move-result-wide v36

    aput-wide v36, v6, v14

    .line 583
    aget-wide v36, v6, v14

    add-double v20, v20, v36

    .line 543
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 586
    .end local v14    # "i":I
    :cond_1
    if-lez v2, :cond_2

    .line 587
    int-to-double v14, v2

    div-double v20, v20, v14

    goto :goto_2

    .line 589
    :cond_2
    const-wide/16 v20, 0x0

    .line 592
    :goto_2
    const-string v14, "Mode"

    const/4 v15, 0x2

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 593
    const-string v14, "LoggingCount"

    invoke-virtual {v1, v14, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 594
    const-string v14, "TimeStampArray"

    invoke-virtual {v1, v14, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 595
    const-string v14, "CalorieDiffArray"

    invoke-virtual {v1, v14, v5}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 596
    const-string v14, "DistanceDiffArray"

    invoke-virtual {v1, v14, v4}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 597
    const-string v14, "SpeedArray"

    invoke-virtual {v1, v14, v6}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 598
    const-string v14, "TotalStepCountDiffArray"

    invoke-virtual {v1, v14, v13}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 599
    const-string v14, "WalkStepCountDiffArray"

    invoke-virtual {v1, v14, v7}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 600
    const-string v14, "WalkUpStepCountDiffArray"

    invoke-virtual {v1, v14, v9}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 601
    const-string v14, "WalkDownStepCountDiffArray"

    invoke-virtual {v1, v14, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 602
    const-string v14, "RunStepCountDiffArray"

    invoke-virtual {v1, v14, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 603
    const-string v14, "RunUpStepCountDiffArray"

    invoke-virtual {v1, v14, v11}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 604
    const-string v14, "RunDownStepCountDiffArray"

    invoke-virtual {v1, v14, v12}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 605
    const-string v14, "StepStatus"

    const/4 v15, -0x1

    invoke-virtual {v1, v14, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 606
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_3
    if-ge v14, v2, :cond_3

    .line 607
    aget-wide v37, v6, v14

    add-double v20, v20, v37

    .line 606
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 609
    .end local v14    # "i":I
    :cond_3
    if-lez v2, :cond_4

    .line 610
    int-to-double v14, v2

    div-double v20, v20, v14

    move-wide/from16 v14, v20

    goto :goto_4

    .line 609
    :cond_4
    move-wide/from16 v14, v20

    .line 612
    .end local v20    # "speed":D
    .local v14, "speed":D
    :goto_4
    move/from16 v20, v2

    .end local v2    # "loggingCount":I
    .local v20, "loggingCount":I
    const-string v2, "Speed"

    invoke-virtual {v1, v2, v14, v15}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 614
    if-ltz v20, :cond_5

    .line 615
    iget-object v2, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    const/4 v0, 0x2

    invoke-interface {v2, v0, v1}, Lcom/samsung/android/hardware/context/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 617
    :cond_5
    return-void
.end method

.method register()Z
    .locals 8

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "res":Z
    const/4 v1, 0x0

    .line 104
    .local v1, "isRegisterSuccess":Z
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const-string v3, "SemContext.MiscProvider.PedometerInvenImpl"

    if-nez v2, :cond_0

    .line 105
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mContext:Landroid/content/Context;

    const-string v4, "sensor"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 106
    const-string v2, "SensorManager is initialized()"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    if-nez v2, :cond_1

    .line 110
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v4, 0x13

    invoke-virtual {v2, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    .line 111
    const-string v2, "SensorManager is success!!"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->isBoschDevice()Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 115
    invoke-direct {p0, v4}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->setBoschPedometer(Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 116
    const/4 v1, 0x1

    .line 117
    const-string v2, "BoschPedometer register success!!"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 120
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v6, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    const/4 v7, 0x2

    invoke-virtual {v2, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 122
    const/4 v1, 0x1

    .line 123
    const-string v2, "InvenPedometer register success!!"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_3
    :goto_0
    if-eqz v1, :cond_5

    .line 127
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mEventThread:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;

    if-nez v2, :cond_4

    .line 128
    new-instance v2, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;-><init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl-IA;)V

    iput-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mEventThread:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;

    .line 129
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mEventThread:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$EventThread;->start()V

    .line 131
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/hardware/context/util/PedoHistory;->getInstance(Landroid/content/Context;)Lcom/samsung/android/hardware/context/util/PedoHistory;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    .line 132
    iput-boolean v4, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    .line 133
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v3

    .line 134
    const/4 v0, 0x1

    .line 136
    :cond_5
    return v0
.end method

.method requestToUpdate()V
    .locals 9

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "cadFile":Ljava/io/BufferedReader;
    const/16 v1, 0x400

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-array v1, v1, [C

    .line 165
    .local v1, "buffer":[C
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/shealth_flush_cadence"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v5, v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v4

    .line 166
    invoke-virtual {v0}, Ljava/io/BufferedReader;->ready()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 167
    invoke-virtual {v0, v1}, Ljava/io/BufferedReader;->read([C)I

    move-result v4

    .line 168
    .local v4, "len":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 169
    add-int/lit8 v5, v4, -0x1

    invoke-static {v1, v3, v5}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, "strCad":Ljava/lang/String;
    sget-object v6, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;->LOGGING:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;

    invoke-direct {p0, v6, v5}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->parseCadence(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl$InterruptMode;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    .end local v1    # "buffer":[C
    .end local v4    # "len":I
    .end local v5    # "strCad":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v4, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v4, v4, v2

    aput-wide v4, v1, v3

    .line 177
    nop

    .line 179
    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :goto_0
    goto :goto_1

    .line 180
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 176
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 173
    :catch_1
    move-exception v1

    .line 174
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 176
    .end local v1    # "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v4, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v4, v4, v2

    aput-wide v4, v1, v3

    .line 177
    if-eqz v0, :cond_1

    .line 179
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 186
    :cond_1
    :goto_1
    return-void

    .line 176
    :goto_2
    iget-object v4, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v5, v2

    aput-wide v5, v4, v3

    .line 177
    if-eqz v0, :cond_2

    .line 179
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 183
    goto :goto_3

    .line 180
    :catch_2
    move-exception v2

    .line 182
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 185
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_3
    throw v1
.end method

.method setLoggingMode(Z)V
    .locals 8
    .param p1, "isEnabled"    # Z

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLoggingMode() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContext.MiscProvider.PedometerInvenImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/shealth_cadence_enable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 195
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v4

    .line 196
    if-eqz p1, :cond_0

    .line 197
    const/16 v4, 0x31

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write(I)V

    goto :goto_0

    .line 199
    :cond_0
    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v5, v2

    aput-wide v5, v4, v3

    .line 206
    nop

    .line 208
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    :goto_1
    goto :goto_2

    .line 209
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 205
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 201
    :catch_1
    move-exception v4

    .line 203
    .local v4, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    .end local v4    # "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v5, v5, v2

    aput-wide v5, v4, v3

    .line 206
    if-eqz v1, :cond_1

    .line 208
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 215
    :cond_1
    :goto_2
    return-void

    .line 205
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    iget-object v6, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mTimeStamp:[J

    aget-wide v6, v6, v2

    aput-wide v6, v5, v3

    .line 206
    if-eqz v1, :cond_2

    .line 208
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 212
    goto :goto_4

    .line 209
    :catch_2
    move-exception v2

    .line 211
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 214
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v4
.end method

.method setProperty(IDD)V
    .locals 6
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .line 156
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedometerEngine:Lcom/samsung/android/hardware/context/lib/PedometerEngine;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .end local p1    # "gender":I
    .end local p2    # "height":D
    .end local p4    # "weight":D
    .local v1, "gender":I
    .local v2, "height":D
    .local v4, "weight":D
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/hardware/context/lib/PedometerEngine;->native_pedometer_initialize(IDD)V

    .line 157
    return-void
.end method

.method unregister()V
    .locals 3

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mIsStarted:Z

    .line 143
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mPedoHistory:Lcom/samsung/android/hardware/context/util/PedoHistory;

    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/util/PedoHistory;->erase()V

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->isBoschDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 147
    invoke-direct {p0, v0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->setBoschPedometer(Z)Z

    goto :goto_0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerInvenImpl;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 151
    :goto_0
    return-void
.end method
