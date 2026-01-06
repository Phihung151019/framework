.class Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$4;
.super Landroid/content/BroadcastReceiver;
.source "SemInputExternalReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 181
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$4;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 184
    const-string v0, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    return-void

    .line 187
    :cond_0
    const-string v0, "SemInputExternalReceiver"

    const-string v1, "lazyBootCompleteBroadcastReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$4;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->-$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_LAZY_BOOT:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 190
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;>;"
    if-nez v0, :cond_1

    return-void

    .line 191
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    .line 192
    .local v2, "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;
    invoke-interface {v2}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;->onLazybootCompleted()V

    .line 193
    .end local v2    # "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;
    goto :goto_0

    .line 194
    :cond_2
    return-void
.end method
