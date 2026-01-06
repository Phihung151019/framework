.class Lcom/samsung/android/gesture/PocketProximityManager$4;
.super Ljava/lang/Object;
.source "PocketProximityManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketProximityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketProximityManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketProximityManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketProximityManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 684
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketProximityManager$4;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 713
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 687
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 688
    .local v0, "mProx":F
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSensorChanged : proxVal: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager$4;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxDelayTime(J)V

    .line 691
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    const/4 v2, 0x2

    if-lt v1, v2, :cond_0

    .line 692
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager$4;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fputluxRawData(Lcom/samsung/android/gesture/PocketProximityManager;I)V

    .line 693
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Light sensor for lite : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/gesture/PocketProximityManager$4;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v3}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetluxRawData(Lcom/samsung/android/gesture/PocketProximityManager;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 696
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager$4;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    goto :goto_0

    .line 697
    :cond_1
    cmpl-float v2, v0, v1

    if-nez v2, :cond_2

    .line 698
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager$4;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    goto :goto_0

    .line 701
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager$4;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v2}, Lcom/samsung/android/gesture/PocketProximityManager;->getPhysicalProx()F

    move-result v2

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    .line 702
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager$4;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    goto :goto_0

    .line 703
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager$4;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->getPhysicalProx()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 704
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager$4;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    .line 707
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager$4;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$fgetsensorManager(Lcom/samsung/android/gesture/PocketProximityManager;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gesture/PocketProximityManager$4;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    iget-object v2, v2, Lcom/samsung/android/gesture/PocketProximityManager;->sensorLiteProxEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 708
    invoke-static {}, Lcom/samsung/android/gesture/PocketProximityManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "unregister proximity lite sensor"

    invoke-static {v1, v2}, Lcom/samsung/android/gesture/PocketLogManager;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    return-void
.end method
