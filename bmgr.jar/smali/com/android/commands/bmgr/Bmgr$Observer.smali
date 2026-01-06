.class abstract Lcom/android/commands/bmgr/Bmgr$Observer;
.super Landroid/app/backup/IBackupObserver$Stub;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/bmgr/Bmgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Observer"
.end annotation


# instance fields
.field private volatile done:Z

.field private final trigger:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 363
    invoke-direct {p0}, Landroid/app/backup/IBackupObserver$Stub;-><init>()V

    .line 364
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->trigger:Ljava/lang/Object;

    .line 366
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->done:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/bmgr/Bmgr-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/commands/bmgr/Bmgr$Observer;-><init>()V

    return-void
.end method


# virtual methods
.method public backupFinished(I)V
    .locals 2
    .param p1, "status"    # I

    .line 379
    iget-object v0, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->trigger:Ljava/lang/Object;

    monitor-enter v0

    .line 380
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->done:Z

    .line 381
    iget-object v1, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->trigger:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 382
    monitor-exit v0

    .line 383
    return-void

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public done()Z
    .locals 1

    .line 386
    iget-boolean v0, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->done:Z

    return v0
.end method

.method public onResult(Ljava/lang/String;I)V
    .locals 0
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 375
    return-void
.end method

.method public onUpdate(Ljava/lang/String;Landroid/app/backup/BackupProgress;)V
    .locals 0
    .param p1, "currentPackage"    # Ljava/lang/String;
    .param p2, "backupProgress"    # Landroid/app/backup/BackupProgress;

    .line 371
    return-void
.end method

.method public waitForCompletion()V
    .locals 2

    .line 391
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/commands/bmgr/Bmgr$Observer;->waitForCompletion(J)V

    .line 392
    return-void
.end method

.method public waitForCompletion(J)V
    .locals 6
    .param p1, "timeout"    # J

    .line 398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 399
    .local v0, "targetTime":J
    iget-object v2, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->trigger:Ljava/lang/Object;

    monitor-enter v2

    .line 401
    :goto_0
    :try_start_0
    iget-boolean v3, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->done:Z

    if-nez v3, :cond_1

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-lez v3, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v3, v0

    if-gez v3, :cond_1

    .line 403
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/commands/bmgr/Bmgr$Observer;->trigger:Ljava/lang/Object;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 404
    :catch_0
    move-exception v3

    .line 405
    :goto_1
    goto :goto_0

    .line 407
    :cond_1
    :try_start_2
    monitor-exit v2

    .line 408
    return-void

    .line 407
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method
