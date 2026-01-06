.class Lcom/android/internal/telephony/DrxController$GetDrxThread;
.super Ljava/lang/Thread;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DrxController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetDrxThread"
.end annotation


# instance fields
.field private blacklist mDone:Z

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mResult:I

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/DrxController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmResult(Lcom/android/internal/telephony/DrxController$GetDrxThread;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mResult:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmDone(Lcom/android/internal/telephony/DrxController$GetDrxThread;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mDone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmResult(Lcom/android/internal/telephony/DrxController$GetDrxThread;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mResult:I

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

    .line 311
    iput-object p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 304
    iput-boolean p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mDone:Z

    .line 305
    sget p1, Lcom/android/internal/telephony/DrxController;->DRX_CURRENT_CYCLE_FAIL:I

    iput p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mResult:I

    return-void
.end method


# virtual methods
.method declared-synchronized blacklist getActiveDrxCn()I
    .locals 6

    monitor-enter p0

    .line 341
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 343
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 345
    :catch_0
    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x64

    .line 348
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 350
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 351
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v3, 0x2

    .line 353
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v3, 0x2c

    .line 354
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v3, 0x4

    .line 355
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 356
    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    invoke-static {v3}, Lcom/android/internal/telephony/DrxController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/DrxController;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/android/internal/telephony/SemPhoneInternal;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 363
    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 365
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during getActiveDrxCn #2: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 368
    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    .line 370
    :try_start_7
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception during getActiveDrxCn #3: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 374
    :goto_2
    iget-boolean v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mDone:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-nez v0, :cond_1

    .line 377
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_3
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    .line 380
    :catch_3
    :try_start_9
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_2

    .line 383
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "done. getActiveDrxCn - cn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mlog(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    goto :goto_4

    .line 390
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    const-string v1, "getActiveDrxCn - Unexpected case. No looper"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 393
    :goto_4
    iget v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mResult:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return v0

    :catchall_1
    move-exception v0

    goto :goto_7

    :catch_4
    move-exception v0

    .line 358
    :try_start_a
    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during getActiveDrxCn #1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 360
    sget v0, Lcom/android/internal/telephony/DrxController;->DRX_CURRENT_CYCLE_FAIL:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 363
    :try_start_b
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_5

    :catch_5
    move-exception v2

    .line 365
    :try_start_c
    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during getActiveDrxCn #2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 368
    :goto_5
    :try_start_d
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_6

    :catch_6
    move-exception v1

    .line 370
    :try_start_e
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during getActiveDrxCn #3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 360
    :goto_6
    monitor-exit p0

    return v0

    .line 363
    :goto_7
    :try_start_f
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_8

    :catch_7
    move-exception v2

    .line 365
    :try_start_10
    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception during getActiveDrxCn #2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 368
    :goto_8
    :try_start_11
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    goto :goto_9

    :catch_8
    move-exception v1

    .line 370
    :try_start_12
    iget-object v2, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception during getActiveDrxCn #3: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mloge(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 372
    :goto_9
    throw v0

    :goto_a
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    throw v0
.end method

.method public whitelist test-api run()V
    .locals 1

    .line 316
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 317
    monitor-enter p0

    .line 318
    :try_start_0
    new-instance v0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;-><init>(Lcom/android/internal/telephony/DrxController$GetDrxThread;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread;->mHandler:Landroid/os/Handler;

    .line 335
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 336
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :catchall_0
    move-exception v0

    .line 336
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
