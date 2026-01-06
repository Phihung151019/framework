.class Lcom/android/commands/hid/Device$DeviceCallback;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/commands/hid/Device;


# direct methods
.method private constructor <init>(Lcom/android/commands/hid/Device;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 231
    iput-object p1, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/hid/Device;Lcom/android/commands/hid/Device-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/commands/hid/Device$DeviceCallback;-><init>(Lcom/android/commands/hid/Device;)V

    return-void
.end method

.method private sendReportOutput(BB[B)V
    .locals 4
    .param p1, "eventId"    # B
    .param p2, "rtype"    # B
    .param p3, "data"    # [B

    .line 264
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 266
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "eventId"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 267
    const-string v1, "deviceId"

    iget-object v2, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v2}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmId(Lcom/android/commands/hid/Device;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    const-string v1, "reportType"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 270
    .local v1, "dataArray":Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_0

    .line 271
    aget-byte v3, p3, v2

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v2    # "i":I
    :cond_0
    const-string v2, "reportData"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 276
    nop

    .line 278
    .end local v1    # "dataArray":Lorg/json/JSONArray;
    :try_start_1
    iget-object v1, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v1}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmOutputStream(Lcom/android/commands/hid/Device;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 279
    iget-object v1, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v1}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmOutputStream(Lcom/android/commands/hid/Device;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 282
    nop

    .line 283
    return-void

    .line 280
    :catch_0
    move-exception v1

    .line 281
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 274
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 275
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not create JSON object "

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public onDeviceError()V
    .locals 2

    .line 320
    const-string v0, "HidDevice"

    const-string v1, "Device error occurred, closing /dev/uhid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 322
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 323
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 324
    return-void
.end method

.method public onDeviceGetReport(II)V
    .locals 5
    .param p1, "requestId"    # I
    .param p2, "reportId"    # I

    .line 238
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmFeatureReports(Lcom/android/commands/hid/Device;)Landroid/util/SparseArray;

    move-result-object v0

    const-string v1, "HidDevice"

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received GET_REPORT request for reportId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", but \'feature_reports\' section is not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmFeatureReports(Lcom/android/commands/hid/Device;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 248
    .local v0, "report":[B
    if-nez v0, :cond_1

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested feature report "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not specified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    :cond_1
    iget-object v1, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v1}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, v0}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 258
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 259
    iget-object v2, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v2}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v3}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmTimeToSend(Lcom/android/commands/hid/Device;)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/commands/hid/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 260
    return-void
.end method

.method public onDeviceOpen()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/commands/hid/Device$DeviceHandler;->resumeEvents()V

    .line 235
    return-void
.end method

.method public onDeviceOutput(B[B)V
    .locals 5
    .param p1, "rtype"    # B
    .param p2, "data"    # [B

    .line 296
    const/4 v0, 0x6

    invoke-direct {p0, v0, p1, p2}, Lcom/android/commands/hid/Device$DeviceCallback;->sendReportOutput(BB[B)V

    .line 297
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmOutputs(Lcom/android/commands/hid/Device;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "HidDevice"

    if-nez v0, :cond_0

    .line 298
    const-string v0, "Received OUTPUT request, but \'outputs\' section is not found"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-void

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmOutputs(Lcom/android/commands/hid/Device;)Ljava/util/Map;

    move-result-object v0

    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 302
    .local v0, "response":[B
    if-nez v0, :cond_1

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested response for output "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 305
    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 310
    :cond_1
    iget-object v1, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v1}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/commands/hid/Device$DeviceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 315
    .local v1, "msg":Landroid/os/Message;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 316
    iget-object v2, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v2}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmHandler(Lcom/android/commands/hid/Device;)Lcom/android/commands/hid/Device$DeviceHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v3}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmTimeToSend(Lcom/android/commands/hid/Device;)J

    move-result-wide v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/commands/hid/Device$DeviceHandler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 317
    return-void
.end method

.method public onDeviceSetReport(IB[B)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "rType"    # B
    .param p3, "data"    # [B

    .line 288
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceCallback;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0, p1}, Lcom/android/commands/hid/Device;->-$$Nest$fputmResponseId(Lcom/android/commands/hid/Device;I)V

    .line 291
    const/16 v0, 0xd

    invoke-direct {p0, v0, p2, p3}, Lcom/android/commands/hid/Device$DeviceCallback;->sendReportOutput(BB[B)V

    .line 292
    return-void
.end method
