.class Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;
.super Ljava/lang/Object;
.source "PostProcessingManager.java"

# interfaces
.implements Lcom/samsung/android/server/uwb/postprocessor/UwbSensorManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->registerSensorListener(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;->this$0:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "sensorEvent"    # Landroid/hardware/SensorEvent;

    .line 60
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 72
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;->this$0:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->-$$Nest$fgetmGyroscope(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)[F

    move-result-object v0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v0, v3

    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;->this$0:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->-$$Nest$fgetmGyroscope(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)[F

    move-result-object v0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    aput v3, v0, v2

    .line 74
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;->this$0:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->-$$Nest$fgetmGyroscope(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)[F

    move-result-object v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    aput v2, v0, v1

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;->this$0:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->-$$Nest$fgetmOrientation(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)[F

    move-result-object v0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v0, v3

    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;->this$0:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->-$$Nest$fgetmOrientation(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)[F

    move-result-object v0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    aput v3, v0, v2

    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;->this$0:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->-$$Nest$fgetmOrientation(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)[F

    move-result-object v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    aput v2, v0, v1

    .line 65
    goto :goto_0

    .line 67
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;->this$0:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->-$$Nest$fgetmAccelerometer(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)[F

    move-result-object v0

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v3

    aput v4, v0, v3

    .line 68
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;->this$0:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->-$$Nest$fgetmAccelerometer(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)[F

    move-result-object v0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v2

    aput v3, v0, v2

    .line 69
    iget-object v0, p0, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager$1;->this$0:Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;

    invoke-static {v0}, Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;->-$$Nest$fgetmAccelerometer(Lcom/samsung/android/server/uwb/postprocessor/PostProcessingManager;)[F

    move-result-object v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v1

    aput v2, v0, v1

    .line 70
    nop

    .line 77
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
