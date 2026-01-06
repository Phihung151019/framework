.class Lcom/samsung/android/gesture/ElevatorModeEvent$1;
.super Ljava/lang/Object;
.source "ElevatorModeEvent.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/ElevatorModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/ElevatorModeEvent;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/ElevatorModeEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/ElevatorModeEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent$1;->this$0:Lcom/samsung/android/gesture/ElevatorModeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 198
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 179
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 181
    .local v0, "sensorType":I
    const/4 v1, 0x3

    sparse-switch v0, :sswitch_data_0

    goto :goto_2

    .line 191
    :sswitch_0
    iget-object v1, p0, Lcom/samsung/android/gesture/ElevatorModeEvent$1;->this$0:Lcom/samsung/android/gesture/ElevatorModeEvent;

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    iput v2, v1, Lcom/samsung/android/gesture/ElevatorModeEvent;->baroData:F

    goto :goto_2

    .line 187
    :sswitch_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 188
    iget-object v3, p0, Lcom/samsung/android/gesture/ElevatorModeEvent$1;->this$0:Lcom/samsung/android/gesture/ElevatorModeEvent;

    iget-object v3, v3, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrMagData:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    aput v4, v3, v2

    .line 187
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    .end local v2    # "i":I
    :cond_0
    goto :goto_2

    .line 183
    :sswitch_2
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 184
    iget-object v3, p0, Lcom/samsung/android/gesture/ElevatorModeEvent$1;->this$0:Lcom/samsung/android/gesture/ElevatorModeEvent;

    iget-object v3, v3, Lcom/samsung/android/gesture/ElevatorModeEvent;->arrAccData:[F

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    aput v4, v3, v2

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 185
    .end local v2    # "i":I
    :cond_1
    nop

    .line 194
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x6 -> :sswitch_0
    .end sparse-switch
.end method
