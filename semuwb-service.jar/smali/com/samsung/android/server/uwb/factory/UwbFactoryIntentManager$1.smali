.class Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager$1;
.super Landroid/content/BroadcastReceiver;
.source "UwbFactoryIntentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 86
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.samsung.android.uwb.test.action.REQUEST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    const-string v1, "com.samsung.android.uwb.test.extra.ID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 92
    .local v1, "id":I
    const-string v2, "com.samsung.android.uwb.test.extra.DATA_INTEGER"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    .line 93
    .local v2, "iData":[I
    const-string v3, "com.samsung.android.uwb.test.extra.DATA_STRING"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "sData":Ljava/lang/String;
    const-string v4, "com.samsung.android.uwb.test.extra.DATA_SENDER"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 96
    .local v4, "sender":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 97
    iget-object v5, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    invoke-static {v5, v4}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->-$$Nest$fputmBroadcastSender(Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;Ljava/lang/String;)V

    .line 100
    :cond_1
    invoke-static {v1, v2, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand;->handleCommand(I[ILjava/lang/String;)Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;

    move-result-object v5

    .line 101
    .local v5, "command":Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;
    if-nez v5, :cond_2

    .line 102
    invoke-static {}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v7, "handleCommand: Undefined Command"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 106
    :cond_2
    const-string v6, "uwb.regulation.skip"

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-static {}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v7, "skipRegulation"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v6, p0, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager$1;->this$0:Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;

    invoke-static {v6}, Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;->-$$Nest$fgetmIUwbFactoryManager(Lcom/samsung/android/server/uwb/factory/UwbFactoryIntentManager;)Lcom/samsung/android/server/uwb/factory/IUwbFactoryManager;

    move-result-object v6

    invoke-virtual {v5, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;->getMessageId(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v3}, Lcom/samsung/android/server/uwb/factory/UwbFactoryCommand$Command;->getStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/samsung/android/server/uwb/factory/IUwbFactoryManager;->sendMessage(ILjava/lang/String;)V

    .line 110
    return-void
.end method
