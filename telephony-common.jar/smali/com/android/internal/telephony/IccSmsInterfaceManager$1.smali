.class Lcom/android/internal/telephony/IccSmsInterfaceManager$1;
.super Landroid/os/Handler;
.source "IccSmsInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccSmsInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$WIT9FWgUZBddTJ1YqJhf_yBcM6U(Lcom/android/internal/telephony/IccSmsInterfaceManager$1;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->lambda$handleMessage$0()V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 134
    iput-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$handleMessage$0()V
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-$$Nest$fgetmCellBroadcastRangeManager(Lcom/android/internal/telephony/IccSmsInterfaceManager;)Lcom/android/internal/telephony/IccSmsInterfaceManager$CellBroadcastRangeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/IntRangeManager;->clearRanges()V

    return-void
.end method

.method private blacklist notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 200
    monitor-enter p1

    .line 201
    :try_start_0
    iput-object p2, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mResult:Ljava/lang/Object;

    .line 202
    iget-object p0, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 203
    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 204
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 137
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 138
    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;

    .line 140
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 174
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v2, "GSM EVENT_GET_CB_CONFIG_DONE"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 175
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    .line 177
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/telephony/gsm/SemCbConfig;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-$$Nest$mconvertCbConfigToByteArray(Lcom/android/internal/telephony/IccSmsInterfaceManager;Lcom/samsung/android/telephony/gsm/SemCbConfig;)[B

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-$$Nest$fputmCbConfig(Lcom/android/internal/telephony/IccSmsInterfaceManager;[B)V

    goto :goto_0

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v0, "Cannot Get CB Config"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 182
    :goto_0
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-static {p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->-$$Nest$fgetmCbConfig(Lcom/android/internal/telephony/IccSmsInterfaceManager;)[B

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    return-void

    .line 186
    :pswitch_1
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v0, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 187
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object p1, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object p1, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {p1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result p1

    if-nez p1, :cond_1

    .line 188
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v0, "Radio is off. Clear mCellBroadcastRangeManager"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->log(Ljava/lang/String;)V

    .line 189
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/IccSmsInterfaceManager$1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 191
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_1
    :goto_1
    return-void

    .line 162
    :pswitch_2
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object p1, p1, Lcom/android/internal/telephony/IccSmsInterfaceManager;->mDispatchersController:Lcom/android/internal/telephony/SmsDispatchersController;

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/internal/telephony/SmsDispatchersController;->extractSmscNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v0, "Cannot read SMSC"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 170
    :goto_2
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    return-void

    .line 145
    :pswitch_3
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    return-void

    .line 149
    :pswitch_4
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_4

    .line 150
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->buildValidRawData(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    .line 152
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->markMessagesAsRead(Ljava/util/ArrayList;)V

    goto :goto_4

    .line 154
    :cond_4
    const-string p1, "SMS"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 155
    iget-object p1, p0, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->this$0:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const-string v0, "Cannot load Sms records"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->loge(Ljava/lang/String;)V

    .line 158
    :cond_5
    :goto_4
    invoke-direct {p0, v1, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager$1;->notifyPending(Lcom/android/internal/telephony/IccSmsInterfaceManager$Request;Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
