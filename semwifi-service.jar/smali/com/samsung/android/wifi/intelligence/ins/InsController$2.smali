.class final Lcom/samsung/android/wifi/intelligence/ins/InsController$2;
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
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$2;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$2;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

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
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$2;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

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
    iget-object v2, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$2;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fgetmInferenceStartTime(Lcom/samsung/android/wifi/intelligence/ins/InsController;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    sub-long/2addr v0, v2

    .line 26
    const-wide/16 v2, 0x9c4

    .line 27
    .line 28
    cmp-long v0, v0, v2

    .line 29
    .line 30
    if-lez v0, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$2;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->infServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$InfServiceConnection;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/samsung/android/wifi/intelligence/ins/InsController$InfServiceConnection;->close()V

    .line 37
    .line 38
    .line 39
    iget-object p0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$2;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController;->infServiceConnection:Lcom/samsung/android/wifi/intelligence/ins/InsController$InfServiceConnection;

    .line 43
    .line 44
    invoke-static {p0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fputmInferenceStartTime(Lcom/samsung/android/wifi/intelligence/ins/InsController;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/wifi/intelligence/ins/InsController$2;->this$0:Lcom/samsung/android/wifi/intelligence/ins/InsController;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/samsung/android/wifi/intelligence/ins/InsController;->-$$Nest$fgetmScheduledExecutor(Lcom/samsung/android/wifi/intelligence/ins/InsController;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-wide/16 v1, 0x1f4

    .line 55
    .line 56
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 57
    .line 58
    invoke-interface {v0, p0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 59
    .line 60
    .line 61
    return-void
.end method
