.class Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$2;
.super Landroid/content/BroadcastReceiver;
.source "ExternalApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$2;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 118
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 119
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v1, "ONOFF"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi$2;->this$0:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v2, v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->-$$Nest$fputisIssueTrackerActive(Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;Z)V

    .line 122
    :cond_0
    return-void
.end method
