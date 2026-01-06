.class Lcom/samsung/android/game/GameManagerService$1;
.super Landroid/os/Handler;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/samsung/android/game/GameManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/game/GameManagerService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 155
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x271c

    if-ne v0, v1, :cond_0

    .line 158
    invoke-static {}, Lcom/samsung/android/game/GosClientManager;->getInstance()Lcom/samsung/android/game/GosClientManager;

    move-result-object v0

    .line 159
    .local v0, "gosClientManager":Lcom/samsung/android/game/GosClientManager;
    invoke-virtual {v0}, Lcom/samsung/android/game/GosClientManager;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    const-string v1, "GameManager"

    const-string v2, "mHandler, msg: MSG_UNBIND_CHECK"

    invoke-static {v1, v2}, Lcom/samsung/android/game/GmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {v0}, Lcom/samsung/android/game/GosClientManager;->unbindService()V

    .line 164
    .end local v0    # "gosClientManager":Lcom/samsung/android/game/GosClientManager;
    :cond_0
    return-void
.end method
