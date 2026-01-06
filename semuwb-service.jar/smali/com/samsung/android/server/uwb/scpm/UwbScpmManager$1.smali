.class Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;
.super Landroid/content/BroadcastReceiver;
.source "UwbScpmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;->this$0:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 50
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 51
    return-void

    .line 53
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "com.samsung.android.scpm.policy.CLEAR_DATA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "com.samsung.android.scpm.policy.UPDATE.UWB_REGULATION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v2, "UwbScpmManger"

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 63
    :pswitch_0
    const-string v1, "scpm clear data - policy updated 1 min later"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1$1;-><init>(Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;)V

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 59
    :pswitch_1
    const-string v1, "policy updated"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v1, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;->this$0:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->-$$Nest$fgetmScpmUpdater(Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;)Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/scpm/ScpmUpdater;->updateScpmPolicy()V

    .line 61
    goto :goto_2

    .line 55
    :pswitch_2
    const-string v1, "lazy boot complete"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v1, p0, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager$1;->this$0:Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;

    invoke-virtual {v1}, Lcom/samsung/android/server/uwb/scpm/UwbScpmManager;->registerAppToScpm()V

    .line 57
    nop

    .line 72
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7f48426d -> :sswitch_2
        -0x636562c9 -> :sswitch_1
        0x8658582 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
