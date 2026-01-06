.class Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;
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

    .line 2120
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 2123
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 2126
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2127
    .local v0, "sensor":Landroid/hardware/Sensor;
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 2128
    .local v1, "type":I
    const v2, 0x10097

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v1, v2, :cond_0

    .line 2129
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 2130
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    aput v3, v2, v5

    .line 2131
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    aput v3, v2, v6

    .line 2132
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    aput v3, v2, v4

    .line 2133
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallSubAccelEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    goto :goto_0

    .line 2135
    :cond_0
    const v2, 0x10099

    if-ne v1, v2, :cond_1

    .line 2136
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 2137
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v5

    aput v3, v2, v5

    .line 2138
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v6

    aput v3, v2, v6

    .line 2139
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroData(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)[[F

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    aget-object v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    aput v3, v2, v4

    .line 2140
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fgetmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)I

    move-result v3

    add-int/2addr v3, v6

    invoke-static {v2, v3}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$fputmFreeFallSubGyroEventCnt(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;I)V

    .line 2144
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mcheckFreeFallSensorDisabled(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2145
    const-string v2, "SENSORBD"

    const-string v3, "disable free fall sensor event2!"

    invoke-static {v2, v3}, Lcom/samsung/android/util/SemLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$mdisableFreeFallSensorEvent(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 2147
    iget-object v2, p0, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker$6;->this$0:Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;

    invoke-static {v2}, Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;->-$$Nest$msendFreeFallEventToBigDataServer(Lcom/samsung/android/gesture/MotionRecognitionSensorChecker;)V

    .line 2149
    :cond_2
    return-void
.end method
