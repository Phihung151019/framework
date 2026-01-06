.class Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper$1;
.super Ljava/lang/Object;
.source "SensorProxLpScanListenerWrapper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "event"    # I

    .line 40
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 44
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x10055

    if-ne v0, v1, :cond_0

    .line 45
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    .line 46
    .local v0, "mode":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;

    iget-object v1, v1, Lcom/samsung/android/hardware/secinputdev/external/SensorProxLpScanListenerWrapper;->listener:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;

    invoke-interface {v1, v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IServiceListener;->onLpScanSensorChanged(I)V

    .line 48
    .end local v0    # "mode":I
    :cond_0
    return-void
.end method
