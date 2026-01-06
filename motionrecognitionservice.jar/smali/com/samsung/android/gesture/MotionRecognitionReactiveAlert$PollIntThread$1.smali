.class Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;
.super Landroid/os/Handler;
.source "MotionRecognitionReactiveAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x64

    const/16 v3, 0x1e

    if-ne v0, v3, :cond_5

    .line 201
    const-string v0, "MotionRecognitionService"

    const-string v4, "mReactiveAlert_Wakelock++  "

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->-$$Nest$fgetmReactiveAlert_Wakelock(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 204
    const-wide/16 v4, 0x1f4

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v4, "MotionRecognitionService"

    const-string v5, "Thread.sleep() exception!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->-$$Nest$fgetmLockACCInt(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 210
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v4, v4, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-static {v4}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->-$$Nest$mreadACCInt(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)I

    move-result v4

    .line 211
    .local v4, "ret_accint":I
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 213
    const-string v0, "MotionRecognitionService"

    const-string v5, "mReactiveAlert_Wakelock--  "

    invoke-static {v0, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->-$$Nest$fgetmReactiveAlert_Wakelock(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 216
    const/16 v0, 0x31

    if-ne v4, v0, :cond_0

    .line 217
    const-string v0, "MotionRecognitionService"

    const-string v1, "skip poll motion_int  "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->disableAccINT()V

    goto/16 :goto_4

    .line 220
    :cond_0
    const-string v5, "MotionRecognitionService"

    const-string v6, "poll_accint++  "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_1
    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    .line 226
    goto :goto_1

    .line 224
    :catch_1
    move-exception v5

    .line 225
    .local v5, "e":Ljava/lang/InterruptedException;
    const-string v6, "MotionRecognitionService"

    const-string v7, "Thread.sleep() exception!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v5    # "e":Ljava/lang/InterruptedException;
    :goto_1
    iget-object v5, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v5, v5, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-static {v5}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->-$$Nest$fgetmLockACCInt(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 228
    :try_start_3
    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v6, v6, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->-$$Nest$mreadACCInt(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)I

    move-result v6

    move v4, v6

    .line 229
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 230
    const/16 v5, 0x30

    if-ne v4, v5, :cond_2

    iget-object v6, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v6, v6, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-static {v6}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->-$$Nest$fgetmEnableAccINT(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 232
    :cond_2
    const-string v1, "MotionRecognitionService"

    const-string v2, "poll_accint--  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v1, "MotionRecognitionService"

    const-string v2, "mReactiveAlert_Wakelock++  "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v1, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v1, v1, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-static {v1}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->-$$Nest$fgetmReactiveAlert_Wakelock(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 236
    if-ne v4, v0, :cond_3

    .line 238
    const-string v0, "MotionRecognitionService"

    const-string v1, " send reactive alert "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->mMainHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 240
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->disableAccINT()V

    .line 242
    const-wide/16 v0, 0x3e8

    :try_start_4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2

    .line 245
    :goto_2
    goto :goto_3

    .line 243
    :catch_2
    move-exception v0

    .line 244
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    const-string v1, "MotionRecognitionService"

    const-string v2, "Thread.sleep() exception!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_2

    .line 246
    :cond_3
    if-eq v4, v5, :cond_4

    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->-$$Nest$fgetmEnableAccINT(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 247
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-virtual {v0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->disableAccINT()V

    .line 249
    :cond_4
    :goto_3
    const-string v0, "MotionRecognitionService"

    const-string v1, "mReactiveAlert_Wakelock--  "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->this$0:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;

    invoke-static {v0}, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;->-$$Nest$fgetmReactiveAlert_Wakelock(Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_4

    .line 229
    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v0

    .line 211
    .end local v4    # "ret_accint":I
    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1

    .line 252
    :cond_5
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x2d

    if-ne v0, v3, :cond_6

    .line 253
    iget-object v0, p0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread$1;->this$1:Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;

    iget-object v0, v0, Lcom/samsung/android/gesture/MotionRecognitionReactiveAlert$PollIntThread;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_5

    .line 252
    :cond_6
    :goto_4
    nop

    .line 255
    :goto_5
    return-void
.end method
