.class Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;
.super Landroid/os/Handler;
.source "SemInputDeviceManagerService.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandlerMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    .line 191
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 192
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 196
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainHandler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 215
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetinitialOperation(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$InitialOperation;->update()V

    .line 216
    goto :goto_1

    .line 198
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetmotionHelper(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->forcePause()V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$mregisterCallbackWithRetries(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;I)I

    move-result v0

    .line 201
    .local v0, "ret":I
    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 202
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 203
    return-void

    .line 205
    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->setRecoveryState(Z)V

    .line 207
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v3}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetdeviceDisplayStates(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 208
    .local v4, "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;

    invoke-static {v5}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;->-$$Nest$fgetcurrentPowerState(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;)I

    move-result v5

    .line 209
    .local v5, "currentPowerState":I
    if-ne v5, v1, :cond_1

    .line 210
    iget-object v6, p0, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$MainHandler;->this$0:Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;

    invoke-static {v6}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;->-$$Nest$fgetmotionHelper(Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService;)Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;

    invoke-virtual {v6, v7, v2}, Lcom/samsung/android/hardware/secinputdev/SemInputDeviceMotionHelper;->restart(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Z)V

    .line 212
    .end local v4    # "element":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Device;Lcom/samsung/android/hardware/secinputdev/SemInputDeviceManagerService$DeviceDisplayState;>;"
    .end local v5    # "currentPowerState":I
    :cond_1
    goto :goto_0

    .line 213
    :cond_2
    nop

    .line 221
    .end local v0    # "ret":I
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
