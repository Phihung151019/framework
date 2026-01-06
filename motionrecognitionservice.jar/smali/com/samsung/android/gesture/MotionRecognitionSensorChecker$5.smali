.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;
.super Ljava/lang/Object;
.source "MotionRecognitionSensorChecker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2087
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 2090
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 2093
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2094
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 2095
    .local v1, "type":I
    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    .line 2096
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    if-ge v6, v2, :cond_1

    .line 2097
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    aget-object v2, v2, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v4

    aput v6, v2, v4

    .line 2098
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    aput v4, v2, v5

    .line 2099
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v2, v3

    .line 2100
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    goto :goto_0

    .line 2102
    :cond_0
    const/4 v6, 0x4

    if-ne v1, v6, :cond_1

    .line 2103
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    if-ge v6, v2, :cond_1

    .line 2104
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v6

    aget-object v2, v2, v6

    iget-object v6, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v6, v6, v4

    aput v6, v2, v4

    .line 2105
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v5

    aput v4, v2, v5

    .line 2106
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v4

    aget-object v2, v2, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v2, v3

    .line 2107
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    add-int/2addr v3, v5

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2111
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mcheckFreeFallSensorDisabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2113
    const-string v2, "SENSORBD"

    const-string v3, "disable free fall sensor event1!"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2114
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mdisableFreeFallSensorEvent(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 2115
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$5;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$msendFreeFallEventToBigDataServer(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 2117
    :cond_2
    return-void
.end method
