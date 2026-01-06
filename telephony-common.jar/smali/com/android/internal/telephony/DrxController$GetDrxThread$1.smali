.class Lcom/android/internal/telephony/DrxController$GetDrxThread$1;
.super Landroid/os/Handler;
.source "DrxController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/DrxController$GetDrxThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/DrxController$GetDrxThread;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 318
    iput-object p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 321
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 322
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq p1, v1, :cond_0

    return-void

    .line 324
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    iget-object p1, p1, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    const-string v1, "GET_DRX_CN_COMPLETE"

    invoke-static {p1, v1}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mlog(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 325
    iget-object p1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    monitor-enter p1

    .line 326
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    const/4 v3, 0x0

    aget-byte v2, v2, v3

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    sget v2, Lcom/android/internal/telephony/DrxController;->DRX_CURRENT_CYCLE_FAIL:I

    :goto_0
    invoke-static {v1, v2}, Lcom/android/internal/telephony/DrxController$GetDrxThread;->-$$Nest$fputmResult(Lcom/android/internal/telephony/DrxController$GetDrxThread;I)V

    .line 327
    iget-object v1, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    iget-object v1, v1, Lcom/android/internal/telephony/DrxController$GetDrxThread;->this$0:Lcom/android/internal/telephony/DrxController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GET_DRX_CN_COMPLETE - mResult: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    invoke-static {v3}, Lcom/android/internal/telephony/DrxController$GetDrxThread;->-$$Nest$fgetmResult(Lcom/android/internal/telephony/DrxController$GetDrxThread;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    const-string v0, "(Success)"

    goto :goto_1

    :cond_2
    const-string v0, "(Fail)"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/DrxController;->-$$Nest$mlog(Lcom/android/internal/telephony/DrxController;Ljava/lang/String;)V

    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/DrxController$GetDrxThread;->-$$Nest$fputmDone(Lcom/android/internal/telephony/DrxController$GetDrxThread;Z)V

    .line 329
    iget-object p0, p0, Lcom/android/internal/telephony/DrxController$GetDrxThread$1;->this$1:Lcom/android/internal/telephony/DrxController$GetDrxThread;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 330
    monitor-exit p1

    return-void

    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
