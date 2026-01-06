.class Lcom/samsung/android/server/uwb/SamsungExtension$2;
.super Landroid/content/BroadcastReceiver;
.source "SamsungExtension.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/uwb/SamsungExtension;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/uwb/SamsungExtension;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/uwb/SamsungExtension;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/server/uwb/SamsungExtension;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/samsung/android/server/uwb/SamsungExtension$2;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 159
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Device shutdown - state : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/uwb/SamsungExtension$2;->this$0:Lcom/samsung/android/server/uwb/SamsungExtension;

    invoke-static {v1}, Lcom/samsung/android/server/uwb/SamsungExtension;->-$$Nest$fgetmDeviceState(Lcom/samsung/android/server/uwb/SamsungExtension;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "UwbSamsungExtension"

    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/uwb/log/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    invoke-static {}, Lcom/samsung/android/server/uwb/log/Log;->writeDebugLogIntoFile()V

    .line 163
    :cond_0
    return-void
.end method
