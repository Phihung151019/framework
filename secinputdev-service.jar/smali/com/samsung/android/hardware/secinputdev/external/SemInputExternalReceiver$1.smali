.class Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$1;
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

    .line 115
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 118
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$1;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->-$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_BATTERY:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 122
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;>;"
    if-nez v0, :cond_1

    return-void

    .line 124
    :cond_1
    const/4 v1, 0x0

    .line 125
    .local v1, "DISCONNECTED":I
    const/4 v2, 0x1

    .line 126
    .local v2, "CONNECTED":I
    move v3, v1

    .line 127
    .local v3, "status":I
    const-string v4, "status"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 128
    .local v4, "extra_status":I
    const-string v6, "plugged"

    invoke-virtual {p2, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 129
    .local v5, "type":I
    const/4 v6, 0x2

    if-eq v4, v6, :cond_2

    const/4 v6, 0x5

    if-eq v4, v6, :cond_2

    const/high16 v6, 0x10000

    if-ne v5, v6, :cond_3

    .line 132
    :cond_2
    move v3, v2

    .line 135
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    .line 136
    .local v7, "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;
    invoke-interface {v7, v3, v5}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;->onBatteryChanged(II)V

    .line 137
    .end local v7    # "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;
    goto :goto_0

    .line 138
    :cond_4
    return-void
.end method
