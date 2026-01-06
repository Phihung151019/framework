.class final Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "RemoteDisplayProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/media/remotedisplay/RemoteDisplayProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;


# direct methods
.method public constructor <init>(Lcom/android/media/remotedisplay/RemoteDisplayProvider;Landroid/os/Looper;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/media/remotedisplay/RemoteDisplayProvider;
    .param p2, "looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 381
    iput-object p1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    .line 382
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 383
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 387
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 418
    :pswitch_0
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    move-result-object v0

    .line 419
    .local v0, "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_0

    .line 420
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onAdjustVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V

    goto :goto_0

    .line 411
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_1
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    move-result-object v0

    .line 412
    .restart local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_0

    .line 413
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v0, v2}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onSetVolume(Lcom/android/media/remotedisplay/RemoteDisplay;I)V

    goto :goto_0

    .line 404
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_2
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    move-result-object v0

    .line 405
    .restart local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-virtual {v1, v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onDisconnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V

    goto :goto_0

    .line 397
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_3
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->findRemoteDisplay(Ljava/lang/String;)Lcom/android/media/remotedisplay/RemoteDisplay;

    move-result-object v0

    .line 398
    .restart local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    if-eqz v0, :cond_0

    .line 399
    iget-object v1, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    invoke-virtual {v1, v0}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->onConnect(Lcom/android/media/remotedisplay/RemoteDisplay;)V

    goto :goto_0

    .line 393
    .end local v0    # "display":Lcom/android/media/remotedisplay/RemoteDisplay;
    :pswitch_4
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->setDiscoveryMode(I)V

    .line 394
    goto :goto_0

    .line 389
    :pswitch_5
    iget-object v0, p0, Lcom/android/media/remotedisplay/RemoteDisplayProvider$ProviderHandler;->this$0:Lcom/android/media/remotedisplay/RemoteDisplayProvider;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/media/IRemoteDisplayCallback;

    invoke-virtual {v0, v1}, Lcom/android/media/remotedisplay/RemoteDisplayProvider;->setCallback(Landroid/media/IRemoteDisplayCallback;)V

    .line 390
    nop

    .line 425
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
