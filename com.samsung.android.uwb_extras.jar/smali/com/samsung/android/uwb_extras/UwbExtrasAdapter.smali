.class public final Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;
.super Ljava/lang/Object;
.source "UwbExtrasAdapter.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "UwbExtrasAdapter"

.field private static blacklist sIsInitialized:Z

.field private static final blacklist sUwbAdapters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sUwbService:Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;


# instance fields
.field private blacklist mAppExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAppExecutor(Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->mAppExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->sIsInitialized:Z

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->sUwbAdapters:Ljava/util/HashMap;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getServiceInterface()Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;
    .locals 2

    .line 40
    const-string v0, "semuwb_extras"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 41
    .local v0, "b":Landroid/os/IBinder;
    if-nez v0, :cond_0

    .line 42
    const/4 v1, 0x0

    return-object v1

    .line 45
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized blacklist getUwbAdapter(Landroid/content/Context;)Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;

    monitor-enter v0

    .line 22
    if-nez p0, :cond_0

    .line 23
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 26
    :cond_0
    :try_start_0
    sget-boolean v1, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->sIsInitialized:Z

    if-nez v1, :cond_2

    .line 27
    invoke-static {}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->getServiceInterface()Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;

    move-result-object v1

    sput-object v1, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->sUwbService:Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;

    .line 28
    sget-object v1, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->sUwbService:Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;

    if-eqz v1, :cond_1

    .line 33
    const/4 v1, 0x1

    sput-boolean v1, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->sIsInitialized:Z

    goto :goto_0

    .line 29
    :cond_1
    const-string v1, "UwbExtrasAdapter"

    const-string v2, "could not retrieve UWB service"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 36
    :cond_2
    :goto_0
    sget-object v1, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->sUwbAdapters:Ljava/util/HashMap;

    new-instance v2, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 21
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic blacklist lambda$getUwbAdapter$0(Landroid/content/Context;)Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;
    .locals 1
    .param p0, "k"    # Landroid/content/Context;

    .line 36
    new-instance v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;

    invoke-direct {v0}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;-><init>()V

    return-object v0
.end method

.method private static declared-synchronized blacklist setUwbService(Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;)V
    .locals 1
    .param p0, "service"    # Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;

    const-class v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;

    monitor-enter v0

    .line 61
    :try_start_0
    sput-object p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->sUwbService:Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v0

    return-void

    .line 60
    .end local p0    # "service":Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;
    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public blacklist attemptDeadServiceRecovery(Ljava/lang/Exception;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;

    .line 49
    const-string v0, "UWB service dead - attempting to recover"

    const-string v1, "UwbExtrasAdapter"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    invoke-static {}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->getServiceInterface()Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;

    move-result-object v0

    .line 52
    .local v0, "service":Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;
    if-nez v0, :cond_0

    .line 53
    const-string v2, "could not retrieve UWB service during service recovery"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 57
    :cond_0
    invoke-static {v0}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->setUwbService(Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;)V

    .line 58
    return-void
.end method

.method public blacklist enableConformanceTest(Z)I
    .locals 2
    .param p1, "enable"    # Z

    .line 74
    :try_start_0
    sget-object v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->sUwbService:Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;->enableConformanceTest(Z)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 77
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist enableDebugOption(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 66
    :try_start_0
    sget-object v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->sUwbService:Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;

    invoke-interface {v0, p1}, Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;->enableDebugOption(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 70
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public blacklist registerSecUwbCallback(Lcom/samsung/android/uwb_extras/SecUwbCallback;)I
    .locals 2
    .param p1, "callback"    # Lcom/samsung/android/uwb_extras/SecUwbCallback;

    .line 92
    :try_start_0
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->mAppExecutor:Ljava/util/concurrent/Executor;

    .line 94
    sget-object v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->sUwbService:Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;

    new-instance v1, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter$1;-><init>(Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;Lcom/samsung/android/uwb_extras/SecUwbCallback;)V

    invoke-interface {v0, v1}, Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;->registerSecUwbCallback(Lcom/samsung/android/uwb_extras/ISecUwbCallback;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 117
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist sendUciMessage(II[B)[B
    .locals 2
    .param p1, "gid"    # I
    .param p2, "oid"    # I
    .param p3, "data"    # [B

    .line 83
    :try_start_0
    sget-object v0, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->sUwbService:Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/uwb_extras/IUwbExtrasAdapter;->sendUciMessage(II[B)[B

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lcom/samsung/android/uwb_extras/UwbExtrasAdapter;->attemptDeadServiceRecovery(Ljava/lang/Exception;)V

    .line 86
    const/4 v1, 0x0

    return-object v1
.end method
