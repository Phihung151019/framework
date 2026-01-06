.class Lcom/samsung/android/knox/mtd/KMTDService$2;
.super Landroid/app/TaskStackListener;
.source "KMTDService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/mtd/KMTDService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/mtd/KMTDService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/mtd/KMTDService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/knox/mtd/KMTDService;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/samsung/android/knox/mtd/KMTDService$2;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-direct {p0}, Landroid/app/TaskStackListener;-><init>()V

    return-void
.end method

.method private sendRunningComponentFocus(I)V
    .locals 2
    .param p1, "taskId"    # I

    .line 136
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$2;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/knox/mtd/KMTDService;)Landroid/app/ActivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sendRunningComponentFocus(), ActivityManager is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void

    .line 141
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/knox/mtd/KMTDService$2$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/mtd/KMTDService$2$1;-><init>(Lcom/samsung/android/knox/mtd/KMTDService$2;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 168
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 169
    return-void
.end method


# virtual methods
.method public onTaskFocusChanged(IZ)V
    .locals 4
    .param p1, "taskId"    # I
    .param p2, "focused"    # Z

    .line 122
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TaskStackListener.onTaskFocusChanged(), taskId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", focused="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    if-nez p2, :cond_0

    .line 124
    return-void

    .line 126
    :cond_0
    const-string v0, "knoxmtd.analysis.features"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 128
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 129
    .local v1, "features":I
    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    .line 130
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/mtd/KMTDService$2;->sendRunningComponentFocus(I)V

    .line 133
    .end local v1    # "features":I
    :cond_1
    return-void
.end method
