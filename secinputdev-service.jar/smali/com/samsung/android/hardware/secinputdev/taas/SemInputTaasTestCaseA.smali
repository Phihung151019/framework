.class public Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;
.super Ljava/lang/Object;
.source "SemInputTaasTestCaseA.java"

# interfaces
.implements Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCase;


# static fields
.field private static final TAG:Ljava/lang/String; = "SemInputTaasTestCaseA"

.field private static final TIMEOUT_MILLISECONDS:I = 0x3e8

.field private static beginTime:J = 0x0L

.field private static final criteria:J = 0x3e8L

.field private static endTime:J = 0x0L

.field private static final idleTimeTotal:J = 0x2ee0L

.field private static touchCount:I = 0x0

.field private static final touchInterval:J = 0x7d0L


# instance fields
.field private addedLogsFlag:Z

.field private currentTime:J

.field private deltaTime:J

.field private detected:Z

.field private mContext:Landroid/content/Context;

.field private mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

.field private oldSurfaceBeginTime:J

.field private threadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$As1E3sNfEYVFsvqhfYNjom4-kcg(Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->runEvent(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Q0dxxN5CPWpGNfB6erwbA-sMzEo(Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->lambda$runEvent$0(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetSurfaceTimerStates(Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;)Z
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->getSurfaceTimerStates()Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 32
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->beginTime:J

    .line 33
    sput-wide v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->endTime:J

    .line 39
    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 29
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mContext:Landroid/content/Context;

    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->currentTime:J

    .line 38
    iput-wide v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->deltaTime:J

    .line 40
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->detected:Z

    .line 41
    iput-wide v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->oldSurfaceBeginTime:J

    .line 42
    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->addedLogsFlag:Z

    return-void
.end method

.method private callSurfaceTimerStates(J)Z
    .locals 5
    .param p1, "time"    # J

    .line 167
    const-string v0, "callSurfaceTimerStates:Taas"

    const-string v1, "SemInputTaasTestCaseA"

    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v3, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA$1;

    invoke-direct {v3, p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA$1;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;)V

    invoke-direct {v2, v3}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 172
    .local v2, "task":Ljava/util/concurrent/FutureTask;
    iget-object v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->threadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 173
    const/4 v3, 0x0

    .line 175
    .local v3, "result":Z
    :try_start_0
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p1, p2, v4}, Ljava/util/concurrent/FutureTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v0

    .line 182
    :goto_0
    goto :goto_1

    .line 180
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/util/concurrent/TimeoutException;
    const-string v4, "failed to get callSurfaceTimerStates for time out"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 178
    .end local v0    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_1
    move-exception v4

    .line 179
    .local v4, "e":Ljava/util/concurrent/ExecutionException;
    invoke-static {v1, v0, v4}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v4    # "e":Ljava/util/concurrent/ExecutionException;
    goto :goto_0

    .line 176
    :catch_2
    move-exception v4

    .line 177
    .local v4, "e":Ljava/lang/InterruptedException;
    invoke-static {v1, v0, v4}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .end local v4    # "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 184
    :goto_1
    return v3
.end method

.method private checkDetected()V
    .locals 17

    .line 128
    move-object/from16 v1, p0

    const-string v2, "SemInputTaasTestCaseA"

    const-string v0, " "

    iget-boolean v3, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->detected:Z

    if-nez v3, :cond_4

    .line 129
    iget-wide v3, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->currentTime:J

    sget-wide v5, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->beginTime:J

    sub-long/2addr v3, v5

    iput-wide v3, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->deltaTime:J

    .line 131
    iget-wide v3, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->deltaTime:J

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    .line 132
    invoke-direct {v1, v5, v6}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->callSurfaceTimerStates(J)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    .line 134
    :try_start_0
    iget-object v3, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v3, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager;

    .line 135
    .local v3, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 136
    .local v7, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_1

    .line 140
    :cond_0
    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v9

    .line 141
    .local v9, "topActivityName":Ljava/lang/String;
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 142
    .local v10, "packageName":Ljava/lang/String;
    iget-object v11, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v10, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 143
    .local v8, "versionName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 145
    .local v11, "logStr":Ljava/lang/String;
    iget-object v12, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-virtual {v12}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->getHwDefectCnt()J

    move-result-wide v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    const-string v13, "[sec_input] CASEA "

    const-string v14, "s tc "

    if-eqz v12, :cond_1

    .line 146
    :try_start_1
    iget-object v0, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-wide v15, v5

    iget-wide v5, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->deltaTime:J

    div-long/2addr v5, v15

    invoke-virtual {v12, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->writePerfLogOfHwDefect(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    move-wide v15, v5

    iget-object v5, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v12, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->deltaTime:J

    div-long/2addr v12, v15

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v12, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->writePerfLog(Ljava/lang/String;)V

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[sec_input] CASEA ended "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v12, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->deltaTime:J

    div-long/2addr v12, v15

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "Top activity version: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :goto_0
    iput-boolean v4, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->detected:Z

    .line 153
    invoke-direct {v1, v11}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->increaseCount(Ljava/lang/String;)V

    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v8    # "versionName":Ljava/lang/String;
    .end local v9    # "topActivityName":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    .end local v11    # "logStr":Ljava/lang/String;
    goto :goto_2

    .line 137
    .restart local v3    # "activityManager":Landroid/app/ActivityManager;
    .restart local v7    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    :goto_1
    iput-boolean v4, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->detected:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 138
    return-void

    .line 154
    .end local v3    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :catch_0
    move-exception v0

    .line 155
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaseAEventActionUp : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_3

    .line 159
    :cond_3
    iget-wide v2, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->currentTime:J

    sput-wide v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->beginTime:J

    .line 160
    sput v4, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    .line 164
    :cond_4
    :goto_3
    return-void
.end method

.method private getSurfaceTimerStates()Z
    .locals 9

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 189
    .local v0, "surfaceForCurrentTime":J
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    invoke-virtual {v2}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->getSurfaceTimerStates()J

    move-result-wide v2

    .line 192
    .local v2, "surfaceBeginTime":J
    const/4 v4, 0x0

    :try_start_0
    iget-boolean v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->addedLogsFlag:Z

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->oldSurfaceBeginTime:J

    cmp-long v5, v2, v5

    if-nez v5, :cond_0

    .line 193
    return v4

    .line 195
    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->addedLogsFlag:Z

    .line 196
    sub-long v5, v0, v2

    const-wide/16 v7, 0x2ee0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->addedLogsFlag:Z

    if-nez v5, :cond_1

    .line 197
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->addedLogsFlag:Z

    .line 198
    iput-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->oldSurfaceBeginTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    return v5

    .line 202
    :cond_1
    return v4

    .line 203
    :catch_0
    move-exception v5

    .line 204
    .local v5, "e":Ljava/lang/Exception;
    return v4
.end method

.method private increaseCount(Ljava/lang/String;)V
    .locals 9
    .param p1, "buf"    # Ljava/lang/String;

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 210
    .local v0, "mNow":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 211
    .local v2, "mDate":Ljava/util/Date;
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy/MMdd/HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 212
    .local v3, "mFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 213
    .local v4, "getTime":Ljava/lang/String;
    const-string v5, "\\([^)]*\\)"

    const-string v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 214
    .local v5, "TaasLog":Ljava/lang/String;
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 216
    .local v6, "pakageName":[Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0xa0

    if-le v7, v8, :cond_0

    .line 217
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 218
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    const-string v8, "A"

    invoke-virtual {v7, v4, v5, v8}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->writeForCaseToEfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v7, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->setCaseACount(Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method private synthetic lambda$runEvent$0(I)V
    .locals 0
    .param p1, "action"    # I

    .line 55
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->runEvent(I)V

    .line 56
    return-void
.end method

.method private runEvent(I)V
    .locals 5
    .param p1, "action"    # I

    .line 60
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 61
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 62
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->currentTime:J

    .line 63
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    iget-wide v3, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->currentTime:J

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->setCurrentTime(J)V

    .line 65
    if-nez p1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->runEventActionDown()V

    .line 67
    return-void

    .line 68
    :cond_0
    if-ne p1, v1, :cond_1

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->runEventActionUp()V

    .line 70
    return-void

    .line 72
    :cond_1
    sget v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    add-int/2addr v2, v1

    sput v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    .line 75
    invoke-direct {p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->checkDetected()V

    .line 76
    return-void
.end method

.method private runEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "mEvent"    # Landroid/view/MotionEvent;

    .line 53
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 54
    .local v0, "action":I
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    new-instance v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;I)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->post(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method private runEventActionDown()V
    .locals 4

    .line 79
    iget-wide v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->currentTime:J

    sget-wide v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->endTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->deltaTime:J

    .line 83
    sget v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->deltaTime:J

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 84
    :cond_0
    iget-wide v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->currentTime:J

    sput-wide v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->beginTime:J

    .line 85
    const/4 v0, 0x1

    sput v0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    .line 89
    :cond_1
    return-void
.end method

.method private runEventActionUp()V
    .locals 18

    .line 92
    move-object/from16 v1, p0

    const-string v0, "s tc "

    const-string v2, "[sec_input] CASEA ended "

    const-string v3, "SemInputTaasTestCaseA"

    const-string v4, " "

    iget-wide v5, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->currentTime:J

    sget-wide v7, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->beginTime:J

    sub-long/2addr v5, v7

    iput-wide v5, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->deltaTime:J

    .line 93
    iget-wide v5, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->currentTime:J

    sput-wide v5, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->endTime:J

    .line 96
    const/4 v5, 0x0

    :try_start_0
    iget-boolean v6, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->detected:Z

    if-eqz v6, :cond_2

    .line 97
    iget-object v6, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    .line 98
    .local v6, "activityManager":Landroid/app/ActivityManager;
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    .line 99
    .local v7, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v7, :cond_1

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    goto/16 :goto_0

    .line 105
    :cond_0
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v8, v8, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 106
    .local v8, "topActivityName":Ljava/lang/String;
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v9, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 107
    .local v9, "packageName":Ljava/lang/String;
    iget-object v10, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v10, v9, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 108
    .local v10, "versionName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 110
    .local v11, "logStr":Ljava/lang/String;
    iget-object v12, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-wide v14, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->deltaTime:J

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget v14, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->writePerfLog(Ljava/lang/String;)V

    .line 111
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v12, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->deltaTime:J

    div-long v12, v12, v16

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "Top activity version: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iput-boolean v5, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->detected:Z

    .line 113
    iget-wide v12, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->currentTime:J

    sput-wide v12, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->beginTime:J

    .line 114
    sput v5, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    .line 115
    invoke-direct {v1, v11}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->increaseCount(Ljava/lang/String;)V

    goto :goto_1

    .line 100
    .end local v8    # "topActivityName":Ljava/lang/String;
    .end local v9    # "packageName":Ljava/lang/String;
    .end local v10    # "versionName":Ljava/lang/String;
    .end local v11    # "logStr":Ljava/lang/String;
    :cond_1
    :goto_0
    iput-boolean v5, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->detected:Z

    .line 101
    iget-wide v8, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->currentTime:J

    sput-wide v8, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->beginTime:J

    .line 102
    sput v5, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    return-void

    .line 124
    .end local v6    # "activityManager":Landroid/app/ActivityManager;
    .end local v7    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_2
    :goto_1
    goto :goto_2

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    iput-boolean v5, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->detected:Z

    .line 121
    iget-wide v6, v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->currentTime:J

    sput-wide v6, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->beginTime:J

    .line 122
    sput v5, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->touchCount:I

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CaseAEventActionUp : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "externalApi"    # Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    .line 46
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    .line 48
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->threadPool:Ljava/util/concurrent/ExecutorService;

    .line 49
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;->mExternalApi:Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;

    new-instance v1, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/secinputdev/taas/SemInputTaasTestCaseA;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/hardware/secinputdev/taas/ExternalApi;->registerMotionEventListener(Ljava/util/function/Consumer;)V

    .line 50
    return-void
.end method

.method public destroy()V
    .locals 0

    .line 223
    return-void
.end method
