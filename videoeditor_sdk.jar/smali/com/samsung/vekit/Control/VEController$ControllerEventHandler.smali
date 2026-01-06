.class Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;
.super Landroid/os/Handler;
.source "VEController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/vekit/Control/VEController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerEventHandler"
.end annotation


# instance fields
.field private controller:Lcom/samsung/vekit/Control/VEController;

.field final synthetic this$0:Lcom/samsung/vekit/Control/VEController;


# direct methods
.method public constructor <init>(Lcom/samsung/vekit/Control/VEController;Lcom/samsung/vekit/Control/VEController;Landroid/os/Looper;)V
    .locals 0
    .param p2, "controller"    # Lcom/samsung/vekit/Control/VEController;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 131
    iput-object p1, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    .line 132
    invoke-direct {p0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 133
    iput-object p2, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->controller:Lcom/samsung/vekit/Control/VEController;

    .line 134
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 138
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {v0}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : msg.what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 180
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    invoke-static {v0}, Lcom/samsung/vekit/Control/VEController;->access$000(Lcom/samsung/vekit/Control/VEController;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage :Invalid callback msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 175
    :sswitch_0
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-static {v0, v1, v2}, Lcom/samsung/vekit/Control/VEController;->access$300(Lcom/samsung/vekit/Control/VEController;ILjava/util/HashMap;)V

    .line 176
    goto/16 :goto_0

    .line 178
    :sswitch_1
    goto/16 :goto_0

    .line 172
    :sswitch_2
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/vekit/Control/VEController;->access$200(Lcom/samsung/vekit/Control/VEController;III)V

    .line 173
    goto :goto_0

    .line 169
    :sswitch_3
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/vekit/Control/VEController;->access$100(Lcom/samsung/vekit/Control/VEController;IILjava/lang/Object;)V

    .line 170
    goto :goto_0

    .line 164
    :sswitch_4
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    invoke-interface {v0}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onExportPaused()V

    goto :goto_0

    .line 159
    :sswitch_5
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    invoke-interface {v0}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onExportStarted()V

    goto :goto_0

    .line 154
    :sswitch_6
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onShowCompleted(J)V

    goto :goto_0

    .line 148
    :sswitch_7
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iput-boolean v1, v0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    .line 149
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->exportstatuslistener:Lcom/samsung/vekit/Listener/ExportStatusListener;

    invoke-interface {v0}, Lcom/samsung/vekit/Listener/ExportStatusListener;->onExportCompleted()V

    goto :goto_0

    .line 141
    :sswitch_8
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iput-boolean v1, v0, Lcom/samsung/vekit/Control/VEController;->isPlaying:Z

    .line 142
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/samsung/vekit/Control/VEController$ControllerEventHandler;->this$0:Lcom/samsung/vekit/Control/VEController;

    iget-object v0, v0, Lcom/samsung/vekit/Control/VEController;->playerStatusListener:Lcom/samsung/vekit/Listener/PlayerStatusListener;

    invoke-interface {v0}, Lcom/samsung/vekit/Listener/PlayerStatusListener;->onPlaybackCompleted()V

    .line 183
    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_8
        0x2 -> :sswitch_7
        0x3 -> :sswitch_6
        0x4 -> :sswitch_5
        0x5 -> :sswitch_4
        0x64 -> :sswitch_3
        0x65 -> :sswitch_2
        0xc8 -> :sswitch_1
        0xc9 -> :sswitch_0
    .end sparse-switch
.end method
