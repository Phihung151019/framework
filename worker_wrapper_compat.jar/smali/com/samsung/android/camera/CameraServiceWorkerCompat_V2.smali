.class public Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;
.super Ljava/lang/Object;
.source "CameraServiceWorkerCompat_V2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;,
        Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraServiceWorkerCompat_V2"


# instance fields
.field private final mCallbackLock:Ljava/lang/Object;

.field private mCameraServiceWorker:Lcom/samsung/android/camera/ICameraServiceWorker;

.field private mPackageName:Ljava/lang/String;

.field private mRequestInjector:Lcom/samsung/android/camera/IRequestInjector;

.field private mRequestInjectorCallback:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;

.field private mRequestInjectorCallbackExecutor:Ljava/util/concurrent/Executor;

.field private mRequestInjectorCallbackProxy:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallbackLock(Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestInjectorCallback(Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;)Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjectorCallback:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRequestInjectorCallbackExecutor(Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjectorCallbackExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;-><init>(Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;)V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjectorCallbackProxy:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mCallbackLock:Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjectorCallback:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjectorCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mPackageName:Ljava/lang/String;

    .line 56
    return-void
.end method

.method private getRequestInjector()Lcom/samsung/android/camera/IRequestInjector;
    .locals 3

    .line 204
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjector:Lcom/samsung/android/camera/IRequestInjector;

    if-nez v0, :cond_0

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mCameraServiceWorker:Lcom/samsung/android/camera/ICameraServiceWorker;

    invoke-interface {v0}, Lcom/samsung/android/camera/ICameraServiceWorker;->acquireRequestInjector()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/camera/IRequestInjector$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjector:Lcom/samsung/android/camera/IRequestInjector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CameraServiceWorkerCompat_V2"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjector:Lcom/samsung/android/camera/IRequestInjector;

    return-object v0
.end method


# virtual methods
.method public applyRequestsToRequestInjector([Landroid/os/PersistableBundle;)V
    .locals 1
    .param p1, "requests"    # [Landroid/os/PersistableBundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->getRequestInjector()Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v0

    .line 144
    .local v0, "requestInjector":Lcom/samsung/android/camera/IRequestInjector;
    invoke-interface {v0, p1}, Lcom/samsung/android/camera/IRequestInjector;->applyRequests([Landroid/os/PersistableBundle;)V

    .line 145
    return-void
.end method

.method public clearRequestsToRequestInjector()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->getRequestInjector()Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/camera/IRequestInjector;->clearRequests()V

    .line 154
    return-void
.end method

.method public getCameraServiceWorker(Landroid/content/Context;)Landroid/os/IBinder;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    const-string v0, "CameraServiceWorkerCompat_V2"

    const-string v1, "getCameraServiceWorker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    nop

    .line 67
    const-string v0, "CameraServiceWorker_manager"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;

    .line 68
    .local v0, "manager":Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;
    invoke-virtual {v0}, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;->getMyBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/camera/ICameraServiceWorker$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/camera/ICameraServiceWorker;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mCameraServiceWorker:Lcom/samsung/android/camera/ICameraServiceWorker;

    .line 69
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mPackageName:Ljava/lang/String;

    .line 70
    invoke-virtual {v0}, Lcom/samsung/android/camera/manager/CameraServiceWorkerManager;->getMyBinder()Landroid/os/IBinder;

    move-result-object v1

    return-object v1
.end method

.method public registerRequestInjectorCallback(Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;Ljava/util/concurrent/Executor;)V
    .locals 6
    .param p1, "callback"    # Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 164
    const-string v0, "CameraServiceWorkerCompat_V2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerRequestInjectorCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 169
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 170
    :try_start_1
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjectorCallback:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;

    .line 171
    iput-object p2, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjectorCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 172
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->getRequestInjector()Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjectorCallbackProxy:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;

    invoke-virtual {v3}, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/IRequestInjector;->registerCallback(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 178
    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    goto :goto_1

    .line 172
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;
    .end local p1    # "callback":Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 178
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;
    .restart local p1    # "callback":Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 175
    :catch_0
    move-exception v2

    .line 176
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "CameraServiceWorkerCompat_V2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerRequestInjectorCallback : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 178
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 180
    :goto_1
    return-void

    .line 178
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 179
    throw v2
.end method

.method public unregisterRequestInjectorCallback(Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;)V
    .locals 6
    .param p1, "callback"    # Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;

    .line 188
    const-string v0, "CameraServiceWorkerCompat_V2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterRequestInjectorCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 191
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 192
    const/4 v3, 0x0

    :try_start_1
    iput-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjectorCallback:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;

    .line 193
    iput-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjectorCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 194
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :try_start_2
    invoke-direct {p0}, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->getRequestInjector()Lcom/samsung/android/camera/IRequestInjector;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;->mRequestInjectorCallbackProxy:Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;

    invoke-virtual {v3}, Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallbackProxy;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/camera/IRequestInjector;->unregisterCallback(Landroid/os/IBinder;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    nop

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    goto :goto_1

    .line 194
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "identity":J
    .end local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;
    .end local p1    # "callback":Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;
    :try_start_4
    throw v3
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 199
    .restart local v0    # "identity":J
    .restart local p0    # "this":Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2;
    .restart local p1    # "callback":Lcom/samsung/android/camera/CameraServiceWorkerCompat_V2$RequestInjectorCallback;
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v3, "CameraServiceWorkerCompat_V2"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unregisterRequestInjectorCallback : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 199
    nop

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 201
    :goto_1
    return-void

    .line 199
    :goto_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    throw v2
.end method
