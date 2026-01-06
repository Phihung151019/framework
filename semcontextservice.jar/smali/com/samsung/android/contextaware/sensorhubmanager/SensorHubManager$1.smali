.class Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$1;
.super Landroid/os/Handler;
.source "SensorHubManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->initSensorManager()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;
    .param p2, "arg0"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 442
    iput-object p1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$1;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 446
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 448
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;

    .line 449
    .local v0, "info":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;
    monitor-enter v0

    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$1;->this$0:Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;->-$$Nest$fgetmSensorManager(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->-$$Nest$fgetmInfo(Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;)Landroid/hardware/SensorAdditionalInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->setOperationParameter(Landroid/hardware/SensorAdditionalInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    const-string v1, "SensorHubManager"

    const-string v2, "injectSensorData failed "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;->mIsDone:Z

    .line 455
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 456
    monitor-exit v0

    .line 457
    goto :goto_0

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 461
    .end local v0    # "info":Lcom/samsung/android/contextaware/sensorhubmanager/SensorHubManager$SContextInfo;
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 462
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
