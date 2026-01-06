.class Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;
.super Landroid/content/BroadcastReceiver;
.source "CaBootStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 124
    if-nez p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 126
    return-void

    .line 129
    :cond_0
    if-nez p2, :cond_1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1002

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 131
    return-void

    .line 134
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus$1;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;->-$$Nest$fgetmHandler(Lcom/samsung/android/contextaware/utilbundle/CaBootStatus;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1003

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 137
    :cond_2
    return-void
.end method
