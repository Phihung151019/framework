.class Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;
.super Landroid/os/Handler;
.source "SemTelephonySmsNSRI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return-void

    .line 131
    :cond_0
    const-string v0, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] [EVENT_NSRI_SUSIM_STATE_NOTI]"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 134
    const-string v2, "SemTelephonySmsNSRI"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[NSRI_SMS] ar.result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 137
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;[B)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 139
    :cond_1
    const-string p1, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] Encryp Fail!!"

    invoke-static {p1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;Z)V

    .line 142
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 144
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 114
    :cond_2
    const-string v0, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] [EVENT_DECRYPT_SMS_INTXSIDE]"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    monitor-enter v0

    .line 116
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 119
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;[B)V

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 122
    :cond_3
    const-string p1, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] DecryptTx Fail!!"

    invoke-static {p1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :goto_2
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;Z)V

    .line 125
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 127
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 96
    :cond_4
    const-string v0, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] [EVENT_DECRYPT_SMS]"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    monitor-enter v0

    .line 99
    :try_start_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 102
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_5

    .line 103
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;[B)V

    goto :goto_4

    :catchall_2
    move-exception p0

    goto :goto_5

    .line 105
    :cond_5
    const-string p1, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] Decrypt Fail!!"

    invoke-static {p1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :goto_4
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;Z)V

    .line 108
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 110
    monitor-exit v0

    return-void

    :goto_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0

    .line 76
    :cond_6
    const-string v0, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] [EVENT_ENCRYPT_SMS]"

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    monitor-enter v0

    .line 79
    :try_start_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 84
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7

    .line 85
    iget-object v2, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v2, p1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmResult(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;[B)V

    goto :goto_6

    :catchall_3
    move-exception p0

    goto :goto_7

    .line 87
    :cond_7
    const-string p1, "SemTelephonySmsNSRI"

    const-string v2, "[NSRI_SMS] Encryp Fail!!"

    invoke-static {p1, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_6
    iget-object p1, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-static {p1, v1}, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;->-$$Nest$fputmDone(Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;Z)V

    .line 90
    iget-object p0, p0, Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI$1;->this$0:Lcom/android/internal/telephony/semtelephonyinterface/thread/SemTelephonySmsNSRI;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 92
    monitor-exit v0

    return-void

    :goto_7
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw p0
.end method
