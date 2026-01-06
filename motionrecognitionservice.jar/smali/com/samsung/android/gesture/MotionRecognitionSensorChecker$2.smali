.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;
.super Landroid/os/Handler;
.source "MotionRecognitionSensorChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;-><init>(Landroid/content/Context;Lcom/samsung/android/hardware/context/SemContextManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
    .param p2, "arg0"    # Landroid/os/Looper;
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

    .line 456
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorCheckingHandler : EVENT MSG = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SENSORBD"

    invoke-static {v1, v0}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 473
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mdisableFreeFallSensorEvent(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 474
    goto :goto_0

    .line 469
    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mforceStopSensor(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 471
    goto :goto_0

    .line 465
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 466
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mcheckSensorHubResetStatus(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;Landroid/os/Bundle;)V

    .line 467
    goto :goto_0

    .line 462
    .end local v0    # "bundle":Landroid/os/Bundle;
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$2;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->enableTestSensor()I

    .line 463
    nop

    .line 478
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 479
    return-void

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_3
        0x44 -> :sswitch_2
        0x55 -> :sswitch_1
        0x77 -> :sswitch_0
    .end sparse-switch
.end method
