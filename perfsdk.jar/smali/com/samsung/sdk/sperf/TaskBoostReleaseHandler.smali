.class Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;
.super Landroid/os/Handler;
.source "SPerfManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final MSG_TIMEOUT:I = 0x3adb


# instance fields
.field private sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/sdk/sperf/SPerfManager;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "manager"    # Lcom/samsung/sdk/sperf/SPerfManager;
    .param p3, "type"    # I

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    .line 165
    const v0, 0x3d8aee6

    iput v0, p0, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;->type:I

    .line 168
    iput-object p2, p0, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    .line 169
    iput p3, p0, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;->type:I

    .line 170
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 182
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 184
    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;->run()V

    .line 187
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3adb
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 3

    .line 191
    iget-object v0, p0, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;->sPerfManager:Lcom/samsung/sdk/sperf/SPerfManager;

    iget v1, p0, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;->type:I

    invoke-static {}, Lcom/samsung/sdk/sperf/PerformanceManager;->getPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/sdk/sperf/SPerfManager;->stopBoost(II)I

    .line 192
    return-void
.end method

.method public startBoostTimeout(I)V
    .locals 3
    .param p1, "timeout"    # I

    .line 176
    const/16 v0, 0x3adb

    invoke-virtual {p0, v0}, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;->removeMessages(I)V

    .line 177
    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/sdk/sperf/TaskBoostReleaseHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 178
    return-void
.end method
