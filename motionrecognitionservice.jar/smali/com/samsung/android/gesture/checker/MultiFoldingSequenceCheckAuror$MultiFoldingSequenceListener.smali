.class Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;
.super Ljava/lang/Object;
.source "MultiFoldingSequenceCheckAuror.java"

# interfaces
.implements Landroid/hardware/SensorEventListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiFoldingSequenceListener"
.end annotation


# instance fields
.field private mRegistered:Z

.field private final mSensor:Landroid/hardware/Sensor;

.field final synthetic this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iget-object p1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    invoke-static {p1}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)Landroid/hardware/SensorManager;

    move-result-object p1

    const v0, 0x100ae

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->mSensor:Landroid/hardware/Sensor;

    .line 326
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->mRegistered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;-><init>(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 350
    return-void
.end method

.method public onFlushCompleted(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 354
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 330
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x100ae

    if-ne v0, v1, :cond_0

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FLD_SEQ] FOLD_MON EVENTS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    float-to-int v0, v0

    .line 340
    .local v0, "v0":I
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    .line 341
    .local v2, "v1":I
    if-ne v0, v3, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 342
    const-string v3, "[FLD_SEQ] FOLDING DETECTED IN REVERSE ORDER !!"

    invoke-static {v1, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    invoke-static {v1}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$fgetmMultiFoldingSeqHandler(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x2bc

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 346
    .end local v0    # "v0":I
    .end local v2    # "v1":I
    :cond_0
    return-void
.end method

.method register()V
    .locals 3

    .line 357
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->mRegistered:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    invoke-static {v0}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->mSensor:Landroid/hardware/Sensor;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->mRegistered:Z

    .line 362
    iget-boolean v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->mRegistered:Z

    const-string v1, "SENSORBD"

    if-eqz v0, :cond_1

    .line 363
    const-string v0, "[FLD_SEQ] Register ReverserFoldingListener Success!!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_1
    const-string v0, "[FLD_SEQ] Register ReverserFoldingListener Failed!!"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-void

    .line 358
    :cond_2
    :goto_1
    return-void
.end method

.method unregister()V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->mRegistered:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 374
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->this$0:Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;

    invoke-static {v0}, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/checker/MultiFoldingSequenceCheckAuror$MultiFoldingSequenceListener;->mRegistered:Z

    .line 376
    const-string v0, "SENSORBD"

    const-string v1, "[FLD_SEQ] Unregister ReverserFoldingListener!!"

    invoke-static {v0, v1}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    return-void

    .line 371
    :cond_1
    :goto_0
    return-void
.end method
