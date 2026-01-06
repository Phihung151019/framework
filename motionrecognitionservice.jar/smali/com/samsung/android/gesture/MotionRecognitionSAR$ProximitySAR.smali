.class Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProximitySAR"
.end annotation


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field mEnabledSlot:I

.field private mLastProximityValue:S

.field mProximityListener:Landroid/hardware/SensorEventListener;

.field mProximitySensor:Landroid/hardware/Sensor;

.field mReceiverEnabled:Z

.field mSensorEnabled:Z

.field mainGripVersion:I

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method static bridge synthetic -$$Nest$fgetmLastProximityValue(Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;)S
    .locals 0

    iget-short p0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mLastProximityValue:S

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmLastProximityValue(Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;S)V
    .locals 0

    iput-short p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mLastProximityValue:S

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Landroid/hardware/Sensor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .param p2, "prox"    # Landroid/hardware/Sensor;
    .param p3, "mainGrip"    # Landroid/hardware/Sensor;
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

    .line 393
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    const/4 v0, 0x5

    iput-short v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mLastProximityValue:S

    .line 391
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mainGripVersion:I

    .line 394
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mReceiverEnabled:Z

    .line 395
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mSensorEnabled:Z

    .line 396
    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    .line 397
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximitySensor:Landroid/hardware/Sensor;

    .line 400
    if-eqz p3, :cond_0

    .line 401
    invoke-virtual {p3}, Landroid/hardware/Sensor;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mainGripVersion:I

    .line 404
    :cond_0
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 417
    return-void
.end method

.method private disableSensor()V
    .locals 7

    .line 449
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mSensorEnabled:Z

    if-eqz v0, :cond_2

    .line 450
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximityListener:Landroid/hardware/SensorEventListener;

    if-nez v0, :cond_0

    goto :goto_0

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 452
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmPrevRegistrations(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    .line 453
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mSensorEnabled:Z

    goto :goto_1

    .line 450
    :cond_1
    :goto_0
    return-void

    .line 455
    :cond_2
    :goto_1
    return-void
.end method

.method private enableSensor()V
    .locals 7

    .line 440
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mSensorEnabled:Z

    if-nez v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximitySensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximitySensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 443
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmPrevRegistrations(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mSensorEnabled:Z

    goto :goto_1

    .line 441
    :cond_1
    :goto_0
    return-void

    .line 446
    :cond_2
    :goto_1
    return-void
.end method

.method private isAudioPathEarpiece()Z
    .locals 4

    .line 496
    const/4 v0, 0x1

    .line 497
    .local v0, "DEVICE_OUT_EARPIECE":I
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 498
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmContext(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mAudioManager:Landroid/media/AudioManager;

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->semGetCurrentDeviceType()I

    move-result v1

    .line 501
    .local v1, "currentDeviceType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SAR] currentDeviceType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotionRecognitionService"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public disable(I)V
    .locals 2
    .param p1, "slot"    # I

    .line 431
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    not-int v1, v1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] PROX disable, slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnabledSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    if-nez v0, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->disableSensor()V

    .line 437
    :cond_0
    return-void
.end method

.method public enable(I)V
    .locals 2
    .param p1, "slot"    # I

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] PROX enable, slot = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnabledSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    if-nez v0, :cond_0

    .line 423
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mReceiverEnabled:Z

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->enableSensor()V

    .line 427
    :cond_0
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    const/4 v1, 0x1

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    .line 428
    return-void
.end method

.method public onHeadSetStatusChanged(I)V
    .locals 3
    .param p1, "state"    # I

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[EARJACK] state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mainGripVersion:I

    const/16 v2, 0x200

    if-eq v0, v2, :cond_0

    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mainGripVersion:I

    const/16 v2, 0x600

    if-ne v0, v2, :cond_1

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->updateBackOffStatus()V

    .line 462
    const-string v0, "[EARJACK] Set earjack state"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_1
    return-void
.end method

.method public onReceiverChanged(Z)V
    .locals 1
    .param p1, "state"    # Z

    .line 467
    iput-boolean p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mReceiverEnabled:Z

    .line 468
    iget v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mEnabledSlot:I

    if-eqz v0, :cond_1

    .line 470
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mReceiverEnabled:Z

    if-eqz v0, :cond_0

    .line 471
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->enableSensor()V

    goto :goto_0

    .line 473
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->disableSensor()V

    .line 475
    :cond_1
    :goto_0
    return-void
.end method

.method protected updateBackOffStatus()V
    .locals 5

    .line 478
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mProximitySensor:Landroid/hardware/Sensor;

    const-string v1, "MotionRecognitionService"

    if-nez v0, :cond_0

    .line 479
    const-string v0, "[SAR] Not support Proximity Sensor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 482
    :cond_0
    const-string v0, "[SAR] Check audio path"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-direct {p0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->isAudioPathEarpiece()Z

    move-result v0

    .line 484
    .local v0, "path":Z
    iget-short v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->mLastProximityValue:S

    const-wide/16 v3, 0x2

    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 485
    const-string v2, "[SAR] set SAR_DEVICE_PROX"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    const/4 v2, 0x1

    invoke-static {v1, v3, v4, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    goto :goto_0

    .line 489
    :cond_1
    const-string v2, "[SAR] clear SAR_DEVICE_PROX"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    const/4 v2, 0x0

    invoke-static {v1, v3, v4, v2}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 493
    :goto_0
    return-void
.end method
