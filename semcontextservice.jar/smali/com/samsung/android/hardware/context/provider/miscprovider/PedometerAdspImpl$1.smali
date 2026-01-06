.class Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$1;
.super Ljava/lang/Object;
.source "PedometerAdspImpl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 67
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 72
    iget-object v0, p0, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl$1;->this$0:Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;

    invoke-static {v0, p1}, Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;->-$$Nest$mparseEvent(Lcom/samsung/android/hardware/context/provider/miscprovider/PedometerAdspImpl;Landroid/hardware/SensorEvent;)V

    .line 73
    return-void
.end method
