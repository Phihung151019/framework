.class Lcom/android/internal/telephony/DrxController$ChangeDrxThread;
.super Ljava/lang/Thread;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DrxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChangeDrxThread"
.end annotation


# instance fields
.field private blacklist mDone:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mResult:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/DrxController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResult(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mResult:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDone(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mDone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResult(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mResult:Z

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/DrxController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 193
    iput-object p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 186
    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mDone:Z

    .line 187
    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mResult:Z

    return-void
.end method


# virtual methods
.method declared-synchronized blacklist changeDRX(I)Z
    .locals 5

    monitor-enter p0

    .line 223
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 225
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_a

    .line 227
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    .line 230
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 232
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x2

    .line 235
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x2d

    .line 236
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x5

    .line 237
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 238
    invoke-virtual {v2, p1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 239
    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-static {v3}, Lcom/android/internal/telephony/DrxController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/DrxController;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 246
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 248
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during changeDRX #2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 251
    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 253
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during changeDRX #3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 257
    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mDone:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_1

    .line 260
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 263
    :catch_3
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 266
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "done. changeDRX - cn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", result: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mResult:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mlog(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 269
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_3

    :cond_2
    const/4 p1, 0x0

    :goto_3
    if-eqz p1, :cond_3

    .line 271
    invoke-virtual {p1}, Landroid/os/Looper;->quitSafely()V

    goto :goto_4

    .line 273
    :cond_3
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    const-string v0, "changeDRX - Unexpected case. No looper"

    invoke-static {p1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 276
    :goto_4
    iget-boolean p1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mResult:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return p1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_4
    move-exception p1

    .line 241
    :try_start_a
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during changeDRX #1: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 246
    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    :catch_5
    move-exception p1

    .line 248
    :try_start_c
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during changeDRX #2: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 251
    :goto_5
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    :catch_6
    move-exception p1

    .line 253
    :try_start_e
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception during changeDRX #3: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 243
    :goto_6
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    .line 246
    :goto_7
    :try_start_f
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    :catch_7
    move-exception v0

    .line 248
    :try_start_10
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during changeDRX #2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 251
    :goto_8
    :try_start_11
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_9

    :catch_8
    move-exception v0

    .line 253
    :try_start_12
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during changeDRX #3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 255
    :goto_9
    throw p1

    :goto_a
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw p1
.end method

.method public whitelist test-api run()V
    .locals 1

    .line 198
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 199
    monitor-enter p0

    .line 200
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DrxController$ChangeDrxThread$1;-><init>(Lcom/android/internal/telephony/DrxController$ChangeDrxThread;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DrxController$ChangeDrxThread;->mHandler:Landroid/os/Handler;

    .line 217
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 218
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    .line 218
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
