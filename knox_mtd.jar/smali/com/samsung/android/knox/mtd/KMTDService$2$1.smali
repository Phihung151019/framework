.class Lcom/samsung/android/knox/mtd/KMTDService$2$1;
.super Ljava/lang/Object;
.source "KMTDService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/mtd/KMTDService$2;->sendRunningComponentFocus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/knox/mtd/KMTDService$2;

.field final synthetic val$taskId:I


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/mtd/KMTDService$2;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/samsung/android/knox/mtd/KMTDService$2;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/samsung/android/knox/mtd/KMTDService$2$1;->this$1:Lcom/samsung/android/knox/mtd/KMTDService$2;

    iput p2, p0, Lcom/samsung/android/knox/mtd/KMTDService$2$1;->val$taskId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 144
    const/4 v0, 0x0

    .line 145
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, -0x1

    .line 146
    .local v1, "userId":I
    iget-object v2, p0, Lcom/samsung/android/knox/mtd/KMTDService$2$1;->this$1:Lcom/samsung/android/knox/mtd/KMTDService$2;

    iget-object v2, v2, Lcom/samsung/android/knox/mtd/KMTDService$2;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v2}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/app/ActivityManager;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 147
    .local v2, "runningTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 148
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 149
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 150
    .local v4, "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/samsung/android/knox/mtd/KMTDService$2$1;->val$taskId:I

    iget v6, v4, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v5, v6, :cond_0

    .line 151
    iget-object v5, v4, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 152
    iget v1, v4, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    .line 153
    iget-object v5, p0, Lcom/samsung/android/knox/mtd/KMTDService$2$1;->this$1:Lcom/samsung/android/knox/mtd/KMTDService$2;

    iget-object v5, v5, Lcom/samsung/android/knox/mtd/KMTDService$2;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v5, v4}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fputmRunningTaskInfo(Lcom/samsung/android/knox/mtd/KMTDService;Landroid/app/ActivityManager$RunningTaskInfo;)V

    .line 154
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

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

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    goto :goto_1

    .line 148
    .end local v4    # "runningTaskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v3    # "i":I
    :cond_1
    :goto_1
    goto :goto_2

    .line 159
    :cond_2
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "  sendRunningComponentFocus(), ActivityManager.getRunningTasks is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :goto_2
    if-eqz v0, :cond_3

    .line 163
    iget-object v3, p0, Lcom/samsung/android/knox/mtd/KMTDService$2$1;->this$1:Lcom/samsung/android/knox/mtd/KMTDService$2;

    iget-object v3, v3, Lcom/samsung/android/knox/mtd/KMTDService$2;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    new-instance v4, Lcom/samsung/android/knox/mtd/PkgWithUserId;

    invoke-direct {v4, v0, v1}, Lcom/samsung/android/knox/mtd/PkgWithUserId;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/mtd/KMTDService;->sendFocusedMessage(Lcom/samsung/android/knox/mtd/PkgWithUserId;)V

    goto :goto_3

    .line 165
    :cond_3
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v3

    const-string v4, "  sendRunningComponentFocus(), componentName is null."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :goto_3
    return-void
.end method
