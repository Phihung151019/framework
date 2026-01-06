.class Lcom/samsung/android/gesture/PocketProximityManager$1;
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

    .line 291
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketProximityManager$1;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 307
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 294
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 295
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

    .line 296
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager$1;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/gesture/PocketProximityManager;->setProxDelayTime(J)V

    .line 297
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager$1;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/PocketProximityManager;->setPocketSensorReceived(Z)V

    .line 299
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager$1;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateOut()V

    goto :goto_0

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/gesture/PocketProximityManager$1;->this$0:Lcom/samsung/android/gesture/PocketProximityManager;

    invoke-virtual {v1}, Lcom/samsung/android/gesture/PocketProximityManager;->setStateIn()V

    .line 303
    :goto_0
    return-void
.end method
