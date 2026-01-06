.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;
.super Landroid/os/Handler;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;-><init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;
    .param p2, "arg0"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;->val$this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 355
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;

    .line 356
    .local v0, "t":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    invoke-static {v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->-$$Nest$fgetmSensorHubEventListener(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEventListener;->onGetSensorHubData(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;)V

    .line 357
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate$1;->this$1:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;

    iget-object v1, v1, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$ListenerDelegate;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-$$Nest$fgetmPool(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SensorHubEventPool;->returnEvent(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubEvent;)V

    .line 358
    return-void
.end method
