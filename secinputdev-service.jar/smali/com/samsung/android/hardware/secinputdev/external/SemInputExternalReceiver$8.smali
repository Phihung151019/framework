.class Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$8;
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

    .line 255
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$8;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 258
    const-string v0, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "SemInputExternalReceiver"

    if-eqz v0, :cond_2

    .line 259
    const-string v0, "nfcRFBroadcastReceiver: on"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$8;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->-$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_RF_DETECTED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 261
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;>;"
    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    .line 263
    .local v2, "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;
    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;->onRFDetected(Z)V

    .line 264
    .end local v2    # "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;
    goto :goto_0

    .line 266
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;>;"
    :cond_1
    goto :goto_2

    :cond_2
    const-string v0, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 267
    const-string v0, "nfcRFBroadcastReceiver: off"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver$8;->this$0:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;->-$$Nest$fgetregisteredList(Lcom/samsung/android/hardware/secinputdev/external/SemInputExternalReceiver;)Ljava/util/Map;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;->BROADCAST_RF_OFF_DETECTED:Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$Event;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 269
    .restart local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;>;"
    if-nez v0, :cond_3

    return-void

    .line 270
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;

    .line 271
    .restart local v2    # "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;->onRFDetected(Z)V

    .line 272
    .end local v2    # "element":Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;
    goto :goto_1

    .line 273
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/samsung/android/hardware/secinputdev/external/SemInputExternal$IBroadcastReceiver;>;"
    :cond_4
    nop

    .line 276
    :goto_2
    return-void

    .line 274
    :cond_5
    return-void
.end method
