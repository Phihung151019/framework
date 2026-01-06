.class Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;
.super Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;
.source "PedometerAdspImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;
    }
.end annotation


# static fields
.field private static final LOGGING_MAX_TIME:J = 0x124f80L

.field private static final TAG:Ljava/lang/String; = "SemContext.MiscProvider.PedometerAdspImpl"

.field private static final TYPE_PEDOMETER_LOGGING:I = 0x10021

.field private static final TYPE_PEDOMETER_NORMAL:I = 0x10020


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private mFlushEnabled:Z

.field private final mIsBarometerAvailable:Z

.field private final mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

.field private final mLoggingPedometer:Landroid/hardware/Sensor;

.field private final mNormalPedometer:Landroid/hardware/Sensor;

.field private mPedometerEngine:Lcom/samsung/android/hardware/context/lib/PedometerEngine;

.field private mPrevInterrupt:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;

.field private mPrevStepCnt:J

.field private final mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mTimeStamp:[J


# direct methods
.method static bridge synthetic -$$Nest$mparseEvent(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;Landroid/hardware/SensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->parseEvent(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerVendorImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/provider/EventListener;)V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mPedometerEngine:Lcom/samsung/android/hardware/context/lib/PedometerEngine;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mFlushEnabled:Z

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    .line 61
    sget-object v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;->UNKNOWN:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mPrevInterrupt:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 62
    new-instance v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$1;-><init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;)V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 78
    iput-object p2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 79
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    .line 80
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10021

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mLoggingPedometer:Landroid/hardware/Sensor;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x10020

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mNormalPedometer:Landroid/hardware/Sensor;

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 83
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "android.hardware.sensor.barometer"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mIsBarometerAvailable:Z

    .line 84
    const-string v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mDisplay:Landroid/view/Display;

    .line 85
    new-instance v1, Lcom/samsung/android/hardware/context/lib/PedometerEngine;

    invoke-direct {v1}, Lcom/samsung/android/hardware/context/lib/PedometerEngine;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mPedometerEngine:Lcom/samsung/android/hardware/context/lib/PedometerEngine;

    .line 86
    return-void

    :array_0
    .array-data 8
        0x0
        0x0
    .end array-data
.end method

.method private bytesToLong([B)J
    .locals 3
    .param p1, "bytes"    # [B

    .line 410
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 411
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 412
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 413
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v1

    return-wide v1
.end method

.method private convertFloatToByteArray(FI)[B
    .locals 4
    .param p1, "value"    # F
    .param p2, "size"    # I

    .line 399
    new-array v0, p2, [B

    .line 400
    .local v0, "array":[B
    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    .line 401
    .local v1, "bits":I
    add-int/lit8 v2, p2, -0x4

    shr-int/lit8 v3, v1, 0x18

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 402
    add-int/lit8 v2, p2, -0x3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 403
    add-int/lit8 v2, p2, -0x2

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 404
    add-int/lit8 v2, p2, -0x1

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 406
    return-object v0
.end method

.method private getCalculatedData(I[J[JIJ[J)Landroid/os/Bundle;
    .locals 34
    .param p1, "mode"    # I
    .param p2, "walkCadence"    # [J
    .param p3, "runCadence"    # [J
    .param p4, "dataSize"    # I
    .param p5, "interval"    # J
    .param p7, "timeStampArray"    # [J

    .line 162
    move-object/from16 v0, p0

    move/from16 v5, p4

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 164
    .local v1, "context":Landroid/os/Bundle;
    new-array v10, v5, [J

    .line 165
    .local v10, "totalStepCountArray":[J
    new-array v8, v5, [J

    .line 166
    .local v8, "walkFlatStepCountArray":[J
    new-array v2, v5, [J

    .line 167
    .local v2, "walkUpStepCountArray":[J
    new-array v3, v5, [J

    .line 168
    .local v3, "walkDownStepCountArray":[J
    new-array v9, v5, [J

    .line 169
    .local v9, "runFlatStepCountArray":[J
    new-array v4, v5, [J

    .line 170
    .local v4, "runUpStepCountArray":[J
    new-array v6, v5, [J

    .line 171
    .local v6, "runDownStepCountArray":[J
    new-array v11, v5, [D

    .line 172
    .local v11, "calorieArray":[D
    new-array v12, v5, [D

    .line 173
    .local v12, "distanceArray":[D
    new-array v13, v5, [D

    .line 174
    .local v13, "speedArray":[D
    const/4 v7, 0x1

    new-array v14, v7, [J

    const/16 v21, 0x0

    const-wide/16 v15, 0x0

    aput-wide v15, v14, v21

    .line 175
    .local v14, "totalStepCountTemp":[J
    move-wide/from16 v17, v15

    new-array v15, v7, [J

    aput-wide v17, v15, v21

    .line 176
    .local v15, "walkFlatStepCountTemp":[J
    move-object/from16 v16, v1

    .end local v1    # "context":Landroid/os/Bundle;
    .local v16, "context":Landroid/os/Bundle;
    new-array v1, v7, [J

    aput-wide v17, v1, v21

    move-object/from16 v22, v1

    .line 177
    .local v22, "walkUpStepCountTemp":[J
    new-array v1, v7, [J

    aput-wide v17, v1, v21

    move-object/from16 v23, v1

    .line 178
    .local v23, "walkDownStepCountTemp":[J
    new-array v1, v7, [J

    aput-wide v17, v1, v21

    .line 179
    .local v1, "runFlatStepCountTemp":[J
    move-object/from16 v19, v1

    .end local v1    # "runFlatStepCountTemp":[J
    .local v19, "runFlatStepCountTemp":[J
    new-array v1, v7, [J

    aput-wide v17, v1, v21

    move-object/from16 v24, v1

    .line 180
    .local v24, "runUpStepCountTemp":[J
    new-array v1, v7, [J

    aput-wide v17, v1, v21

    move-object/from16 v25, v1

    .line 181
    .local v25, "runDownStepCountTemp":[J
    new-array v1, v7, [D

    const-wide/16 v17, 0x0

    aput-wide v17, v1, v21

    .line 182
    .local v1, "calorieTemp":[D
    move-object/from16 v20, v1

    .end local v1    # "calorieTemp":[D
    .local v20, "calorieTemp":[D
    new-array v1, v7, [D

    aput-wide v17, v1, v21

    .line 183
    .local v1, "distanceTemp":[D
    move-object/from16 v26, v1

    .end local v1    # "distanceTemp":[D
    .local v26, "distanceTemp":[D
    new-array v1, v7, [D

    aput-wide v17, v1, v21

    .line 184
    .local v1, "walkingFrequencyTemp":[D
    filled-new-array/range {v21 .. v21}, [I

    move-result-object v17

    .line 186
    .local v17, "statusTemp":[I
    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v6

    move-object/from16 v0, v16

    move/from16 v2, p1

    move-object/from16 v16, v14

    move-object v14, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v1

    goto/16 :goto_0

    .line 189
    :cond_0
    iget-boolean v7, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mIsBarometerAvailable:Z

    if-nez v7, :cond_1

    .line 190
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
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mPedometerEngine:Lcom/samsung/android/hardware/context/lib/PedometerEngine;

    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v6

    move-object v0, v7

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
    .local v0, "context":Landroid/os/Bundle;
    .local v18, "distanceTemp":[D
    .local v27, "walkUpStepCountArray":[J
    .local v28, "walkDownStepCountArray":[J
    .local v29, "runUpStepCountArray":[J
    .local v30, "runDownStepCountArray":[J
    invoke-virtual/range {v1 .. v20}, Lcom/samsung/android/hardware/context/lib/PedometerEngine;->native_Pedometer_getCalculate_data(I[J[JIJ[J[J[J[D[D[D[J[J[J[D[D[I[D)V

    .end local v18    # "distanceTemp":[D
    .restart local v26    # "distanceTemp":[D
    goto :goto_1

    .line 189
    .end local v0    # "context":Landroid/os/Bundle;
    .end local v27    # "walkUpStepCountArray":[J
    .end local v28    # "walkDownStepCountArray":[J
    .end local v29    # "runUpStepCountArray":[J
    .end local v30    # "runDownStepCountArray":[J
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
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v6

    move-object/from16 v0, v16

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
    .restart local v0    # "context":Landroid/os/Bundle;
    .local v14, "walkFlatStepCountTemp":[J
    .local v15, "runFlatStepCountTemp":[J
    .local v16, "totalStepCountTemp":[J
    .local v17, "calorieTemp":[D
    .local v19, "statusTemp":[I
    .local v20, "walkingFrequencyTemp":[D
    .restart local v27    # "walkUpStepCountArray":[J
    .restart local v28    # "walkDownStepCountArray":[J
    .restart local v29    # "runUpStepCountArray":[J
    .restart local v30    # "runDownStepCountArray":[J
    goto :goto_1

    .line 186
    .end local v0    # "context":Landroid/os/Bundle;
    .end local v27    # "walkUpStepCountArray":[J
    .end local v28    # "walkDownStepCountArray":[J
    .end local v29    # "runUpStepCountArray":[J
    .end local v30    # "runDownStepCountArray":[J
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
    move-object/from16 v27, v2

    move-object/from16 v28, v3

    move-object/from16 v29, v4

    move-object/from16 v30, v6

    move-object/from16 v0, v16

    move/from16 v2, p1

    move-object/from16 v16, v14

    move-object v14, v15

    move-object/from16 v15, v19

    move-object/from16 v19, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v1

    .line 187
    .end local v1    # "walkingFrequencyTemp":[D
    .end local v2    # "walkUpStepCountArray":[J
    .end local v3    # "walkDownStepCountArray":[J
    .end local v4    # "runUpStepCountArray":[J
    .end local v6    # "runDownStepCountArray":[J
    .restart local v0    # "context":Landroid/os/Bundle;
    .local v14, "walkFlatStepCountTemp":[J
    .local v15, "runFlatStepCountTemp":[J
    .local v16, "totalStepCountTemp":[J
    .local v17, "calorieTemp":[D
    .local v19, "statusTemp":[I
    .local v20, "walkingFrequencyTemp":[D
    .restart local v27    # "walkUpStepCountArray":[J
    .restart local v28    # "walkDownStepCountArray":[J
    .restart local v29    # "runUpStepCountArray":[J
    .restart local v30    # "runDownStepCountArray":[J
    :goto_0
    aput v21, v19, v21

    .line 198
    :goto_1
    const-string v1, "Mode"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    aget v1, v19, v21

    const-string v3, "StepStatus"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 200
    const-string v1, "CalorieDiff"

    aget-wide v6, v17, v21

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 201
    const-string v1, "DistanceDiff"

    aget-wide v6, v26, v21

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 202
    aget-wide v6, v13, v21

    const-string v1, "Speed"

    invoke-virtual {v0, v1, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 203
    const-string v4, "WalkingFrequency"

    aget-wide v6, v20, v21

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 204
    const-string v4, "TotalStepCountDiff"

    aget-wide v6, v16, v21

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 205
    const-string v4, "WalkStepCountDiff"

    aget-wide v6, v14, v21

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 206
    const-string v4, "WalkUpStepCountDiff"

    aget-wide v6, v22, v21

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 207
    const-string v4, "WalkDownStepCountDiff"

    aget-wide v6, v23, v21

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 208
    const-string v4, "RunStepCountDiff"

    aget-wide v6, v15, v21

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 209
    const-string v4, "RunUpStepCountDiff"

    aget-wide v6, v24, v21

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 210
    const-string v4, "RunDownStepCountDiff"

    aget-wide v6, v25, v21

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 211
    aget-wide v6, v22, v21

    aget-wide v32, v23, v21

    add-long v6, v6, v32

    aget-wide v32, v24, v21

    add-long v6, v6, v32

    aget-wide v32, v25, v21

    add-long v6, v6, v32

    const-string v4, "UpDownStepCountDiff"

    invoke-virtual {v0, v4, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 213
    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 214
    const-string v4, "LoggingCount"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 215
    const-string v4, "TimeStampArray"

    move-object/from16 v6, p7

    invoke-virtual {v0, v4, v6}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 216
    const-string v4, "CalorieDiffArray"

    invoke-virtual {v0, v4, v11}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 217
    const-string v4, "DistanceDiffArray"

    invoke-virtual {v0, v4, v12}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 218
    const-string v4, "SpeedArray"

    invoke-virtual {v0, v4, v13}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 219
    const-string v4, "TotalStepCountDiffArray"

    invoke-virtual {v0, v4, v10}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 220
    const-string v4, "WalkStepCountDiffArray"

    invoke-virtual {v0, v4, v8}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 221
    const-string v4, "WalkUpStepCountDiffArray"

    move-object/from16 v7, v27

    .end local v27    # "walkUpStepCountArray":[J
    .local v7, "walkUpStepCountArray":[J
    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 222
    const-string v4, "WalkDownStepCountDiffArray"

    move-object/from16 v2, v28

    .end local v28    # "walkDownStepCountArray":[J
    .local v2, "walkDownStepCountArray":[J
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 223
    const-string v4, "RunStepCountDiffArray"

    invoke-virtual {v0, v4, v9}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 224
    const-string v4, "RunUpStepCountDiffArray"

    move-object/from16 v2, v29

    .end local v29    # "runUpStepCountArray":[J
    .local v2, "runUpStepCountArray":[J
    .restart local v28    # "walkDownStepCountArray":[J
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 225
    const-string v4, "RunDownStepCountDiffArray"

    move-object/from16 v2, v30

    .end local v30    # "runDownStepCountArray":[J
    .local v2, "runDownStepCountArray":[J
    .restart local v29    # "runUpStepCountArray":[J
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 226
    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    const-wide/16 v3, 0x0

    .line 228
    .local v3, "speed":D
    const/16 v18, 0x0

    move/from16 v2, v18

    .local v2, "i":I
    .restart local v30    # "runDownStepCountArray":[J
    :goto_2
    if-ge v2, v5, :cond_3

    .line 229
    aget-wide v31, v13, v2

    add-double v3, v3, v31

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 231
    .end local v2    # "i":I
    :cond_3
    if-lez v5, :cond_4

    .line 232
    move-wide/from16 v31, v3

    .end local v3    # "speed":D
    .local v31, "speed":D
    int-to-double v2, v5

    div-double v3, v31, v2

    .end local v31    # "speed":D
    .restart local v3    # "speed":D
    goto :goto_3

    .line 231
    :cond_4
    move-wide/from16 v31, v3

    .line 234
    :goto_3
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_4

    .line 213
    .end local v3    # "speed":D
    .end local v7    # "walkUpStepCountArray":[J
    .restart local v27    # "walkUpStepCountArray":[J
    :cond_5
    move-object/from16 v6, p7

    move-object/from16 v7, v27

    .line 236
    .end local v27    # "walkUpStepCountArray":[J
    .restart local v7    # "walkUpStepCountArray":[J
    :goto_4
    return-object v0
.end method

.method private parseEvent(Landroid/hardware/SensorEvent;)V
    .locals 37
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 240
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    if-nez v8, :cond_0

    .line 241
    return-void

    .line 243
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v9, 0x1

    aput-wide v2, v1, v9

    .line 244
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseEvent() : event type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v8, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimeStamp[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/4 v10, 0x0

    aget-wide v2, v2, v10

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimeStamp[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    aget-wide v2, v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SemContext.MiscProvider.PedometerAdspImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/4 v1, 0x0

    .line 248
    .local v1, "walkStepCount":[J
    const/4 v3, 0x0

    .line 249
    .local v3, "runStepCount":[J
    const/4 v4, 0x0

    .line 250
    .local v4, "timeStamp":[J
    const-wide/16 v5, 0x0

    .line 251
    .local v5, "interval":J
    const/4 v7, 0x0

    .line 252
    .local v7, "dataSize":I
    const/4 v11, 0x0

    .line 253
    .local v11, "mode":I
    sget-object v12, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;->UNKNOWN:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 255
    .local v12, "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;
    iget-object v13, v8, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v13}, Landroid/hardware/Sensor;->getType()I

    move-result v13

    const v14, 0x10020

    const/16 v15, 0x8

    move/from16 v16, v9

    if-ne v13, v14, :cond_7

    .line 256
    const/4 v11, 0x0

    .line 257
    const/4 v7, 0x1

    .line 258
    iget-object v13, v8, Landroid/hardware/SensorEvent;->values:[F

    aget v13, v13, v10

    float-to-int v13, v13

    .line 259
    .local v13, "status":I
    iget-object v14, v8, Landroid/hardware/SensorEvent;->values:[F

    aget v14, v14, v16

    float-to-int v14, v14

    .line 260
    .local v14, "step_cnt":I
    move/from16 v17, v10

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x2

    const-string v9, "parseEvent() : status = "

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", stepCnt : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sparse-switch v13, :sswitch_data_0

    goto :goto_0

    .line 263
    :sswitch_0
    sget-object v12, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;->STOP:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 264
    goto :goto_0

    .line 266
    :sswitch_1
    sget-object v12, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;->START:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 267
    goto :goto_0

    .line 269
    :sswitch_2
    sget-object v12, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;->NORMAL:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 270
    nop

    .line 274
    :goto_0
    if-eq v13, v15, :cond_5

    .line 275
    int-to-long v9, v14

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .end local v3    # "runStepCount":[J
    .end local v4    # "timeStamp":[J
    .local v19, "runStepCount":[J
    .local v20, "timeStamp":[J
    iget-wide v3, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    sub-long/2addr v9, v3

    .line 276
    .local v9, "diffStepCnt":J
    int-to-long v3, v14

    iput-wide v3, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseEvent() : diffStepCnt = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-array v1, v7, [J

    .line 279
    new-array v3, v7, [J

    .line 281
    .end local v19    # "runStepCount":[J
    .restart local v3    # "runStepCount":[J
    const/4 v2, 0x6

    const-wide/16 v21, 0x6

    if-ne v13, v2, :cond_1

    cmp-long v4, v9, v21

    if-nez v4, :cond_1

    .line 282
    const-wide/16 v5, 0x0

    goto :goto_2

    .line 284
    :cond_1
    const-wide/16 v23, 0x0

    cmp-long v4, v9, v23

    if-lez v4, :cond_6

    .line 285
    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    aget-wide v23, v4, v16

    iget-object v4, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    aget-wide v25, v4, v17

    sub-long v23, v23, v25

    .line 286
    .end local v5    # "interval":J
    .local v23, "interval":J
    cmp-long v4, v9, v21

    if-lez v4, :cond_3

    .line 287
    if-ne v13, v2, :cond_2

    .line 288
    const-wide/16 v9, 0x6

    .line 289
    const-wide/16 v4, 0x0

    move-wide v5, v4

    .end local v23    # "interval":J
    .local v4, "interval":J
    goto :goto_1

    .line 291
    .end local v4    # "interval":J
    .restart local v23    # "interval":J
    :cond_2
    const-wide/16 v9, 0x1

    move-wide/from16 v5, v23

    goto :goto_1

    .line 293
    :cond_3
    const-wide/16 v4, 0x2

    cmp-long v2, v9, v4

    if-lez v2, :cond_4

    cmp-long v2, v9, v21

    if-gez v2, :cond_4

    .line 294
    const-wide/16 v9, 0x1

    move-wide/from16 v5, v23

    goto :goto_1

    .line 296
    :cond_4
    move-wide/from16 v5, v23

    .end local v23    # "interval":J
    .restart local v5    # "interval":J
    :goto_1
    aput-wide v9, v1, v17

    goto :goto_2

    .line 274
    .end local v9    # "diffStepCnt":J
    .end local v20    # "timeStamp":[J
    .local v4, "timeStamp":[J
    :cond_5
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    .line 300
    .end local v4    # "timeStamp":[J
    .end local v13    # "status":I
    .end local v14    # "step_cnt":I
    .restart local v20    # "timeStamp":[J
    :cond_6
    :goto_2
    move-object v2, v1

    move v4, v7

    move v1, v11

    move-object/from16 v7, v20

    goto/16 :goto_a

    .end local v20    # "timeStamp":[J
    .restart local v4    # "timeStamp":[J
    :cond_7
    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move/from16 v17, v10

    const/16 v18, 0x2

    .end local v3    # "runStepCount":[J
    .end local v4    # "timeStamp":[J
    .restart local v19    # "runStepCount":[J
    .restart local v20    # "timeStamp":[J
    iget-object v3, v8, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v3}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    const v4, 0x10021

    if-ne v3, v4, :cond_16

    .line 301
    const/4 v11, 0x1

    .line 302
    sget-object v12, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;->LOGGING:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 304
    iget-object v3, v8, Landroid/hardware/SensorEvent;->values:[F

    array-length v3, v3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_8

    .line 305
    const-string v3, "Invalid event value length!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 309
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseEvent()    "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v8, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v9}, Landroid/hardware/Sensor;->getType()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3
    if-ge v3, v4, :cond_9

    .line 311
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseEvent()    data "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " :  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v8, Landroid/hardware/SensorEvent;->values:[F

    aget v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 314
    .end local v3    # "i":I
    :cond_9
    iget-object v3, v8, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v16

    invoke-direct {v0, v3, v15}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->convertFloatToByteArray(FI)[B

    move-result-object v3

    .line 315
    .local v3, "end_time_values":[B
    iget-object v4, v8, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v18

    invoke-direct {v0, v4, v15}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->convertFloatToByteArray(FI)[B

    move-result-object v4

    .line 317
    .local v4, "data_size":[B
    const-wide/16 v9, 0x0

    .line 318
    .local v9, "start_timestamp":J
    invoke-direct {v0, v3}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->bytesToLong([B)J

    move-result-wide v13

    .line 319
    .local v13, "end_timestamp":J
    move-wide/from16 v21, v5

    .end local v5    # "interval":J
    .local v21, "interval":J
    sub-long v5, v13, v9

    .line 320
    .local v5, "total_interval":J
    move v15, v11

    move-object/from16 v23, v12

    .end local v11    # "mode":I
    .end local v12    # "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;
    .local v15, "mode":I
    .local v23, "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;
    invoke-direct {v0, v4}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->bytesToLong([B)J

    move-result-wide v11

    long-to-int v7, v11

    .line 322
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseEvent() start_timestamp : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " end_timestamp : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " total_interval : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " datasize : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    new-array v1, v7, [J

    .line 327
    new-array v11, v7, [J

    .line 328
    .end local v19    # "runStepCount":[J
    .local v11, "runStepCount":[J
    new-array v12, v7, [J

    .line 330
    .end local v20    # "timeStamp":[J
    .local v12, "timeStamp":[J
    const-wide/32 v19, 0x124f80

    cmp-long v19, v5, v19

    const-wide/32 v24, 0xea60

    if-ltz v19, :cond_a

    .line 331
    const-wide/32 v19, 0xea60

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-wide/from16 v3, v19

    .end local v21    # "interval":J
    .local v19, "interval":J
    goto :goto_4

    .line 333
    .end local v19    # "interval":J
    .restart local v21    # "interval":J
    :cond_a
    rem-long v19, v5, v24

    move-object/from16 v26, v3

    move-object/from16 v27, v4

    move-wide/from16 v3, v19

    .line 336
    .end local v4    # "data_size":[B
    .end local v21    # "interval":J
    .local v3, "interval":J
    .local v26, "end_time_values":[B
    .local v27, "data_size":[B
    :goto_4
    move-object/from16 v28, v1

    .end local v1    # "walkStepCount":[J
    .local v28, "walkStepCount":[J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v29, v5

    .end local v5    # "total_interval":J
    .local v29, "total_interval":J
    const-string v5, "parseEvent() interval "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    aget-wide v5, v1, v16

    sub-long v5, v5, v29

    .line 339
    .local v5, "start_time":J
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    aget-wide v19, v1, v17

    cmp-long v1, v5, v19

    const-wide/16 v19, 0x1

    if-gez v1, :cond_b

    .line 340
    iget-object v1, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    aget-wide v21, v1, v17

    add-long v5, v21, v19

    .line 342
    :cond_b
    add-int/lit8 v1, v7, -0x1

    move-wide/from16 v21, v3

    .end local v3    # "interval":J
    .restart local v21    # "interval":J
    int-to-long v3, v1

    mul-long v3, v3, v24

    add-long/2addr v3, v5

    div-long v3, v3, v24

    mul-long v3, v3, v24

    .line 344
    .local v3, "end_time":J
    div-int/lit8 v1, v7, 0x2

    add-int/lit8 v1, v1, 0x1

    .line 346
    .local v1, "values_array_size":I
    move-wide/from16 v31, v3

    .end local v3    # "end_time":J
    .local v31, "end_time":J
    const/16 v3, 0xb

    if-ne v1, v3, :cond_c

    .line 347
    const/16 v1, 0xa

    .line 349
    :cond_c
    const/16 v3, 0xa

    if-gt v1, v3, :cond_15

    if-gez v1, :cond_d

    move/from16 v33, v1

    goto/16 :goto_9

    .line 353
    :cond_d
    mul-int/lit8 v3, v1, 0x4

    new-array v3, v3, [B

    .line 355
    .local v3, "values":[B
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-ge v4, v1, :cond_e

    .line 356
    move/from16 v33, v1

    .end local v1    # "values_array_size":I
    .local v33, "values_array_size":I
    iget-object v1, v8, Landroid/hardware/SensorEvent;->values:[F

    add-int/lit8 v34, v4, 0x3

    aget v1, v1, v34

    move-object/from16 v34, v3

    .end local v3    # "values":[B
    .local v34, "values":[B
    const/4 v3, 0x4

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->convertFloatToByteArray(FI)[B

    move-result-object v1

    .line 357
    .local v1, "array":[B
    mul-int/lit8 v3, v4, 0x4

    aget-byte v35, v1, v17

    aput-byte v35, v34, v3

    .line 358
    mul-int/lit8 v3, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v35, v1, v16

    aput-byte v35, v34, v3

    .line 359
    mul-int/lit8 v3, v4, 0x4

    add-int/lit8 v3, v3, 0x2

    aget-byte v35, v1, v18

    aput-byte v35, v34, v3

    .line 360
    mul-int/lit8 v3, v4, 0x4

    const/16 v35, 0x3

    add-int/lit8 v3, v3, 0x3

    aget-byte v35, v1, v35

    aput-byte v35, v34, v3

    .line 355
    .end local v1    # "array":[B
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v33

    move-object/from16 v3, v34

    goto :goto_5

    .end local v33    # "values_array_size":I
    .end local v34    # "values":[B
    .local v1, "values_array_size":I
    .restart local v3    # "values":[B
    :cond_e
    move/from16 v33, v1

    move-object/from16 v34, v3

    .line 363
    .end local v1    # "values_array_size":I
    .end local v3    # "values":[B
    .end local v4    # "i":I
    .restart local v33    # "values_array_size":I
    .restart local v34    # "values":[B
    const/16 v1, 0x14

    if-gt v7, v1, :cond_14

    if-gez v7, :cond_f

    goto :goto_8

    .line 368
    :cond_f
    add-int/lit8 v1, v7, -0x1

    .line 369
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v7, :cond_13

    .line 370
    mul-int/lit8 v3, v2, 0x2

    aget-byte v3, v34, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    aput-wide v3, v11, v1

    .line 371
    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v34, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    aput-wide v3, v28, v1

    .line 372
    if-nez v1, :cond_11

    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mPrevInterrupt:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    sget-object v4, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;->LOGGING:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    if-eq v3, v4, :cond_11

    .line 373
    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    aget-wide v3, v3, v17

    cmp-long v3, v5, v3

    if-gez v3, :cond_10

    .line 374
    iget-object v3, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    aget-wide v3, v3, v17

    add-long v3, v3, v19

    aput-wide v3, v12, v1

    goto :goto_7

    .line 376
    :cond_10
    aput-wide v5, v12, v1

    goto :goto_7

    .line 378
    :cond_11
    add-int/lit8 v3, v7, -0x1

    if-ne v1, v3, :cond_12

    .line 379
    aput-wide v31, v12, v1

    goto :goto_7

    .line 381
    :cond_12
    add-int/lit8 v3, v1, 0x1

    aget-wide v3, v12, v3

    sub-long v3, v3, v24

    aput-wide v3, v12, v1

    .line 383
    :goto_7
    iget-wide v3, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    aget-wide v35, v11, v1

    add-long v3, v3, v35

    aget-wide v35, v28, v1

    add-long v3, v3, v35

    iput-wide v3, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mPrevStepCnt:J

    .line 384
    add-int/lit8 v1, v1, -0x1

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_13
    move v4, v7

    move-object v3, v11

    move-object v7, v12

    move v1, v15

    move-wide/from16 v5, v21

    move-object/from16 v12, v23

    move-object/from16 v2, v28

    goto :goto_a

    .line 364
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_14
    :goto_8
    const-string v1, "parseEvent() : Invalid logging data size!!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    return-void

    .line 349
    .end local v33    # "values_array_size":I
    .end local v34    # "values":[B
    .local v1, "values_array_size":I
    :cond_15
    move/from16 v33, v1

    .line 350
    .end local v1    # "values_array_size":I
    .restart local v33    # "values_array_size":I
    :goto_9
    const-string v1, "parseEvent() : Invalid byte array data size!!"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void

    .line 300
    .end local v9    # "start_timestamp":J
    .end local v13    # "end_timestamp":J
    .end local v15    # "mode":I
    .end local v21    # "interval":J
    .end local v23    # "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;
    .end local v26    # "end_time_values":[B
    .end local v27    # "data_size":[B
    .end local v28    # "walkStepCount":[J
    .end local v29    # "total_interval":J
    .end local v31    # "end_time":J
    .end local v33    # "values_array_size":I
    .local v1, "walkStepCount":[J
    .local v5, "interval":J
    .local v11, "mode":I
    .local v12, "interruptMode":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;
    .local v19, "runStepCount":[J
    .restart local v20    # "timeStamp":[J
    :cond_16
    move-wide/from16 v21, v5

    .end local v5    # "interval":J
    .restart local v21    # "interval":J
    move-object v2, v1

    move v4, v7

    move v1, v11

    move-object/from16 v3, v19

    move-object/from16 v7, v20

    .line 388
    .end local v11    # "mode":I
    .end local v19    # "runStepCount":[J
    .end local v20    # "timeStamp":[J
    .end local v21    # "interval":J
    .local v1, "mode":I
    .local v2, "walkStepCount":[J
    .local v3, "runStepCount":[J
    .local v4, "dataSize":I
    .restart local v5    # "interval":J
    .local v7, "timeStamp":[J
    :goto_a
    iput-object v12, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mPrevInterrupt:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$InterruptMode;

    .line 389
    if-lez v4, :cond_17

    .line 390
    iget-object v9, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mListener:Lcom/samsung/android/hardware/context/provider/EventListener;

    .line 392
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->getCalculatedData(I[J[JIJ[J)Landroid/os/Bundle;

    move-result-object v10

    .line 390
    move/from16 v11, v18

    invoke-interface {v9, v11, v10}, Lcom/samsung/android/hardware/context/provider/EventListener;->onEventChanged(ILandroid/os/Bundle;)V

    .line 395
    :cond_17
    iget-object v9, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    iget-object v10, v0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    aget-wide v10, v10, v16

    aput-wide v10, v9, v17

    .line 396
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_2
        0x6 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method register()Z
    .locals 5

    .line 92
    const/4 v0, 0x0

    .line 93
    .local v0, "res":Z
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mLoggingPedometer:Landroid/hardware/Sensor;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 96
    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mNormalPedometer:Landroid/hardware/Sensor;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 101
    :cond_0
    const/4 v0, 0x1

    .line 104
    :cond_1
    :goto_0
    return v0
.end method

.method declared-synchronized requestToUpdate()V
    .locals 4

    monitor-enter p0

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 124
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mFlushEnabled:Z

    if-eqz v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->flush(Landroid/hardware/SensorEventListener;)Z

    .line 126
    const-string v0, "SemContext.MiscProvider.PedometerAdspImpl"

    const-string v1, "flush()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    const/4 v3, 0x0

    aput-wide v1, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .end local p0    # "this":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;
    :cond_1
    monitor-exit p0

    return-void

    .line 122
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method declared-synchronized setLoggingMode(Z)V
    .locals 6
    .param p1, "isEnabled"    # Z

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 135
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 136
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mNormalPedometer:Landroid/hardware/Sensor;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 137
    iput-boolean v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mFlushEnabled:Z

    goto :goto_0

    .line 139
    .end local p0    # "this":Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mNormalPedometer:Landroid/hardware/Sensor;

    const/4 v5, 0x3

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 141
    iput-boolean v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mFlushEnabled:Z

    .line 143
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    iget-object v3, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mTimeStamp:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :cond_1
    monitor-exit p0

    return-void

    .line 133
    .end local p1    # "isEnabled":Z
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method setProperty(IDD)V
    .locals 6
    .param p1, "gender"    # I
    .param p2, "height"    # D
    .param p4, "weight"    # D

    .line 116
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mPedometerEngine:Lcom/samsung/android/hardware/context/lib/PedometerEngine;

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

    .line 117
    return-void
.end method

.method unregister()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 111
    return-void
.end method
