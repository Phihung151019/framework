.class Lcom/samsung/android/hardware/context/util/TimeChangeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/context/util/TimeChangeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/hardware/context/util/TimeChangeManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/hardware/context/util/TimeChangeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/hardware/context/util/TimeChangeManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager$1;->this$0:Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 52
    const-string v0, "TimeChangeManager"

    if-nez p1, :cond_0

    .line 53
    const-string v1, "context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 57
    :cond_0
    if-nez p2, :cond_1

    .line 58
    const-string v1, "intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void

    .line 62
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 63
    const/4 v1, 0x0

    .line 65
    .local v1, "autoCheck":Z
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager$1;->this$0:Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    invoke-static {v2}, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->-$$Nest$fgetmContext(Lcom/samsung/android/hardware/context/util/TimeChangeManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    move v1, v0

    .line 70
    goto :goto_1

    .line 66
    :catch_0
    move-exception v2

    .line 68
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "Settings not found"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 72
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager$1;->this$0:Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->-$$Nest$fgetmAutoCheck(Lcom/samsung/android/hardware/context/util/TimeChangeManager;)Z

    move-result v0

    if-nez v0, :cond_3

    if-nez v1, :cond_4

    :cond_3
    if-nez v1, :cond_5

    .line 73
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager$1;->this$0:Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    invoke-static {v0}, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->-$$Nest$mnotifyObservers(Lcom/samsung/android/hardware/context/util/TimeChangeManager;)V

    .line 76
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/hardware/context/util/TimeChangeManager$1;->this$0:Lcom/samsung/android/hardware/context/util/TimeChangeManager;

    invoke-static {v0, v1}, Lcom/samsung/android/hardware/context/util/TimeChangeManager;->-$$Nest$fputmAutoCheck(Lcom/samsung/android/hardware/context/util/TimeChangeManager;Z)V

    .line 78
    .end local v1    # "autoCheck":Z
    :cond_6
    return-void
.end method
