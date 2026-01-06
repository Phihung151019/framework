.class Lcom/samsung/android/knox/mtd/KMTDService$1;
.super Ljava/lang/Object;
.source "KMTDService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 72
    iput-object p1, p0, Lcom/samsung/android/knox/mtd/KMTDService$1;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 75
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$1;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmConnLock(Lcom/samsung/android/knox/mtd/KMTDService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService$1;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {p2}, Lcom/samsung/android/knox/mtd/IKfbpFramework$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/mtd/IKfbpFramework;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fputmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;Lcom/samsung/android/knox/mtd/IKfbpFramework;)V

    .line 77
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Knox MTD Service connected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService$1;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fputisServiceConnected(Lcom/samsung/android/knox/mtd/KMTDService;Z)V

    .line 79
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService$1;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v1}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmConnLock(Lcom/samsung/android/knox/mtd/KMTDService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 80
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/knox/mtd/KMTDService$1;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v0}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmConnLock(Lcom/samsung/android/knox/mtd/KMTDService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 86
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService$1;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fputmKfbpService(Lcom/samsung/android/knox/mtd/KMTDService;Lcom/samsung/android/knox/mtd/IKfbpFramework;)V

    .line 87
    invoke-static {}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Knox MTD Service disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService$1;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fputisServiceConnected(Lcom/samsung/android/knox/mtd/KMTDService;Z)V

    .line 89
    iget-object v1, p0, Lcom/samsung/android/knox/mtd/KMTDService$1;->this$0:Lcom/samsung/android/knox/mtd/KMTDService;

    invoke-static {v1}, Lcom/samsung/android/knox/mtd/KMTDService;->-$$Nest$fgetmConnLock(Lcom/samsung/android/knox/mtd/KMTDService;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 90
    monitor-exit v0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
