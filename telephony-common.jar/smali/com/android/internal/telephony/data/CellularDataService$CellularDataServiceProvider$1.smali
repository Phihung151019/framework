.class Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;
.super Landroid/os/Handler;
.source "CellularDataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;-><init>(Lcom/android/internal/telephony/data/CellularDataService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

.field final synthetic blacklist val$this$0:Lcom/android/internal/telephony/data/CellularDataService;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;Landroid/os/Looper;Lcom/android/internal/telephony/data/CellularDataService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 81
    iput-object p1, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    iput-object p3, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->val$this$0:Lcom/android/internal/telephony/data/CellularDataService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    invoke-static {v0}, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->-$$Nest$fgetmCallbackMap(Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/data/DataServiceCallback;

    .line 86
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 87
    iget v2, p1, Landroid/os/Message;->what:I

    const/4 v3, 0x0

    const/4 v4, 0x4

    packed-switch v2, :pswitch_data_0

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->this$0:Lcom/android/internal/telephony/data/CellularDataService;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected event: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/CellularDataService;->-$$Nest$mloge(Lcom/android/internal/telephony/data/CellularDataService;Ljava/lang/String;)V

    return-void

    .line 129
    :pswitch_0
    iget-object p1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v0, p1, Landroid/telephony/data/DataProfile;

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    check-cast p1, Landroid/telephony/data/DataProfile;

    invoke-virtual {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->notifyDataProfileUnthrottled(Landroid/telephony/data/DataProfile;)V

    return-void

    .line 132
    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->notifyApnUnthrottled(Ljava/lang/String;)V

    return-void

    .line 126
    :pswitch_1
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->-$$Nest$mtoResultCode(Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;Ljava/lang/Throwable;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/data/DataServiceCallback;->onHandoverCancelled(I)V

    return-void

    .line 123
    :pswitch_2
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;->-$$Nest$mtoResultCode(Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;Ljava/lang/Throwable;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/data/DataServiceCallback;->onHandoverStarted(I)V

    return-void

    .line 120
    :pswitch_3
    iget-object p0, p0, Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider$1;->this$1:Lcom/android/internal/telephony/data/CellularDataService$CellularDataServiceProvider;

    iget-object p1, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Landroid/telephony/data/DataService$DataServiceProvider;->notifyDataCallListChanged(Ljava/util/List;)V

    return-void

    .line 112
    :pswitch_4
    iget-object p0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_1

    move v3, v4

    .line 115
    :cond_1
    iget-object p0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p0, :cond_2

    check-cast p0, Ljava/util/List;

    goto :goto_0

    .line 116
    :cond_2
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 111
    :goto_0
    invoke-virtual {v0, v3, p0}, Landroid/telephony/data/DataServiceCallback;->onRequestDataCallListComplete(ILjava/util/List;)V

    return-void

    .line 106
    :pswitch_5
    iget-object p0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_3

    move v3, v4

    :cond_3
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onSetDataProfileComplete(I)V

    return-void

    .line 101
    :pswitch_6
    iget-object p0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_4

    move v3, v4

    :cond_4
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onSetInitialAttachApnComplete(I)V

    return-void

    .line 96
    :pswitch_7
    iget-object p0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p0, :cond_5

    move v3, v4

    :cond_5
    invoke-virtual {v0, v3}, Landroid/telephony/data/DataServiceCallback;->onDeactivateDataCallComplete(I)V

    return-void

    .line 89
    :pswitch_8
    iget-object p0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p0, Landroid/telephony/data/DataCallResponse;

    .line 90
    iget-object p1, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz p1, :cond_6

    move v3, v4

    :cond_6
    invoke-virtual {v0, v3, p0}, Landroid/telephony/data/DataServiceCallback;->onSetupDataCallComplete(ILandroid/telephony/data/DataCallResponse;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
