.class public Landroidx/car/app/navigation/NavigationManager;
.super Ljava/lang/Object;
.source "NavigationManager.java"

# interfaces
.implements Landroidx/car/app/managers/Manager;


# instance fields
.field private final mCarContext:Landroidx/car/app/CarContext;

.field private final mHostDispatcher:Landroidx/car/app/HostDispatcher;

.field private mIsAutoDriveEnabled:Z

.field private mIsNavigating:Z

.field private final mNavigationManager:Landroidx/car/app/navigation/INavigationManager$Stub;

.field private mNavigationManagerCallback:Landroidx/car/app/navigation/NavigationManagerCallback;

.field private mNavigationManagerCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method protected constructor <init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V
    .locals 1
    .param p1, "carContext"    # Landroidx/car/app/CarContext;
    .param p2, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;
    .param p3, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/CarContext;

    iput-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mCarContext:Landroidx/car/app/CarContext;

    .line 333
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/car/app/HostDispatcher;

    iput-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    .line 334
    new-instance v0, Landroidx/car/app/navigation/NavigationManager$1;

    invoke-direct {v0, p0, p3}, Landroidx/car/app/navigation/NavigationManager$1;-><init>(Landroidx/car/app/navigation/NavigationManager;Landroidx/lifecycle/Lifecycle;)V

    iput-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mNavigationManager:Landroidx/car/app/navigation/INavigationManager$Stub;

    .line 347
    new-instance v0, Landroidx/car/app/navigation/NavigationManager$2;

    invoke-direct {v0, p0, p3}, Landroidx/car/app/navigation/NavigationManager$2;-><init>(Landroidx/car/app/navigation/NavigationManager;Landroidx/lifecycle/Lifecycle;)V

    .line 354
    .local v0, "observer":Landroidx/lifecycle/LifecycleObserver;
    invoke-virtual {p3, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 355
    return-void
.end method

.method public static create(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)Landroidx/car/app/navigation/NavigationManager;
    .locals 1
    .param p0, "carContext"    # Landroidx/car/app/CarContext;
    .param p1, "hostDispatcher"    # Landroidx/car/app/HostDispatcher;
    .param p2, "lifecycle"    # Landroidx/lifecycle/Lifecycle;

    .line 257
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    new-instance v0, Landroidx/car/app/navigation/NavigationManager;

    invoke-direct {v0, p0, p1, p2}, Landroidx/car/app/navigation/NavigationManager;-><init>(Landroidx/car/app/CarContext;Landroidx/car/app/HostDispatcher;Landroidx/lifecycle/Lifecycle;)V

    return-object v0
.end method

.method static synthetic lambda$navigationEnded$2(Landroidx/car/app/navigation/INavigationHost;)Ljava/lang/Object;
    .locals 1
    .param p0, "service"    # Landroidx/car/app/navigation/INavigationHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 243
    invoke-interface {p0}, Landroidx/car/app/navigation/INavigationHost;->navigationEnded()V

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$navigationStarted$1(Landroidx/car/app/navigation/INavigationHost;)Ljava/lang/Object;
    .locals 1
    .param p0, "service"    # Landroidx/car/app/navigation/INavigationHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 216
    invoke-interface {p0}, Landroidx/car/app/navigation/INavigationHost;->navigationStarted()V

    .line 217
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic lambda$updateTrip$0(Landroidx/car/app/serialization/Bundleable;Landroidx/car/app/navigation/INavigationHost;)Ljava/lang/Object;
    .locals 1
    .param p0, "bundle"    # Landroidx/car/app/serialization/Bundleable;
    .param p1, "service"    # Landroidx/car/app/navigation/INavigationHost;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 126
    invoke-interface {p1, p0}, Landroidx/car/app/navigation/INavigationHost;->updateTrip(Landroidx/car/app/serialization/Bundleable;)V

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public clearNavigationManagerCallback()V
    .locals 2

    .line 177
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 178
    iget-boolean v0, p0, Landroidx/car/app/navigation/NavigationManager;->mIsNavigating:Z

    if-nez v0, :cond_0

    .line 181
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mNavigationManagerCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 182
    iput-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mNavigationManagerCallback:Landroidx/car/app/navigation/NavigationManagerCallback;

    .line 183
    return-void

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Removing callback while navigating"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getIInterface()Landroidx/car/app/navigation/INavigationManager$Stub;
    .locals 1

    .line 271
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mNavigationManager:Landroidx/car/app/navigation/INavigationManager$Stub;

    return-object v0
.end method

.method synthetic lambda$onStopNavigation$3$androidx-car-app-navigation-NavigationManager()V
    .locals 1

    .line 292
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mNavigationManagerCallback:Landroidx/car/app/navigation/NavigationManagerCallback;

    .line 293
    .local v0, "callback":Landroidx/car/app/navigation/NavigationManagerCallback;
    if-eqz v0, :cond_0

    .line 294
    invoke-interface {v0}, Landroidx/car/app/navigation/NavigationManagerCallback;->onStopNavigation()V

    .line 296
    :cond_0
    return-void
.end method

.method public navigationEnded()V
    .locals 4

    .line 235
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 236
    iget-boolean v0, p0, Landroidx/car/app/navigation/NavigationManager;->mIsNavigating:Z

    if-nez v0, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/navigation/NavigationManager;->mIsNavigating:Z

    .line 240
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    new-instance v1, Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda1;-><init>()V

    const-string v2, "navigation"

    const-string v3, "navigationEnded"

    invoke-virtual {v0, v2, v3, v1}, Landroidx/car/app/HostDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    .line 247
    return-void
.end method

.method public navigationStarted()V
    .locals 4

    .line 205
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 206
    iget-boolean v0, p0, Landroidx/car/app/navigation/NavigationManager;->mIsNavigating:Z

    if-eqz v0, :cond_0

    .line 207
    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mNavigationManagerCallback:Landroidx/car/app/navigation/NavigationManagerCallback;

    if-eqz v0, :cond_1

    .line 212
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/app/navigation/NavigationManager;->mIsNavigating:Z

    .line 213
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    new-instance v1, Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda2;-><init>()V

    const-string v2, "navigation"

    const-string v3, "navigationStarted"

    invoke-virtual {v0, v2, v3, v1}, Landroidx/car/app/HostDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    .line 220
    return-void

    .line 210
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No callback has been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onAutoDriveEnabled()V
    .locals 4

    .line 310
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 311
    const/4 v0, 0x3

    const-string v1, "CarApp.Nav"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    const-string v0, "Executing onAutoDriveEnabled"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/car/app/navigation/NavigationManager;->mIsAutoDriveEnabled:Z

    .line 317
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mNavigationManagerCallback:Landroidx/car/app/navigation/NavigationManagerCallback;

    .line 318
    .local v0, "callback":Landroidx/car/app/navigation/NavigationManagerCallback;
    iget-object v2, p0, Landroidx/car/app/navigation/NavigationManager;->mNavigationManagerCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 319
    .local v2, "executor":Ljava/util/concurrent/Executor;
    if-eqz v0, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 325
    :cond_1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda3;-><init>(Landroidx/car/app/navigation/NavigationManagerCallback;)V

    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 326
    return-void

    .line 320
    :cond_2
    :goto_0
    const-string v3, "NavigationManagerCallback not set, skipping onAutoDriveEnabled"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-void
.end method

.method public onStopNavigation()V
    .locals 2

    .line 281
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 282
    iget-boolean v0, p0, Landroidx/car/app/navigation/NavigationManager;->mIsNavigating:Z

    if-nez v0, :cond_0

    .line 283
    return-void

    .line 285
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/car/app/navigation/NavigationManager;->mIsNavigating:Z

    .line 287
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mNavigationManagerCallbackExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 288
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mNavigationManagerCallbackExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda4;-><init>(Landroidx/car/app/navigation/NavigationManager;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 297
    return-void
.end method

.method public setNavigationManagerCallback(Landroidx/car/app/navigation/NavigationManagerCallback;)V
    .locals 1
    .param p1, "callback"    # Landroidx/car/app/navigation/NavigationManagerCallback;

    .line 145
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 146
    iget-object v0, p0, Landroidx/car/app/navigation/NavigationManager;->mCarContext:Landroidx/car/app/CarContext;

    invoke-static {v0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 147
    .local v0, "executor":Ljava/util/concurrent/Executor;
    invoke-virtual {p0, v0, p1}, Landroidx/car/app/navigation/NavigationManager;->setNavigationManagerCallback(Ljava/util/concurrent/Executor;Landroidx/car/app/navigation/NavigationManagerCallback;)V

    .line 148
    return-void
.end method

.method public setNavigationManagerCallback(Ljava/util/concurrent/Executor;Landroidx/car/app/navigation/NavigationManagerCallback;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "callback"    # Landroidx/car/app/navigation/NavigationManagerCallback;

    .line 160
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 162
    iput-object p1, p0, Landroidx/car/app/navigation/NavigationManager;->mNavigationManagerCallbackExecutor:Ljava/util/concurrent/Executor;

    .line 163
    iput-object p2, p0, Landroidx/car/app/navigation/NavigationManager;->mNavigationManagerCallback:Landroidx/car/app/navigation/NavigationManagerCallback;

    .line 164
    iget-boolean v0, p0, Landroidx/car/app/navigation/NavigationManager;->mIsAutoDriveEnabled:Z

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {p0}, Landroidx/car/app/navigation/NavigationManager;->onAutoDriveEnabled()V

    .line 167
    :cond_0
    return-void
.end method

.method public updateTrip(Landroidx/car/app/navigation/model/Trip;)V
    .locals 5
    .param p1, "trip"    # Landroidx/car/app/navigation/model/Trip;

    .line 111
    invoke-static {}, Landroidx/car/app/utils/ThreadUtils;->checkMainThread()V

    .line 112
    iget-boolean v0, p0, Landroidx/car/app/navigation/NavigationManager;->mIsNavigating:Z

    if-eqz v0, :cond_0

    .line 118
    :try_start_0
    invoke-static {p1}, Landroidx/car/app/serialization/Bundleable;->create(Ljava/lang/Object;)Landroidx/car/app/serialization/Bundleable;

    move-result-object v0
    :try_end_0
    .catch Landroidx/car/app/serialization/BundlerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .local v0, "bundle":Landroidx/car/app/serialization/Bundleable;
    nop

    .line 123
    iget-object v1, p0, Landroidx/car/app/navigation/NavigationManager;->mHostDispatcher:Landroidx/car/app/HostDispatcher;

    new-instance v2, Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Landroidx/car/app/navigation/NavigationManager$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/serialization/Bundleable;)V

    const-string v3, "navigation"

    const-string v4, "updateTrip"

    invoke-virtual {v1, v3, v4, v2}, Landroidx/car/app/HostDispatcher;->dispatch(Ljava/lang/String;Ljava/lang/String;Landroidx/car/app/HostCall;)V

    .line 130
    return-void

    .line 119
    .end local v0    # "bundle":Landroidx/car/app/serialization/Bundleable;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroidx/car/app/serialization/BundlerException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Serialization failure"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 113
    .end local v0    # "e":Landroidx/car/app/serialization/BundlerException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Navigation is not started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
