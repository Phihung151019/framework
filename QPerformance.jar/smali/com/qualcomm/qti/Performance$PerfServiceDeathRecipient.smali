.class final Lcom/qualcomm/qti/Performance$PerfServiceDeathRecipient;
.super Ljava/lang/Object;
.source "Performance.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/Performance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PerfServiceDeathRecipient"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/qualcomm/qti/Performance;


# direct methods
.method private constructor blacklist <init>(Lcom/qualcomm/qti/Performance;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 539
    iput-object p1, p0, Lcom/qualcomm/qti/Performance$PerfServiceDeathRecipient;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/qualcomm/qti/Performance;Lcom/qualcomm/qti/Performance-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qualcomm/qti/Performance$PerfServiceDeathRecipient;-><init>(Lcom/qualcomm/qti/Performance;)V

    return-void
.end method


# virtual methods
.method public whitelist binderDied()V
    .locals 3

    .line 541
    iget-object v0, p0, Lcom/qualcomm/qti/Performance$PerfServiceDeathRecipient;->this$0:Lcom/qualcomm/qti/Performance;

    invoke-static {v0}, Lcom/qualcomm/qti/Performance;->-$$Nest$fgetmLock(Lcom/qualcomm/qti/Performance;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 542
    :try_start_0
    const-string v1, "Perf"

    const-string v2, "Perf Service died."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetsPerfServiceBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 544
    invoke-static {}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfgetsPerfServiceBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 545
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfputsPerfServiceBinder(Landroid/os/IBinder;)V

    .line 546
    invoke-static {v1}, Lcom/qualcomm/qti/Performance;->-$$Nest$sfputsPerfService(Lcom/qualcomm/qti/IPerfManager;)V

    .line 547
    monitor-exit v0

    .line 548
    return-void

    .line 547
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
