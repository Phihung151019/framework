.class Lcom/android/commands/uinput/Device$DeviceHandler;
.super Landroid/os/Handler;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/uinput/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceHandler"
.end annotation


# instance fields
.field private mBarrierToken:I

.field private mLastInjectTimestampMicros:J

.field private mPtr:J

.field final synthetic this$0:Lcom/android/commands/uinput/Device;


# direct methods
.method constructor <init>(Lcom/android/commands/uinput/Device;Landroid/os/Looper;)V
    .locals 2
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

    .line 194
    iput-object p1, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->this$0:Lcom/android/commands/uinput/Device;

    .line 195
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 191
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mLastInjectTimestampMicros:J

    .line 196
    return-void
.end method

.method private handleSyncEvent(Ljava/lang/String;)V
    .locals 4
    .param p1, "syncToken"    # Ljava/lang/String;

    .line 291
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 293
    .local v0, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "reason"

    const-string v2, "sync"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    const-string v1, "id"

    iget-object v2, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v2}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmId(Lcom/android/commands/uinput/Device;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 295
    const-string v1, "syncToken"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    nop

    .line 299
    iget-object v1, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v1, v0}, Lcom/android/commands/uinput/Device;->-$$Nest$mwriteOutputObject(Lcom/android/commands/uinput/Device;Lorg/json/JSONObject;)V

    .line 300
    return-void

    .line 296
    :catch_0
    move-exception v1

    .line 297
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Could not create JSON object "

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14
    .param p1, "msg"    # Landroid/os/Message;

    .line 200
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 276
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown device message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/commands/uinput/Device$DeviceHandler;->handleSyncEvent(Ljava/lang/String;)V

    .line 273
    goto/16 :goto_3

    .line 220
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 221
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-wide v3, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mPtr:J

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 223
    goto/16 :goto_3

    .line 225
    :cond_0
    iget-wide v1, v0, Lcom/android/internal/os/SomeArgs;->argl1:J

    .line 226
    .local v1, "offsetMicros":J
    iget-wide v3, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mLastInjectTimestampMicros:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    const-wide/16 v7, 0x3e8

    if-nez v3, :cond_1

    .line 241
    iget-wide v3, v0, Lcom/android/internal/os/SomeArgs;->argl2:J

    div-long/2addr v3, v7

    iput-wide v3, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mLastInjectTimestampMicros:J

    goto :goto_0

    .line 242
    :cond_1
    cmp-long v3, v1, v5

    if-nez v3, :cond_2

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeNanos()J

    move-result-wide v3

    div-long/2addr v3, v7

    iput-wide v3, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mLastInjectTimestampMicros:J

    goto :goto_0

    .line 246
    :cond_2
    iget-wide v3, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mLastInjectTimestampMicros:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mLastInjectTimestampMicros:J

    .line 249
    :goto_0
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, [I

    .line 250
    .local v3, "events":[I
    const/4 v4, 0x0

    .local v4, "pos":I
    :goto_1
    add-int/lit8 v5, v4, 0x2

    array-length v6, v3

    if-ge v5, v6, :cond_3

    .line 251
    iget-wide v7, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mPtr:J

    iget-wide v9, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mLastInjectTimestampMicros:J

    aget v11, v3, v4

    add-int/lit8 v5, v4, 0x1

    aget v12, v3, v5

    add-int/lit8 v5, v4, 0x2

    aget v13, v3, v5

    invoke-static/range {v7 .. v13}, Lcom/android/commands/uinput/Device;->-$$Nest$smnativeInjectEvent(JJIII)V

    .line 250
    add-int/lit8 v4, v4, 0x3

    goto :goto_1

    .line 254
    .end local v4    # "pos":I
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 255
    goto :goto_3

    .line 258
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v1    # "offsetMicros":J
    .end local v3    # "events":[I
    :pswitch_2
    iget-wide v3, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mPtr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    .line 259
    iget-wide v3, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mPtr:J

    invoke-static {v3, v4}, Lcom/android/commands/uinput/Device;->-$$Nest$smnativeCloseUinputDevice(J)V

    .line 260
    invoke-virtual {p0}, Lcom/android/commands/uinput/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 261
    iput-wide v1, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mPtr:J

    goto :goto_2

    .line 263
    :cond_4
    const-string v0, "UinputDevice"

    const-string v1, "Tried to close already closed device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :goto_2
    const-string v0, "UinputDevice"

    const-string v1, "Device closed."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v0}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmCond(Lcom/android/commands/uinput/Device;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->this$0:Lcom/android/commands/uinput/Device;

    invoke-static {v0}, Lcom/android/commands/uinput/Device;->-$$Nest$fgetmCond(Lcom/android/commands/uinput/Device;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 268
    monitor-exit v3

    .line 269
    goto :goto_3

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 202
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 203
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v4, v3

    check-cast v4, Ljava/lang/String;

    .line 204
    .local v4, "name":Ljava/lang/String;
    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v8, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi5:I

    iget v10, v0, Lcom/android/internal/os/SomeArgs;->argi6:I

    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v11, v3

    check-cast v11, Ljava/lang/String;

    new-instance v12, Lcom/android/commands/uinput/Device$DeviceCallback;

    iget-object v3, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->this$0:Lcom/android/commands/uinput/Device;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13}, Lcom/android/commands/uinput/Device$DeviceCallback;-><init>(Lcom/android/commands/uinput/Device;Lcom/android/commands/uinput/Device-IA;)V

    invoke-static/range {v4 .. v12}, Lcom/android/commands/uinput/Device;->-$$Nest$smnativeOpenUinputDevice(Ljava/lang/String;IIIIIILjava/lang/String;Lcom/android/commands/uinput/Device$DeviceCallback;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mPtr:J

    .line 209
    iget-wide v5, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mPtr:J

    cmp-long v1, v5, v1

    if-eqz v1, :cond_5

    .line 216
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 217
    nop

    .line 279
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "name":Ljava/lang/String;
    :goto_3
    return-void

    .line 210
    .restart local v0    # "args":Lcom/android/internal/os/SomeArgs;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not create uinput device \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 212
    .local v1, "ex":Ljava/lang/RuntimeException;
    const-string v2, "UinputDevice"

    const-string v3, "Couldn\'t create uinput device, exiting."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 213
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 214
    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pauseEvents()V
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/android/commands/uinput/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mBarrierToken:I

    .line 283
    return-void
.end method

.method public resumeEvents()V
    .locals 2

    .line 286
    invoke-virtual {p0}, Lcom/android/commands/uinput/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mBarrierToken:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/uinput/Device$DeviceHandler;->mBarrierToken:I

    .line 288
    return-void
.end method
