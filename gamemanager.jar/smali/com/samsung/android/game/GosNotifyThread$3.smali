.class Lcom/samsung/android/game/GosNotifyThread$3;
.super Landroid/os/Handler;
.source "GosNotifyThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/GosNotifyThread;->onLooperPrepared()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/GosNotifyThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/GosNotifyThread;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/game/GosNotifyThread;
    .param p2, "arg0"    # Landroid/os/Looper;
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

    .line 122
    iput-object p1, p0, Lcom/samsung/android/game/GosNotifyThread$3;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread$3;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-static {v0}, Lcom/samsung/android/game/GosNotifyThread;->-$$Nest$mnotifyGosEnabledToGos(Lcom/samsung/android/game/GosNotifyThread;)V

    goto :goto_0

    .line 136
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread$3;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-static {v0}, Lcom/samsung/android/game/GosNotifyThread;->-$$Nest$mnotifyUserSwitchedToGos(Lcom/samsung/android/game/GosNotifyThread;)V

    .line 137
    goto :goto_0

    .line 133
    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/game/GosNotifyThread$3;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-static {v0}, Lcom/samsung/android/game/GosNotifyThread;->-$$Nest$mnotifyWifiConnectedToGos(Lcom/samsung/android/game/GosNotifyThread;)V

    .line 134
    goto :goto_0

    .line 127
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, "packageName":Ljava/lang/String;
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 129
    .local v1, "changeType":I
    iget v2, p1, Landroid/os/Message;->arg2:I

    .line 130
    .local v2, "userHandleId":I
    iget-object v3, p0, Lcom/samsung/android/game/GosNotifyThread$3;->this$0:Lcom/samsung/android/game/GosNotifyThread;

    invoke-static {v3, v1, v0, v2}, Lcom/samsung/android/game/GosNotifyThread;->-$$Nest$mnotifyPackageChangedToGos(Lcom/samsung/android/game/GosNotifyThread;ILjava/lang/String;I)V

    .line 131
    nop

    .line 142
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "changeType":I
    .end local v2    # "userHandleId":I
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
