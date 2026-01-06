.class Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FoldingSAR"
.end annotation


# instance fields
.field mFoldingSensor:Landroid/hardware/Sensor;

.field mFoldingSensorEnabled:Z

.field mFoldingState:Z

.field mSensorListener:Landroid/hardware/SensorEventListener;

.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;)V
    .locals 1
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSAR;
    .param p2, "folding"    # Landroid/hardware/Sensor;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 512
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 509
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensorEnabled:Z

    .line 510
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingState:Z

    .line 513
    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensor:Landroid/hardware/Sensor;

    .line 514
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensorEnabled:Z

    .line 515
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingState:Z

    .line 517
    new-instance v0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR$1;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;Lcom/samsung/android/gesture/MotionRecognitionSAR;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 530
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 7

    .line 546
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensorEnabled:Z

    const-string v1, "MotionRecognitionService"

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SAR] disable ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensor:Landroid/hardware/Sensor;

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

    .line 549
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 550
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmPrevRegistrations(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    .line 551
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensorEnabled:Z

    goto :goto_0

    .line 553
    :cond_1
    const-string v0, "[SAR] Folding Sensor already disabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    :goto_0
    return-void
.end method

.method public enable()V
    .locals 7

    .line 533
    iget-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensorEnabled:Z

    const-string v1, "MotionRecognitionService"

    if-nez v0, :cond_1

    .line 534
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 535
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SAR] enable ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensor:Landroid/hardware/Sensor;

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

    .line 536
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensor:Landroid/hardware/Sensor;

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 537
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    const-wide v1, 0x400000000000L

    iget-boolean v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingState:Z

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 538
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$fgetmPrevRegistrations(Lcom/samsung/android/gesture/MotionRecognitionSAR;)Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v3

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v2, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/samsung/android/gesture/MotionRecognitionSAR$PreviousRegistrations;->add(ZILjava/lang/String;J)V

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensorEnabled:Z

    goto :goto_0

    .line 541
    :cond_1
    const-string v0, "[SAR] Folding Sensor already enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :goto_0
    return-void
.end method

.method protected updateBackOffStatus(I)V
    .locals 5
    .param p1, "foldingState"    # I

    .line 558
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_0

    .line 559
    const-string v0, "MotionRecognitionService"

    const-string v1, "[SAR] Not support Hinge angle Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    return-void

    .line 562
    :cond_0
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 563
    .local v0, "state":Z
    :goto_0
    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingState:Z

    if-eq v1, v0, :cond_2

    .line 564
    iput-boolean v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingState:Z

    .line 565
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    const-wide v2, 0x400000000000L

    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$FoldingSAR;->mFoldingState:Z

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionSAR;->-$$Nest$msetTransmitPower(Lcom/samsung/android/gesture/MotionRecognitionSAR;JZ)V

    .line 567
    :cond_2
    return-void
.end method
