.class public Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;
.super Ljava/lang/Object;
.source "SCameraSEPThreadManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SCameraSEPThreadManager"

.field private static mThreadManager:Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;


# instance fields
.field private mBackgroundHandler:Landroid/os/Handler;

.field private mBackgroundThread:Landroid/os/HandlerThread;

.field private mProcessHandler:Landroid/os/Handler;

.field private mProcessThread:Landroid/os/HandlerThread;

.field private volatile mRefCount:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessThread:Landroid/os/HandlerThread;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundHandler:Landroid/os/Handler;

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mRefCount:I

    .line 22
    return-void
.end method

.method private static declared-synchronized deinitialze()V
    .locals 2

    const-class v0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    monitor-enter v0

    .line 93
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mThreadManager:Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit v0

    return-void

    .line 92
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getsInstance()Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;
    .locals 2

    const-class v0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mThreadManager:Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    invoke-direct {v1}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;-><init>()V

    sput-object v1, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mThreadManager:Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;

    .line 33
    :cond_0
    sget-object v1, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mThreadManager:Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 29
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public declared-synchronized forceStartBackgroundThread()V
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    const-string v0, "SCameraSEPThreadManager"

    const-string v1, "forceStartBackgroundThread "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 59
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 60
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundHandler:Landroid/os/Handler;

    .line 62
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 63
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "processBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessThread:Landroid/os/HandlerThread;

    .line 64
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 65
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :cond_1
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getBackgroundHandler()Landroid/os/Handler;
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 102
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized getProcessHandler()Landroid/os/Handler;
    .locals 1

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 111
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized startBackgroundThread()V
    .locals 3

    monitor-enter p0

    .line 38
    :try_start_0
    const-string v0, "SCameraSEPThreadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startBackgroundThread mRefCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mRefCount:I

    if-nez v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "CameraBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundHandler:Landroid/os/Handler;

    .line 45
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 46
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "processBackground"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessThread:Landroid/os/HandlerThread;

    .line 47
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessHandler:Landroid/os/Handler;

    .line 51
    :cond_1
    iget v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized stopBackgroundThread()V
    .locals 3

    monitor-enter p0

    .line 72
    :try_start_0
    const-string v0, "SCameraSEPThreadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopBackgroundThread mRefCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mRefCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mRefCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundThread:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 76
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 77
    iput-object v1, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 78
    iput-object v1, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mBackgroundHandler:Landroid/os/Handler;

    .line 81
    .end local p0    # "this":Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 83
    iput-object v1, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessThread:Landroid/os/HandlerThread;

    .line 84
    iput-object v1, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mProcessHandler:Landroid/os/Handler;

    .line 86
    :cond_2
    const-string v0, "SCameraSEPThreadManager"

    const-string v1, "stopBackgroundThread closed thread "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->mRefCount:I

    .line 88
    invoke-static {}, Lcom/samsung/android/sep/camera/util/SCameraSEPThreadManager;->deinitialze()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
