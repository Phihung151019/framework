.class Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;
.super Ljava/lang/Object;
.source "MotionRecognitionBrightnessHandler.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 31
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(F)V
    .locals 6
    .param p1, "brightness"    # F

    .line 34
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->-$$Nest$fgetmSensor(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)Landroid/hardware/Sensor;

    move-result-object v0

    const-string v1, "BrightnessHandler"

    if-nez v0, :cond_0

    .line 35
    const-string v0, "not support Light Sensor "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void

    .line 38
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 39
    .local v0, "bright":[F
    invoke-static {p1}, Lcom/android/internal/display/BrightnessSynchronizer;->brightnessFloatToInt(F)I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 40
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->-$$Nest$fgetmSensor(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)Landroid/hardware/Sensor;

    move-result-object v2

    const/high16 v4, 0x10000000

    invoke-static {v2, v4, v0}, Landroid/hardware/SensorAdditionalInfo;->createCustomInfo(Landroid/hardware/Sensor;I[F)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v2

    .line 42
    .local v2, "info":Landroid/hardware/SensorAdditionalInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "inject brightness = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Brightness: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler$1;->this$0:Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/gesture/MotionRecognitionBrightnessHandler;)Landroid/hardware/SensorManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 44
    const-string v3, "brightness injectSensorData failed "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :cond_1
    return-void
.end method
