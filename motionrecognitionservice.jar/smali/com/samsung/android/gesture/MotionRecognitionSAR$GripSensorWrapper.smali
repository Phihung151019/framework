.class abstract Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "GripSensorWrapper"
.end annotation


# static fields
.field protected static final VERSION_FILTER_BLOCK_SYSFS_EAR_JACK:I = 0xe

.field protected static final VERSION_MAIN_FILTER_BLOCK_HEADSET1:I = 0x200

.field protected static final VERSION_MAIN_FILTER_BLOCK_HEADSET2:I = 0x600

.field protected static final VERSION_MAIN_FILTER_BLOCK_TA1:I = 0x1

.field protected static final VERSION_MAIN_FILTER_BLOCK_TA2:I = 0x200

.field protected static final VERSION_SUB_FILTER_BLOCK_TA1:I = 0x800


# instance fields
.field protected mEnabledSlots:[I

.field protected mIndex:I

.field protected mListener:Landroid/hardware/SensorEventListener;

.field protected mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

.field protected mSensor:Landroid/hardware/Sensor;

.field protected mSensorEnabled:Z

.field protected mType:I

.field protected mVersion:I

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;)V
    .locals 2
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .param p2, "s"    # Landroid/hardware/Sensor;
    .param p3, "device"    # Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 259
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    const/4 v0, 0x0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    .line 260
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    .line 261
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getVersion()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mVersion:I

    .line 262
    invoke-virtual {p2}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mType:I

    .line 263
    iput-object p3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    .line 264
    invoke-virtual {p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->getSensorCnt()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    .line 265
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensorEnabled:Z

    .line 266
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mListener:Landroid/hardware/SensorEventListener;

    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] SarDevice "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , index : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return-void
.end method


# virtual methods
.method protected clearBackOff(I)V
    .locals 2
    .param p1, "channel"    # I

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " clearBackOff channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->clear(II)V

    .line 348
    return-void
.end method

.method public disable(II)V
    .locals 4
    .param p1, "channel"    # I
    .param p2, "slot"    # I

    .line 297
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v1, v1, p1

    const/4 v2, 0x1

    shl-int v3, v2, p2

    not-int v3, v3

    and-int/2addr v1, v3

    aput v1, v0, p1

    .line 298
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, p1

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->clear(II)V

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v2

    if-nez v0, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->disableSensor()V

    .line 305
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR] [ CH0 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , CH1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void
.end method

.method protected disableSensor()V
    .locals 10

    .line 319
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensorEnabled:Z

    const-string v1, "MotionRecognitionService"

    if-eqz v0, :cond_4

    .line 320
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v2, 0x10018

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 325
    const-wide v4, 0x200000000L

    invoke-virtual {p0, v4, v5, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->setTunerGrip(JZ)V

    .line 326
    const-wide v4, 0x400000000L

    invoke-virtual {p0, v4, v5, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->setTunerGrip(JZ)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v2, 0x10064

    if-ne v0, v2, :cond_2

    .line 328
    const-wide v4, 0x10000000000L

    invoke-virtual {p0, v4, v5, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->setTunerGrip(JZ)V

    .line 329
    const-wide v4, 0x20000000000L

    invoke-virtual {p0, v4, v5, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->setTunerGrip(JZ)V

    .line 331
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 332
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmPrevRegistrations(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v5, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    .line 333
    iput-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensorEnabled:Z

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SAR] disable ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 321
    :cond_3
    :goto_1
    const-string v0, "[SAR] disableSensor sensormanager or listener is null"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void

    .line 336
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SAR] disableSensor already disabled "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensorEnabled:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_2
    return-void
.end method

.method public enable(II)V
    .locals 5
    .param p1, "channel"    # I
    .param p2, "slot"    # I

    .line 289
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v0, v0, v2

    if-nez v0, :cond_0

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->enableSensor()V

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v3, v3, p1

    shl-int v4, v2, p2

    or-int/2addr v3, v4

    aput v3, v0, p1

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR] [ CH0 : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] , [ CH1 : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return-void
.end method

.method protected enableSensor()V
    .locals 7

    .line 309
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensorEnabled:Z

    if-nez v0, :cond_2

    .line 310
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 311
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] enable ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensorEnabled:Z

    .line 313
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 314
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmPrevRegistrations(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    goto :goto_1

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 316
    :cond_2
    :goto_1
    return-void
.end method

.method public getSarDevice(I)J
    .locals 2
    .param p1, "channel"    # I

    .line 284
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->getDevice(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public abstract onHeadSetStatusChanged(I)V
.end method

.method public abstract onSensorChanged(Landroid/hardware/SensorEvent;)V
.end method

.method public abstract onTAStatusChanged(Z)V
.end method

.method protected setBackOff(I)V
    .locals 2
    .param p1, "channel"    # I

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setBackOff channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->set(II)V

    .line 343
    return-void
.end method

.method protected setLeftRightHand(I)V
    .locals 4
    .param p1, "state"    # I

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setLeftRightHand state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mEnabledSlots:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-eqz v0, :cond_2

    .line 360
    const/16 v0, 0x64

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->clear(II)V

    .line 362
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->clear(II)V

    goto :goto_0

    .line 363
    :cond_0
    const/16 v0, 0x65

    if-ne p1, v0, :cond_1

    .line 364
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->set(II)V

    goto :goto_0

    .line 365
    :cond_1
    const/16 v0, 0x66

    if-ne p1, v0, :cond_2

    .line 366
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    iget v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mIndex:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->set(II)V

    .line 369
    :cond_2
    :goto_0
    return-void
.end method

.method public setTunerGrip(JZ)V
    .locals 1
    .param p1, "deviceId"    # J
    .param p3, "state"    # Z

    .line 373
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->tunerGrip(JZ)V

    .line 374
    return-void
.end method

.method protected setUnknownMode(II)V
    .locals 2
    .param p1, "channel"    # I
    .param p2, "state"    # I

    .line 351
    if-eqz p2, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " setUnknownMode channel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " , state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$GripSensorWrapper;->mSarDevice:Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/gesture/MotionRecognitionSAR$SarDevice;->unknownMode(II)V

    .line 354
    return-void
.end method
