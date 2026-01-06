.class Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CaPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final AP_SLEEP:Ljava/lang/String; = "android.intent.action.SCREEN_OFF"

.field private static final AP_WAKEUP:Ljava/lang/String; = "android.intent.action.SCREEN_ON"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 128
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 136
    if-nez p1, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->sendEmptyMessage(I)Z

    .line 138
    return-void

    .line 141
    :cond_0
    if-nez p2, :cond_1

    .line 142
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->sendEmptyMessage(I)Z

    .line 143
    return-void

    .line 146
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "sendMessage failed"

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    move-result-object v0

    const/16 v2, 0x100a

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->sendEmptyMessage(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 148
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 150
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 151
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    move-result-object v0

    const/16 v2, 0x1009

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->sendEmptyMessage(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 152
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 154
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    move-result-object v0

    const/16 v2, 0x1005

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->sendEmptyMessage(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 156
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 158
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 159
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    move-result-object v0

    const/16 v2, 0x1006

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->sendEmptyMessage(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 160
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 162
    :cond_5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    move-result-object v0

    const/16 v2, 0x100d

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->sendEmptyMessage(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 164
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 167
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaPowerManager;)Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;

    move-result-object v0

    const/16 v2, 0x100c

    invoke-virtual {v0, v2}, Lcom/samsung/android/contextaware/utilbundle/CaPowerManager$CaPowerManagerHandler;->sendEmptyMessage(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 168
    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 171
    :cond_7
    :goto_0
    return-void
.end method
