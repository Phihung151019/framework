.class Lcom/android/commands/uinput/Device$DeviceCallback;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uinput/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/uinput/Device;


# direct methods
.method private constructor <init>(Lcom/android/commands/uinput/Device;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 303
    iput-object p1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/uinput/Device;Lcom/android/commands/uinput/Device-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/commands/uinput/Device$DeviceCallback;-><init>(Lcom/android/commands/uinput/Device;)V

    return-void
.end method


# virtual methods
.method public onDeviceConfigure(I)V
    .locals 5
    .param p1, "handle"    # I

    .line 309
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmConfiguration(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmConfiguration(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 311
    .local v1, "key":I
    iget-object v2, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v2}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmConfiguration(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 312
    .local v2, "data":[I
    invoke-static {p1, v1, v2}, Lcom/android/commands/uinput/Device;->-$$Nest$smnativeConfigure(II[I)V

    .line 309
    .end local v1    # "key":I
    .end local v2    # "data":[I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 315
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v0}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmAbsInfo(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmAbsInfo(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmAbsInfo(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 318
    .restart local v1    # "key":I
    iget-object v2, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v2}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmAbsInfo(Lcom/android/commands/uinput/Device;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsrc/com/android/commands/uinput/InputAbsInfo;

    .line 319
    .local v2, "info":Lsrc/com/android/commands/uinput/InputAbsInfo;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 320
    .local v3, "parcel":Landroid/os/Parcel;
    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lsrc/com/android/commands/uinput/InputAbsInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 321
    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 322
    invoke-static {p1, v1, v3}, Lcom/android/commands/uinput/Device;->-$$Nest$smnativeSetAbsInfo(IILandroid/os/Parcel;)V

    .line 316
    .end local v1    # "key":I
    .end local v2    # "info":Lsrc/com/android/commands/uinput/InputAbsInfo;
    .end local v3    # "parcel":Landroid/os/Parcel;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method public onDeviceError()V
    .locals 2

    .line 340
    const-string v0, "UinputDevice"

    const-string v1, "Device error occurred, closing /dev/uinput"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v0}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/uinput/Device;)Lcom/android/commands/uinput/Device$DeviceHandler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/commands/uinput/Device$DeviceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 342
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 343
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 344
    return-void
.end method

.method public onDeviceOpen()V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v0}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/uinput/Device;)Lcom/android/commands/uinput/Device$DeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/commands/uinput/Device$DeviceHandler;->resumeEvents()V

    .line 306
    return-void
.end method

.method public onDeviceVibrating(I)V
    .locals 4
    .param p1, "value"    # I

    .line 328
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 330
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "reason"

    const-string v2, "vibrating"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 331
    const-string v1, "id"

    iget-object v2, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v2}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmId(Lcom/android/commands/uinput/Device;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 332
    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    nop

    .line 336
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceCallback;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1, v0}, Lcom/android/commands/uinput/Device;->-$$Nest$mwriteOutputObject(Lcom/android/commands/uinput/Device;Lorg/json/JSONObject;)V

    .line 337
    return-void

    .line 333
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not create JSON object "

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
