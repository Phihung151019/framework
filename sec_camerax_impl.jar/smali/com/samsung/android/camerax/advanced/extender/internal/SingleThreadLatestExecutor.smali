.class public Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SingleThreadLatestExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;
    }
.end annotation


# static fields
.field public static final NO_DROP:I = 0x7fffffff


# instance fields
.field private final DROP_THRESHOLD:I

.field private final EXECUTOR_TIMEOUT:J

.field private final TAG:Ljava/lang/String;

.field private final mPreviewRunnableQueue:Ljava/util/concurrent/LinkedBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7sg9DszvByZV9xFGGjua4sPbvHQ(Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->lambda$execute$0()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeout"    # J
    .param p4, "executePolicy"    # I

    .line 51
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v7, Lcom/samsung/android/camerax/advanced/util/NumberingThreadFactory;

    invoke-direct {v7, p1}, Lcom/samsung/android/camerax/advanced/util/NumberingThreadFactory;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 37
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->mPreviewRunnableQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cx/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-Executor"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->TAG:Ljava/lang/String;

    .line 54
    iput-wide p2, v0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->EXECUTOR_TIMEOUT:J

    .line 56
    const/4 v1, 0x3

    invoke-static {p4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->DROP_THRESHOLD:I

    .line 57
    return-void
.end method

.method private synthetic lambda$execute$0()V
    .locals 4

    .line 90
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->mPreviewRunnableQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 92
    .local v0, "runnable":Ljava/lang/Runnable;
    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 95
    .local v1, "next":Ljava/lang/Runnable;
    iget v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->DROP_THRESHOLD:I

    const v3, 0x7fffffff

    if-eq v2, v3, :cond_1

    .line 96
    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->mPreviewRunnableQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/lang/Runnable;

    .line 98
    :cond_1
    if-nez v1, :cond_2

    .line 99
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 100
    return-void

    .line 102
    :cond_2
    instance-of v2, v0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;

    if-eqz v2, :cond_3

    .line 103
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;

    invoke-interface {v2}, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;->cancel()V

    .line 105
    :cond_3
    move-object v0, v1

    .line 106
    .end local v1    # "next":Ljava/lang/Runnable;
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/Runnable;

    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->mPreviewRunnableQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/LinkedBlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->mPreviewRunnableQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v0

    iget v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->DROP_THRESHOLD:I

    if-le v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->mPreviewRunnableQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 83
    .local v0, "runnable":Ljava/lang/Runnable;
    instance-of v1, v0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;

    if-eqz v1, :cond_0

    .line 84
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;

    invoke-interface {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;)V

    invoke-super {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 116
    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->TAG:Ljava/lang/String;

    const-string v2, "unable to execute ProcessingRunnable, cancel it"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    instance-of v1, p1, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;

    if-eqz v1, :cond_1

    .line 114
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;

    invoke-interface {v1}, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;->cancel()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 117
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    .end local p1    # "command":Ljava/lang/Runnable;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public shutdown()V
    .locals 3

    .line 61
    invoke-super {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    .line 63
    :try_start_0
    iget-wide v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->EXECUTOR_TIMEOUT:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/InterruptedException;
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->TAG:Ljava/lang/String;

    const-string v2, "executor wait interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canceling pending runnable, size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->mPreviewRunnableQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->mPreviewRunnableQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 70
    .local v1, "runnable":Ljava/lang/Runnable;
    instance-of v2, v1, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;

    if-eqz v2, :cond_0

    .line 71
    move-object v2, v1

    check-cast v2, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;

    invoke-interface {v2}, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor$ProcessRunnable;->cancel()V

    .line 73
    .end local v1    # "runnable":Ljava/lang/Runnable;
    :cond_0
    goto :goto_1

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/extender/internal/SingleThreadLatestExecutor;->mPreviewRunnableQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 75
    return-void
.end method
