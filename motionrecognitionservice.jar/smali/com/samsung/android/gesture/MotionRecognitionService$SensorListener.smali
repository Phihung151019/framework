.class Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;
.super Ljava/lang/Object;
.source "MotionRecognitionService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/MotionRecognitionService;


# direct methods
.method private constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1721
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionService;Lcom/samsung/android/gesture/MotionRecognitionService-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;-><init>(Lcom/samsung/android/gesture/MotionRecognitionService;)V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "arg0"    # Landroid/hardware/Sensor;
    .param p2, "arg1"    # I

    .line 1724
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 1728
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10017

    const/4 v2, 0x1

    const-string v3, "MotionRecognitionService"

    const/4 v4, 0x0

    if-ne v0, v1, :cond_3

    .line 1729
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    .line 1730
    .local v0, "v1":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1, v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$msendMotionEvent(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1732
    const/16 v1, 0x47

    if-eq v0, v1, :cond_1

    const/16 v1, 0x63

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1734
    :cond_0
    const/16 v1, 0x6f

    if-eq v0, v1, :cond_2

    .line 1735
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1, v4}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmIsFlat(Lcom/samsung/android/gesture/MotionRecognitionService;Z)V

    goto :goto_1

    .line 1733
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmIsFlat(Lcom/samsung/android/gesture/MotionRecognitionService;Z)V

    .line 1736
    .end local v0    # "v1":I
    :cond_2
    :goto_1
    goto :goto_3

    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10049

    if-ne v0, v1, :cond_5

    .line 1737
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    float-to-int v0, v0

    .line 1738
    .local v0, "value":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onSensorChanged, SEM_TYPE_POCKET_DETECTOR : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    if-nez v0, :cond_4

    .line 1740
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v1

    const/16 v5, 0x5c

    invoke-virtual {v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1742
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;

    move-result-object v1

    const/16 v5, 0x5d

    invoke-virtual {v1, v5}, Lcom/samsung/android/gesture/MotionRecognitionService$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_2

    .line 1744
    .end local v0    # "value":I
    :cond_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1009f

    if-ne v0, v1, :cond_6

    .line 1745
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;I)V

    .line 1746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSensorChanged, SEM_TYPE_FOLDING_STATE : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmFoldingState(Lcom/samsung/android/gesture/MotionRecognitionService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1744
    :cond_6
    :goto_2
    nop

    .line 1749
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmEnableCalibratedLux(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1750
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10050

    if-ne v0, v1, :cond_c

    .line 1751
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CalibratedLux event happens = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1752
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmMotionSettings(Lcom/samsung/android/gesture/MotionRecognitionService;)Lcom/samsung/android/gesture/MotionRecognitionSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionSettings;->isAdaptiveBrightnessEnabled()I

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    const/high16 v5, -0x40000000    # -2.0f

    if-ne v0, v2, :cond_a

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$mgetFaceStatus(Lcom/samsung/android/gesture/MotionRecognitionService;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1753
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;)F

    move-result v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_8

    .line 1754
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    cmpl-float v0, v0, v1

    if-nez v0, :cond_7

    .line 1755
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->startAdaptiveBrightness()V

    goto :goto_4

    .line 1756
    :cond_7
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    cmpl-float v0, v0, v5

    if-nez v0, :cond_9

    .line 1757
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->stopAdaptiveBrightness()V

    goto :goto_4

    .line 1760
    :cond_8
    const-string v0, "Status of calibratedlux is same. skip event!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;F)V

    goto :goto_5

    .line 1763
    :cond_a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v4

    cmpl-float v0, v0, v5

    const/4 v2, 0x0

    if-nez v0, :cond_b

    .line 1764
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fgetmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    .line 1765
    const-string v0, "Face unlock is enabled and sABC service is started, stop sABC service"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1766
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionService;->stopAdaptiveBrightness()V

    .line 1767
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;F)V

    goto :goto_5

    .line 1770
    :cond_b
    const-string v0, "Face unlock is enabled or adaptive brightness disabled, skip to start/stop sABC"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionService$SensorListener;->this$0:Lcom/samsung/android/gesture/MotionRecognitionService;

    invoke-static {v0, v2}, Lcom/samsung/android/gesture/MotionRecognitionService;->-$$Nest$fputmLastCalibratedLuxStatus(Lcom/samsung/android/gesture/MotionRecognitionService;F)V

    .line 1775
    :cond_c
    :goto_5
    return-void
.end method
