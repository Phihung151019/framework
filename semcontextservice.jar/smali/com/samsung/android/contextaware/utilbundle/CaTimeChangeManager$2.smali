.class Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;
.super Landroid/os/Handler;
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

    .line 138
    iput-object p1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 143
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1011

    if-ne v0, v1, :cond_0

    .line 144
    const-string v0, "context is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 145
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1012

    if-ne v0, v1, :cond_1

    .line 146
    const-string v0, "intent is null"

    invoke-static {v0}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_2

    .line 147
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x1013

    if-ne v0, v1, :cond_6

    .line 149
    const/4 v0, 0x0

    .line 151
    .local v0, "autoCheck":Z
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-$$Nest$fgetmContext(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v2, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 155
    goto :goto_1

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "settings not found"

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v2}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 157
    .end local v2    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time Change, auto old:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v3}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-$$Nest$fgetmAutoCheck(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " new:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 159
    iget-object v2, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v2}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-$$Nest$fgetmAutoCheck(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)Z

    move-result v2

    if-nez v2, :cond_3

    if-eq v0, v1, :cond_4

    :cond_3
    if-nez v0, :cond_5

    .line 161
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v1}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-$$Nest$mnotifyObservers(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;)V

    .line 164
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager$2;->this$0:Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;

    invoke-static {v1, v0}, Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;->-$$Nest$fputmAutoCheck(Lcom/samsung/android/contextaware/utilbundle/CaTimeChangeManager;Z)V

    .line 166
    .end local v0    # "autoCheck":Z
    :cond_6
    :goto_2
    return-void
.end method
