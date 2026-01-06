.class final Lcom/samsung/android/wifi/intelligence/ins/InsController$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/intelligence/ins/InsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;


# direct methods
.method constructor <init>(Lcom/samsung/android/wifi/intelligence/ins/InsController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fgetmISemInsTrService(Lcom/samsung/android/wifi/intelligence/ins/InsController;)Lcom/samsung/android/wifi/intelligence/ins/ISemInsTrService;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->trServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fgetmTrainStartTime(Lcom/samsung/android/wifi/intelligence/ins/InsController;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    sub-long/2addr v0, v2

    .line 26
    const-wide/32 v2, 0x493e0

    .line 27
    .line 28
    .line 29
    cmp-long v0, v0, v2

    .line 30
    .line 31
    if-lez v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->trServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;->close()V

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 41
    .line 42
    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->trServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$TrServiceConnection;

    .line 44
    .line 45
    invoke-static {p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fputmTrainStartTime(Lcom/samsung/android/wifi/intelligence/ins/InsController;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$1;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 50
    .line 51
    invoke-static {v0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fgetmScheduledExecutor(Lcom/samsung/android/wifi/intelligence/ins/InsController;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-wide/16 v1, 0x7530

    .line 56
    .line 57
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 58
    .line 59
    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 60
    .line 61
    .line 62
    return-void
.end method
