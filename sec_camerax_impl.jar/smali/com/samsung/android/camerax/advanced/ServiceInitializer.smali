.class public Lcom/samsung/android/camerax/advanced/ServiceInitializer;
.super Ljava/lang/Object;
.source "ServiceInitializer.java"


# static fields
.field private static final EXECUTOR:Ljava/util/concurrent/Executor;

.field private static final SERVICE_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.cameraxservice"

.field private static final SERVICE_SERVICE_NAME:Ljava/lang/String; = "com.samsung.android.camerax.service.CameraExtensionService"

.field private static final SERVICE_TIMEOUT:J = 0x3e8L

.field private static final TAG:Ljava/lang/String;

.field private static final sLock:Ljava/lang/Object;

.field private static sServiceInitializer:Lcom/samsung/android/camerax/advanced/ServiceInitializer;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mExtensionService:Lcom/samsung/android/camerax/advanced/api/IExtensionService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static bridge synthetic -$$Nest$mfinishConnection(Lcom/samsung/android/camerax/advanced/ServiceInitializer;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->finishConnection(Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munbindService(Lcom/samsung/android/camerax/advanced/ServiceInitializer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->unbindService()V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cx/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/camerax/advanced/ServiceInitializer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Lcom/samsung/android/camerax/advanced/util/NumberingThreadFactory;

    const-string v1, "SvcInit"

    invoke-direct {v0, v1}, Lcom/samsung/android/camerax/advanced/util/NumberingThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->EXECUTOR:Ljava/util/concurrent/Executor;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->sLock:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private declared-synchronized bindToServiceSync()Z
    .locals 5

    monitor-enter p0

    .line 114
    :try_start_0
    sget-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    const-string v1, "bind to extension service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mServiceConnection:Landroid/content/ServiceConnection;

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/camerax/advanced/ServiceInitializer$1;-><init>(Lcom/samsung/android/camerax/advanced/ServiceInitializer;)V

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.cameraxservice"

    const-string v2, "com.samsung.android.camerax.service.CameraExtensionService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    sget-object v1, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindService start. intent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->EXECUTOR:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mServiceConnection:Landroid/content/ServiceConnection;

    const/16 v4, 0x49

    invoke-virtual {v1, v0, v4, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;ILjava/util/concurrent/Executor;Landroid/content/ServiceConnection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    const-wide/16 v1, 0x3e8

    :try_start_1
    invoke-virtual {p0, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    goto :goto_0

    .line 150
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/ServiceInitializer;
    :catch_0
    move-exception v1

    .line 151
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_2
    sget-object v2, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    const-string v3, "interrupted while binding"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :goto_0
    goto :goto_1

    .line 154
    :cond_0
    sget-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    const-string v1, "already tried bound to extension service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_1
    sget-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mExtensionService:Lcom/samsung/android/camerax/advanced/api/IExtensionService;

    if-eqz v2, :cond_1

    const-string v2, "available"

    goto :goto_2

    :cond_1
    const-string v2, "unavailable"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mExtensionService:Lcom/samsung/android/camerax/advanced/api/IExtensionService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    monitor-exit p0

    return v0

    .line 113
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public static deinit(Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p0, "callback"    # Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 92
    sget-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    const-string v1, "deinit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    sget-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->sServiceInitializer:Lcom/samsung/android/camerax/advanced/ServiceInitializer;

    invoke-direct {v0}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->unbindService()V

    .line 95
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/camerax/advanced/ServiceInitializer$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/camerax/advanced/ServiceInitializer$$ExternalSyntheticLambda2;-><init>(Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsDeinitializedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 96
    return-void
.end method

.method private declared-synchronized finishConnection(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "service"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 162
    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/camerax/advanced/api/IExtensionService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camerax/advanced/api/IExtensionService;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mExtensionService:Lcom/samsung/android/camerax/advanced/api/IExtensionService;

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    .line 161
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/ServiceInitializer;
    .end local p1    # "service":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/samsung/android/camerax/advanced/ServiceInitializer;
    .locals 1

    .line 64
    sget-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->sServiceInitializer:Lcom/samsung/android/camerax/advanced/ServiceInitializer;

    return-object v0
.end method

.method public static init(Ljava/lang/String;Landroid/content/Context;Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsInitializedCallback;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p0, "version"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsInitializedCallback;
    .param p3, "executor"    # Ljava/util/concurrent/Executor;

    .line 74
    sget-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->sServiceInitializer:Lcom/samsung/android/camerax/advanced/ServiceInitializer;

    if-nez v1, :cond_0

    .line 76
    new-instance v1, Lcom/samsung/android/camerax/advanced/ServiceInitializer;

    invoke-direct {v1, p1}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->sServiceInitializer:Lcom/samsung/android/camerax/advanced/ServiceInitializer;

    .line 78
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    sget-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: app version = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->sServiceInitializer:Lcom/samsung/android/camerax/advanced/ServiceInitializer;

    invoke-direct {v0}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->bindToServiceSync()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/samsung/android/camerax/advanced/ServiceInitializer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/samsung/android/camerax/advanced/ServiceInitializer$$ExternalSyntheticLambda0;-><init>(Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsInitializedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {p3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/samsung/android/camerax/advanced/ServiceInitializer$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/samsung/android/camerax/advanced/ServiceInitializer$$ExternalSyntheticLambda1;-><init>(Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsInitializedCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    :goto_0
    return-void

    .line 78
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic lambda$init$0(Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsInitializedCallback;)V
    .locals 1
    .param p0, "callback"    # Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsInitializedCallback;

    .line 86
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroidx/camera/extensions/impl/InitializerImpl$OnExtensionsInitializedCallback;->onFailure(I)V

    return-void
.end method

.method private declared-synchronized unbindService()V
    .locals 3

    monitor-enter p0

    .line 167
    :try_start_0
    sget-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    const-string v1, "unbind from extension service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mServiceConnection:Landroid/content/ServiceConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    goto :goto_0

    .line 172
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/ServiceInitializer;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    const-string v2, "fail to unbind from service"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mExtensionService:Lcom/samsung/android/camerax/advanced/api/IExtensionService;

    .line 177
    iput-object v0, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mServiceConnection:Landroid/content/ServiceConnection;

    goto :goto_1

    .line 179
    :cond_0
    sget-object v0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    const-string v1, "already unbound from extension service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 181
    :goto_1
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized initializeClient(Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;)Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    .locals 4
    .param p1, "configuration"    # Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;

    monitor-enter p0

    .line 100
    const/4 v0, 0x0

    .line 102
    .local v0, "client":Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mExtensionService:Lcom/samsung/android/camerax/advanced/api/IExtensionService;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->bindToServiceSync()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 104
    .end local p0    # "this":Lcom/samsung/android/camerax/advanced/ServiceInitializer;
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->mExtensionService:Lcom/samsung/android/camerax/advanced/api/IExtensionService;

    invoke-interface {v1, p1}, Lcom/samsung/android/camerax/advanced/api/IExtensionService;->initializeClient(Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;)Lcom/samsung/android/camerax/advanced/api/IExtensionClient;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v0, v1

    .line 107
    goto :goto_0

    .line 105
    :catch_0
    move-exception v1

    .line 106
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    sget-object v2, Lcom/samsung/android/camerax/advanced/ServiceInitializer;->TAG:Ljava/lang/String;

    const-string v3, "failed to initialize client"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 110
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 99
    .end local v0    # "client":Lcom/samsung/android/camerax/advanced/api/IExtensionClient;
    .end local p1    # "configuration":Lcom/samsung/android/camerax/advanced/api/ClientConfiguration;
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method
