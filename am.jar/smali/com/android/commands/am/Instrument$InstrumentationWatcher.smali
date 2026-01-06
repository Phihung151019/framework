.class Lcom/android/commands/am/Instrument$InstrumentationWatcher;
.super Landroid/app/IInstrumentationWatcher$Stub;
.source "Instrument.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/am/Instrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InstrumentationWatcher"
.end annotation


# instance fields
.field private mFinished:Z

.field private final mReporter:Lcom/android/commands/am/Instrument$StatusReporter;

.field final synthetic this$0:Lcom/android/commands/am/Instrument;


# direct methods
.method public constructor <init>(Lcom/android/commands/am/Instrument;Lcom/android/commands/am/Instrument$StatusReporter;)V
    .locals 0
    .param p2, "reporter"    # Lcom/android/commands/am/Instrument$StatusReporter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 386
    iput-object p1, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->this$0:Lcom/android/commands/am/Instrument;

    invoke-direct {p0}, Landroid/app/IInstrumentationWatcher$Stub;-><init>()V

    .line 384
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->mFinished:Z

    .line 387
    iput-object p2, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->mReporter:Lcom/android/commands/am/Instrument$StatusReporter;

    .line 388
    return-void
.end method


# virtual methods
.method public instrumentationFinished(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 400
    monitor-enter p0

    .line 401
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->mReporter:Lcom/android/commands/am/Instrument$StatusReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/commands/am/Instrument$StatusReporter;->onInstrumentationFinishedLocked(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->mFinished:Z

    .line 403
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 404
    monitor-exit p0

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public instrumentationStatus(Landroid/content/ComponentName;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "resultCode"    # I
    .param p3, "results"    # Landroid/os/Bundle;

    .line 392
    monitor-enter p0

    .line 393
    :try_start_0
    iget-object v0, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->mReporter:Lcom/android/commands/am/Instrument$StatusReporter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/commands/am/Instrument$StatusReporter;->onInstrumentationStatusLocked(Landroid/content/ComponentName;ILandroid/os/Bundle;)V

    .line 394
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 395
    monitor-exit p0

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForFinish()Z
    .locals 2

    .line 408
    monitor-enter p0

    .line 409
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->mFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    .line 411
    :try_start_1
    iget-object v0, p0, Lcom/android/commands/am/Instrument$InstrumentationWatcher;->this$0:Lcom/android/commands/am/Instrument;

    invoke-static {v0}, Lcom/android/commands/am/Instrument;->-$$Nest$fgetmAm(Lcom/android/commands/am/Instrument;)Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_0

    .line 412
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    return v0

    .line 414
    :cond_0
    const-wide/16 v0, 0x3e8

    :try_start_3
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 417
    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    throw v1

    .line 419
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local p0    # "this":Lcom/android/commands/am/Instrument$InstrumentationWatcher;
    :cond_1
    monitor-exit p0

    .line 420
    const/4 v0, 0x1

    return v0

    .line 419
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
