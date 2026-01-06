.class Lcom/samsung/android/hardware/context/SemContextConnectionList$BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SemContextConnectionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/SemContextConnectionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootCompleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/SemContextConnectionList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/hardware/context/SemContextConnectionList;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 126
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList$BootCompleteReceiver;->this$0:Lcom/samsung/android/hardware/context/SemContextConnectionList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lcom/samsung/android/hardware/context/SemContextConnectionList;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/context/SemContextConnectionList;)Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x2

    invoke-virtual {p1, p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 130
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 132
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ACTION***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemContextConnectionList"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextConnectionList$BootCompleteReceiver;->this$0:Lcom/samsung/android/hardware/context/SemContextConnectionList;

    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContextConnectionList;->updateSCPMParametersFromDB()V

    .line 136
    :cond_0
    return-void
.end method
