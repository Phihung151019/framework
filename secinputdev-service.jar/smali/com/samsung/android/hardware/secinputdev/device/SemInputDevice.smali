.class public abstract Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;
.super Ljava/lang/Object;
.source "SemInputDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$SetPropertyTask;,
        Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;,
        Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;,
        Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;
    }
.end annotation


# static fields
.field private static final STATIC_TAG:Ljava/lang/String; = "SemInputDevice"

.field private static lock:Ljava/util/concurrent/locks/Lock;

.field private static onRecovery:Z

.field private static recovery:Ljava/util/concurrent/locks/Condition;

.field private static staticExecutorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected final cmdlistSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final devid:I

.field private final executorService:Ljava/util/concurrent/ExecutorService;

.field protected final name:Ljava/lang/String;

.field private needPending:Z

.field protected pendingQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private runnableResult:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

.field protected final supportFeature:I

.field protected final sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

.field private final taskQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fputrunnableResult(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->runnableResult:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->staticExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 33
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->lock:Ljava/util/concurrent/locks/Lock;

    .line 34
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->recovery:Ljava/util/concurrent/locks/Condition;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->onRecovery:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "devid"    # I
    .param p3, "feature"    # I
    .param p4, "cmdlist"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->cmdlistSet:Ljava/util/HashSet;

    .line 44
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->taskQueue:Ljava/util/List;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->pendingQueue:Ljava/util/List;

    .line 46
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->needPending:Z

    .line 47
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->runnableResult:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemInputDevice:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->name:Ljava/lang/String;

    .line 52
    iput p2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->devid:I

    .line 53
    iput p3, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->supportFeature:I

    .line 54
    invoke-direct {p0, p4}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->splitCommandList(Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALFactory;->connectHAL()Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    .line 56
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    invoke-interface {v1}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->getVersion()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-ltz v1, :cond_0

    .line 57
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->executorService:Ljava/util/concurrent/ExecutorService;

    goto :goto_0

    .line 59
    :cond_0
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->staticExecutorService:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_1

    .line 60
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->staticExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 62
    :cond_1
    iput-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 64
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    return-void
.end method

.method public static setRecoveryState(Z)V
    .locals 2
    .param p0, "onRecovery"    # Z

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRecoveryState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemInputDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sput-boolean p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->onRecovery:Z

    .line 70
    if-nez p0, :cond_0

    .line 71
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 73
    :try_start_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->recovery:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 76
    throw v0

    .line 78
    :cond_0
    :goto_0
    return-void
.end method

.method private splitCommandList(Ljava/lang/String;)V
    .locals 7
    .param p1, "cmdlist"    # Ljava/lang/String;

    .line 81
    const-string v0, "NG"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    return-void

    .line 84
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "cmds":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 86
    .local v4, "cmd":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x61

    if-lt v5, v6, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7a

    if-le v5, v6, :cond_1

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    iget-object v5, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->cmdlistSet:Ljava/util/HashSet;

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    .end local v4    # "cmd":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 91
    :cond_3
    return-void
.end method


# virtual methods
.method public final activate(IZLcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;Z)I
    .locals 7
    .param p1, "enable"    # I
    .param p2, "isEarly"    # Z
    .param p3, "result"    # Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    .param p4, "useThread"    # Z

    .line 329
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->supportActivate()Z

    move-result v0

    if-nez v0, :cond_0

    .line 330
    const/4 v0, -0x5

    return v0

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->pendingQueue:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 334
    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    :cond_1
    if-ne p2, v1, :cond_2

    .line 335
    iput-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->needPending:Z

    .line 336
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    const-string v2, "INCELL: pending start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    :cond_2
    if-eqz p4, :cond_3

    .line 341
    iput-object p3, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->runnableResult:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 342
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$ActivateTask;-><init>(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;IZLcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    invoke-virtual {p0, v0, p3}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->runOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    goto :goto_1

    .line 344
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_4

    const-string v3, ",0"

    goto :goto_0

    :cond_4
    const-string v3, ",1"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/hardware/secinputdev/utils/SemInputDumpsysData;->getCurrentTimeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->runnableResult:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 346
    .local v0, "tempResult":Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    if-eqz v0, :cond_5

    .line 347
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->getInteger()I

    .line 348
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->runnableResult:Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 350
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->sysinputHAL:Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;

    iget v3, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->devid:I

    invoke-interface {v2, v3, p1, p2}, Lcom/samsung/android/hardware/secinputdev/hal/SysinputHALInterface;->activate(IIZ)I

    move-result v2

    invoke-virtual {p3, v2}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->set(I)V

    .line 353
    .end local v0    # "tempResult":Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->pendingQueue:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 354
    iget-boolean v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->needPending:Z

    if-eqz v0, :cond_7

    if-nez p2, :cond_7

    .line 355
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->pendingQueue:Ljava/util/List;

    monitor-enter v0

    .line 356
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->needPending:Z

    .line 357
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    const-string v3, "INCELL: pending end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->pendingQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 359
    .local v3, "runnable":Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "INCELL: add "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/Runnable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v4, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    invoke-direct {v4}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;-><init>()V

    invoke-virtual {p0, v3, v4}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->runOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    .line 361
    .end local v3    # "runnable":Ljava/lang/Runnable;
    goto :goto_2

    .line 362
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->pendingQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 363
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 366
    :cond_7
    :goto_3
    return v1
.end method

.method protected addTask(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->taskQueue:Ljava/util/List;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->taskQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Runnable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    monitor-exit v0

    .line 141
    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDevid()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->devid:I

    return v0
.end method

.method public getExecutorInformation()Ljava/lang/String;
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->taskQueue:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "no pending commands"

    return-object v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "pending commands"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->taskQueue:Ljava/util/List;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->taskQueue:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 130
    .local v3, "taskInfo":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n     "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    nop

    .end local v3    # "taskInfo":Ljava/lang/String;
    goto :goto_0

    .line 132
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 132
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->name:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%-8s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;)Ljava/lang/String;
    .locals 2
    .param p1, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;

    .line 248
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->supportGetProperty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    const-string v0, "NA"

    return-object v0

    .line 251
    :cond_0
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;-><init>()V

    .line 252
    .local v0, "result":Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;

    invoke-direct {v1, p0, p1, v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$GetPropertyTask;-><init>(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->runAndWaitOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    .line 253
    invoke-virtual {v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->getString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSupportCommands()Ljava/lang/String;
    .locals 1

    .line 118
    const-string v0, ""

    return-object v0
.end method

.method public getSupportFeature()I
    .locals 1

    .line 110
    iget v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->supportFeature:I

    return v0
.end method

.method protected removeTask(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 144
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->taskQueue:Ljava/util/List;

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->taskQueue:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Runnable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 146
    monitor-exit v0

    .line 148
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected runAndWaitOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "result"    # Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 172
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->addTask(Ljava/lang/Runnable;)V

    .line 173
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    goto :goto_0

    .line 175
    :cond_0
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->staticExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    .line 176
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->staticExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_1
    :goto_0
    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    const-string v2, "runAndWaitOnThread"

    invoke-static {v1, v2, v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities;->loggingException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 180
    const/4 v1, -0x7

    invoke-virtual {p2, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->set(I)V

    .line 181
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->removeTask(Ljava/lang/Runnable;)V

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public final runCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "cmd"    # Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->supportRunCommand()Z

    move-result v0

    const-string v1, "NA"

    if-nez v0, :cond_0

    .line 287
    return-object v1

    .line 289
    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    .line 290
    .local v0, "commandName":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->cmdlistSet:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 291
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    invoke-direct {v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;-><init>()V

    .line 292
    .local v1, "result":Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    new-instance v2, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;

    invoke-direct {v2, p0, p1, v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$RunCommandTask;-><init>(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->runAndWaitOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    .line 293
    invoke-virtual {v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->getString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 295
    .end local v1    # "result":Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "runCommand: not support cmd \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-object v1
.end method

.method protected runOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V
    .locals 4
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "result"    # Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->pendingQueue:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->pendingQueue:Ljava/util/List;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->needPending:Z

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SetProperty"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INCELL: skip "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/Runnable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;->set(I)V

    .line 156
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->pendingQueue:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 157
    monitor-exit v0

    return-void

    .line 159
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 162
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->addTask(Ljava/lang/Runnable;)V

    .line 163
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->executorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->executorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_1

    .line 165
    :cond_2
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->staticExecutorService:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_3

    .line 166
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->staticExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 168
    :cond_3
    :goto_1
    return-void
.end method

.method public setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)I
    .locals 1
    .param p1, "command"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Command;
    .param p2, "mode"    # Ljava/lang/String;
    .param p3, "result"    # Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    .line 200
    const/4 v0, -0x5

    return v0
.end method

.method public final setProperty(Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;)I
    .locals 2
    .param p1, "property"    # Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;
    .param p2, "mode"    # Ljava/lang/String;

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->supportSetProperty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    const/4 v0, -0x5

    return v0

    .line 211
    :cond_0
    new-instance v0, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;

    invoke-direct {v0}, Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;-><init>()V

    .line 212
    .local v0, "result":Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;
    new-instance v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$SetPropertyTask;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice$SetPropertyTask;-><init>(Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;Lcom/samsung/android/hardware/secinputdev/utils/SemInputConstants$Property;Ljava/lang/String;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->runOnThread(Ljava/lang/Runnable;Lcom/samsung/android/hardware/secinputdev/utils/Utilities$Result;)V

    .line 213
    const/4 v1, 0x1

    return v1
.end method

.method protected supportActivate()Z
    .locals 1

    .line 325
    const/4 v0, 0x0

    return v0
.end method

.method protected supportGetProperty()Z
    .locals 1

    .line 244
    const/4 v0, 0x0

    return v0
.end method

.method protected supportRunCommand()Z
    .locals 1

    .line 282
    const/4 v0, 0x0

    return v0
.end method

.method protected supportSetProperty()Z
    .locals 1

    .line 204
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->devid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "), cmd_list:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->cmdlistSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "info":Ljava/lang/String;
    iget v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->supportFeature:I

    if-gtz v1, :cond_0

    .line 97
    return-object v0

    .line 98
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", support_feature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->supportFeature:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "0x%X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected waitUntilRecovery()V
    .locals 3

    .line 186
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 188
    :goto_0
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->onRecovery:Z

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->recovery:Ljava/util/concurrent/locks/Condition;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->await()V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    const-string v1, "recovery done"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 195
    :cond_0
    nop

    :goto_1
    sget-object v0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 196
    goto :goto_2

    .line 195
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 192
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->TAG:Ljava/lang/String;

    const-string v2, "waitUntilRecovery: interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_1

    .line 197
    :goto_2
    return-void

    .line 195
    :goto_3
    sget-object v1, Lcom/samsung/android/hardware/secinputdev/device/SemInputDevice;->lock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 196
    throw v0
.end method
