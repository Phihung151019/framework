.class Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR$1;
.super Ljava/lang/Object;
.source "MotionRecognitionSAR.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;-><init>(Lcom/samsung/android/gesture/MotionRecognitionSAR;Landroid/hardware/Sensor;Landroid/hardware/Sensor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

.field final synthetic val$this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;Lcom/samsung/android/gesture/MotionRecognitionSAR;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;
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

    .line 404
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    iput-object p2, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR$1;->val$this$0:Lcom/samsung/android/gesture/MotionRecognitionSAR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "i"    # I

    .line 415
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 407
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 408
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    int-to-short v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->-$$Nest$fputmLastProximityValue(Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;S)V

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SAR] get Proximity value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->-$$Nest$fgetmLastProximityValue(Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;)S

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotionRecognitionService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSAR$ProximitySAR;->updateBackOffStatus()V

    .line 412
    :cond_0
    return-void
.end method
