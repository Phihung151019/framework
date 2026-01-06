.class public final Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$ThrowExceptionRunnable;
    }
.end annotation


# static fields
.field private static sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final sExecutorMain:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static sExecutorTimeout:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field private static sIsStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "ExecutorMain: "

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorMain:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 10
    .line 11
    sput-boolean v2, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    .line 12
    .line 13
    return-void
.end method

.method public static execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$ThrowExceptionRunnable;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$ThrowExceptionRunnable;-><init>(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    invoke-virtual {p0}, Ljava/util/concurrent/RejectedExecutionException;->getMessage()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string p1, "ExecutorUtil"

    .line 17
    .line 18
    const-string v0, "execute"

    .line 19
    .line 20
    invoke-static {p1, v0, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 p0, 0x0

    .line 24
    return p0
.end method

.method public static executeOnCallback(Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    const-string v0, "fail to execute : "

    .line 16
    .line 17
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", "

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v0, 0x0

    .line 37
    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string v0, "ExecutorUtil"

    .line 45
    .line 46
    const-string v1, "executeOnCallback"

    .line 47
    .line 48
    invoke-static {v0, v1, p0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public static executeOnMain(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorMain:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->execute(Ljava/util/concurrent/ThreadPoolExecutor;Ljava/lang/Runnable;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method private static getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 8

    .line 1
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 2
    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    .line 5
    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 6
    .line 7
    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    .line 8
    .line 9
    .line 10
    new-instance v7, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    invoke-direct {v7, p0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-wide/16 v3, 0x3c

    .line 16
    .line 17
    move v2, p1

    .line 18
    move v1, p1

    .line 19
    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 23
    .line 24
    .line 25
    return-object v0
.end method

.method public static shutdown()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "sIsStarted = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "ExecutorUtil"

    .line 18
    .line 19
    const-string v2, "shutdown"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    .line 25
    .line 26
    if-eqz v0, :cond_3

    .line 27
    .line 28
    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    sget-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorTimeout:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 43
    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-static {v0}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 47
    .line 48
    .line 49
    :cond_2
    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    .line 51
    .line 52
    :cond_3
    return-void
.end method

.method public static shutdownNow(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Ljava/lang/Runnable;

    .line 22
    .line 23
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v2, "shutdown, but not executed"

    .line 26
    .line 27
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "ExecutorUtil"

    .line 38
    .line 39
    const-string v2, "shutdown"

    .line 40
    .line 41
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    return-void
.end method

.method public static start()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "sIsStarted = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-boolean v1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "ExecutorUtil"

    .line 18
    .line 19
    const-string v2, "start"

    .line 20
    .line 21
    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget-boolean v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    .line 25
    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const-string v0, "ExecutorCallback: "

    .line 29
    .line 30
    const/4 v1, 0x1

    .line 31
    invoke-static {v0, v1, v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorCallback:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 36
    .line 37
    const-string v0, "ExecutorIO: "

    .line 38
    .line 39
    const/16 v2, 0x40

    .line 40
    .line 41
    invoke-static {v0, v2, v1}, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->getThreadPoolExecutor(Ljava/lang/String;IZ)Ljava/util/concurrent/ThreadPoolExecutor;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorIO:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 46
    .line 47
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 48
    .line 49
    new-instance v2, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil$$ExternalSyntheticLambda1;

    .line 50
    .line 51
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 58
    .line 59
    .line 60
    const/4 v2, 0x0

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setExecuteExistingDelayedTasksAfterShutdownPolicy(Z)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setRemoveOnCancelPolicy(Z)V

    .line 65
    .line 66
    .line 67
    sput-object v0, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sExecutorTimeout:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 68
    .line 69
    sput-boolean v1, Lcom/samsung/android/mcf/continuity/common/ExecutorUtil;->sIsStarted:Z

    .line 70
    .line 71
    :cond_0
    return-void
.end method
