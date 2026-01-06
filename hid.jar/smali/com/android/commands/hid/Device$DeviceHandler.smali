.class Lcom/android/commands/hid/Device$DeviceHandler;
.super Landroid/os/Handler;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeviceHandler"
.end annotation


# instance fields
.field private mBarrierToken:I

.field private mPtr:J

.field final synthetic this$0:Lcom/android/commands/hid/Device;


# direct methods
.method public constructor <init>(Lcom/android/commands/hid/Device;Landroid/os/Looper;)V
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

    .line 161
    iput-object p1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->this$0:Lcom/android/commands/hid/Device;

    .line 162
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 163
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .line 167
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 217
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown device message"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :pswitch_0
    iget-wide v3, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    .line 206
    iget-wide v3, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    invoke-static {v3, v4}, Lcom/android/commands/hid/Device;->-$$Nest$smnativeCloseDevice(J)V

    .line 207
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 208
    iput-wide v1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    goto :goto_0

    .line 210
    :cond_0
    const-string v0, "HidDevice"

    const-string v1, "Tried to close already closed device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :goto_0
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmCond(Lcom/android/commands/hid/Device;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->this$0:Lcom/android/commands/hid/Device;

    invoke-static {v0}, Lcom/android/commands/hid/Device;->-$$Nest$fgetmCond(Lcom/android/commands/hid/Device;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 214
    monitor-exit v3

    .line 215
    goto/16 :goto_2

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 197
    :pswitch_1
    iget-wide v3, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2

    .line 198
    iget v0, p1, Landroid/os/Message;->arg2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 199
    .local v1, "success":Z
    :goto_1
    iget-wide v2, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    iget v0, p1, Landroid/os/Message;->arg1:I

    invoke-static {v2, v3, v0, v1}, Lcom/android/commands/hid/Device;->-$$Nest$smnativeSendSetReportReply(JIZ)V

    .line 200
    .end local v1    # "success":Z
    goto :goto_2

    .line 201
    :cond_2
    const-string v0, "HidDevice"

    const-string v1, "Tried to send set report reply to closed device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    goto :goto_2

    .line 190
    :pswitch_2
    iget-wide v3, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3

    .line 191
    iget-wide v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [B

    invoke-static {v0, v1, v2, v3}, Lcom/android/commands/hid/Device;->-$$Nest$smnativeSendGetFeatureReportReply(JI[B)V

    goto :goto_2

    .line 193
    :cond_3
    const-string v0, "HidDevice"

    const-string v1, "Tried to send feature report reply to closed device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    goto :goto_2

    .line 183
    :pswitch_3
    iget-wide v3, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_4

    .line 184
    iget-wide v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [B

    invoke-static {v0, v1, v2}, Lcom/android/commands/hid/Device;->-$$Nest$smnativeSendReport(J[B)V

    goto :goto_2

    .line 186
    :cond_4
    const-string v0, "HidDevice"

    const-string v1, "Tried to send report to closed device."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    goto :goto_2

    .line 169
    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 170
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget v6, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi4:I

    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v8, v1

    check-cast v8, [B

    new-instance v9, Lcom/android/commands/hid/Device$DeviceCallback;

    iget-object v1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->this$0:Lcom/android/commands/hid/Device;

    const/4 v10, 0x0

    invoke-direct {v9, v1, v10}, Lcom/android/commands/hid/Device$DeviceCallback;-><init>(Lcom/android/commands/hid/Device;Lcom/android/commands/hid/Device-IA;)V

    .line 171
    invoke-static/range {v2 .. v9}, Lcom/android/commands/hid/Device;->-$$Nest$smnativeOpenDevice(Ljava/lang/String;Ljava/lang/String;IIII[BLcom/android/commands/hid/Device$DeviceCallback;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mPtr:J

    .line 180
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->pauseEvents()V

    .line 181
    nop

    .line 219
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pauseEvents()V
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/MessageQueue;->postSyncBarrier()I

    move-result v0

    iput v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mBarrierToken:I

    .line 223
    return-void
.end method

.method public resumeEvents()V
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/android/commands/hid/Device$DeviceHandler;->getLooper()Landroid/os/Looper;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget v1, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mBarrierToken:I

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->removeSyncBarrier(I)V

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/commands/hid/Device$DeviceHandler;->mBarrierToken:I

    .line 228
    return-void
.end method
