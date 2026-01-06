.class Lcom/samsung/android/game/FgCheckThread$2;
.super Landroid/app/TaskStackListener;
.source "FgCheckThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/game/FgCheckThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/game/FgCheckThread;


# direct methods
.method constructor <init>(Lcom/samsung/android/game/FgCheckThread;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/game/FgCheckThread;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/samsung/android/game/FgCheckThread$2;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method private sendRunningComponentFocus(I)V
    .locals 8
    .param p1, "taskId"    # I

    .line 105
    iget-object v0, p0, Lcom/samsung/android/game/FgCheckThread$2;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v0}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/game/FgCheckThread;)Landroid/app/ActivityManager;

    move-result-object v0

    const-string v1, "FgCheckThread"

    if-nez v0, :cond_0

    .line 106
    const-string v0, "sendRunningComponentFocus(), ActivityManager is null."

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-void

    .line 110
    :cond_0
    const/4 v0, 0x0

    .line 111
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v2, -0x1

    .line 112
    .local v2, "userId":I
    iget-object v3, p0, Lcom/samsung/android/game/FgCheckThread$2;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v3}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/game/FgCheckThread;)Landroid/app/ActivityManager;

    move-result-object v3

    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    .line 113
    .local v3, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 114
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 115
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 116
    .local v5, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v5, :cond_1

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    iget v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne p1, v6, :cond_1

    .line 117
    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 118
    iget v2, v5, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 119
    iget-object v6, p0, Lcom/samsung/android/game/FgCheckThread$2;->this$0:Lcom/samsung/android/game/FgCheckThread;

    invoke-static {v6, v5}, Lcom/samsung/android/game/FgCheckThread;->-$$Nest$fputmRunningTaskInfo(Lcom/samsung/android/game/FgCheckThread;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 120
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  sendRunningComponentFocus(), pkgName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", userId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    goto :goto_1

    .line 114
    .end local v5    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v4    # "i":I
    :cond_2
    :goto_1
    goto :goto_2

    .line 125
    :cond_3
    const-string v4, "  sendRunningComponentFocus(), ActivityManager.getRunningTasks is null."

    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_2
    if-eqz v0, :cond_4

    .line 129
    iget-object v1, p0, Lcom/samsung/android/game/FgCheckThread$2;->this$0:Lcom/samsung/android/game/FgCheckThread;

    new-instance v4, Lcom/samsung/android/game/PkgWithUserId;

    invoke-direct {v4, v0, v2}, Lcom/samsung/android/game/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/game/FgCheckThread;->sendFocusedMessage(Lcom/samsung/android/game/PkgWithUserId;)V

    goto :goto_3

    .line 131
    :cond_4
    const-string v4, "  sendRunningComponentFocus(), componentName is null."

    invoke-static {v1, v4}, Lcom/samsung/android/game/GmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_3
    return-void
.end method


# virtual methods
.method public onTaskFocusChanged(IZ)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TaskStackListener.onTaskFocusChanged(), taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FgCheckThread"

    invoke-static {v1, v0}, Lcom/samsung/android/game/GmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    if-nez p2, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/game/FgCheckThread$2;->sendRunningComponentFocus(I)V

    .line 102
    return-void
.end method
