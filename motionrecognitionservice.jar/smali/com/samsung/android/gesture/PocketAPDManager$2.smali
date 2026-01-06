.class Lcom/samsung/android/gesture/PocketAPDManager$2;
.super Ljava/lang/Object;
.source "PocketAPDManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/PocketAPDManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gesture/PocketAPDManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/PocketAPDManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/gesture/PocketAPDManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lcom/samsung/android/gesture/PocketAPDManager$2;->this$0:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .line 285
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .line 274
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager$2;->this$0:Lcom/samsung/android/gesture/PocketAPDManager;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$fputmlux(Lcom/samsung/android/gesture/PocketAPDManager;I)V

    .line 276
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager$2;->this$0:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-static {v0}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$fgetmlux(Lcom/samsung/android/gesture/PocketAPDManager;)I

    move-result v0

    if-gez v0, :cond_0

    .line 277
    invoke-static {}, Lcom/samsung/android/gesture/PocketAPDManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Light sensor data is negative number"

    invoke-static {v0, v1}, Lcom/samsung/android/gesture/PocketLogManager;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/gesture/PocketAPDManager$2;->this$0:Lcom/samsung/android/gesture/PocketAPDManager;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/PocketAPDManager;->checkRegisterAPD()V

    .line 281
    return-void
.end method
