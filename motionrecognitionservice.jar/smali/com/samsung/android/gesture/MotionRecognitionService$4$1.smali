.class Lcom/samsung/android/gesture/MotionRecognitionService$4$1;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/MotionRecognitionService$4;->onVibratorStateChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/MotionRecognitionService$4;

.field final synthetic val$isVibratorOn:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService$4;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/gesture/MotionRecognitionService$4;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 583
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionService$4;

    iput-boolean p2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4$1;->val$isVibratorOn:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 586
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionService$4;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmVibratorOn(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v0

    iget-boolean v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4$1;->val$isVibratorOn:Z

    if-ne v0, v1, :cond_0

    .line 587
    return-void

    .line 590
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [F

    .line 591
    .local v1, "injectData":[F
    iget-boolean v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4$1;->val$isVibratorOn:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    aput v2, v1, v3

    .line 592
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionService$4;

    iget-object v2, v2, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 593
    .local v0, "sensor":Landroid/hardware/Sensor;
    const v2, 0x10000005

    invoke-static {v0, v2, v1}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v2

    .line 596
    .local v2, "info":Landroid/hardware/SensorAdditionalInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inject vibrator info = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v3, v1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MotionRecognitionService"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionService$4;

    iget-object v3, v3, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionService;)Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 598
    const-string v3, "vibrator info injectSensorData failed "

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 600
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionService$4;

    iget-object v3, v3, Lcom/samsung/android/gesture/MotionRecognitionService$4;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    iget-boolean v4, p0, Lcom/samsung/android/gesture/MotionRecognitionService$4$1;->val$isVibratorOn:Z

    invoke-static {v3, v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmVibratorOn(Lcom/samsung/android/gesture/MotionRecognitionService;Z)V

    .line 603
    :goto_1
    return-void
.end method
