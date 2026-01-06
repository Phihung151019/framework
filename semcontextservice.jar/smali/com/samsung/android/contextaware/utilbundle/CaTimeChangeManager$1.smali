.class Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "CaTimeChangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 116
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 121
    if-nez p1, :cond_0

    .line 122
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1011

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 123
    return-void

    .line 126
    :cond_0
    if-nez p2, :cond_1

    .line 127
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1012

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 128
    return-void

    .line 131
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1013

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 134
    :cond_2
    return-void
.end method
