.class public Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;
.super Ljava/lang/Object;
.source "FaultDetector.java"

# interfaces
.implements Landroid/hardware/SensorEventListener2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/util/FaultDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StepCounterListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/context/util/FaultDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/util/FaultDetector;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 297
    iput-object p1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 320
    return-void
.end method

.method public onFlushCompleted(Landroid/hardware/Sensor;)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;

    .line 316
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 300
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2

    .line 301
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/util/FaultDetector;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmStarted(Lcom/samsung/android/hardware/context/util/FaultDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/util/FaultDetector;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 306
    .local v0, "message":Landroid/os/Message;
    if-eqz v0, :cond_2

    .line 307
    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    .line 308
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 309
    iget-object v1, p0, Lcom/samsung/android/hardware/context/util/FaultDetector$StepCounterListener;->this$0:Lcom/samsung/android/hardware/context/util/FaultDetector;

    invoke-static {v1}, Lcom/samsung/android/hardware/context/util/FaultDetector;->-$$Nest$fgetmHandler(Lcom/samsung/android/hardware/context/util/FaultDetector;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 302
    .end local v0    # "message":Landroid/os/Message;
    :cond_1
    :goto_0
    const-string v0, "FaultDetector[1.6]"

    const-string v1, "onSensorChanged: fdr not ready"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    .line 312
    :cond_2
    :goto_1
    return-void
.end method
