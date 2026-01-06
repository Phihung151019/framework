.class Lcom/samsung/android/game/SystemHelper$1;
.super Landroid/os/Handler;
.source "SystemHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/game/SystemHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/SystemHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/SystemHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/game/SystemHelper;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcom/samsung/android/game/SystemHelper$1;->this$0:Lcom/samsung/android/game/SystemHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 53
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper$1;->this$0:Lcom/samsung/android/game/SystemHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/SystemHelper;->enableWifiSwitch(Z)V

    goto :goto_0

    .line 55
    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/game/SystemHelper$1;->this$0:Lcom/samsung/android/game/SystemHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/game/SystemHelper;->enableWifiSwitch(Z)V

    .line 56
    nop

    .line 61
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
