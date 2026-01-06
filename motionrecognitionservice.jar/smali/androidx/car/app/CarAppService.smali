.class public abstract Landroidx/car/app/CarAppService;
.super Landroid/app/Service;
.source "CarAppService.java"


# static fields
.field private static final AUTO_DRIVE:Ljava/lang/String; = "AUTO_DRIVE"

.field public static final CATEGORY_CALLING_APP:Ljava/lang/String; = "androidx.car.app.category.CALLING"

.field public static final CATEGORY_CHARGING_APP:Ljava/lang/String; = "androidx.car.app.category.CHARGING"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CATEGORY_FEATURE_CLUSTER:Ljava/lang/String; = "androidx.car.app.category.FEATURE_CLUSTER"
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x6
    .end annotation
.end field

.field public static final CATEGORY_IOT_APP:Ljava/lang/String; = "androidx.car.app.category.IOT"

.field public static final CATEGORY_MESSAGING_APP:Ljava/lang/String; = "androidx.car.app.category.MESSAGING"

.field public static final CATEGORY_NAVIGATION_APP:Ljava/lang/String; = "androidx.car.app.category.NAVIGATION"

.field public static final CATEGORY_PARKING_APP:Ljava/lang/String; = "androidx.car.app.category.PARKING"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CATEGORY_POI_APP:Ljava/lang/String; = "androidx.car.app.category.POI"

.field public static final CATEGORY_SETTINGS_APP:Ljava/lang/String; = "androidx.car.app.category.SETTINGS"

.field public static final CATEGORY_WEATHER_APP:Ljava/lang/String; = "androidx.car.app.category.WEATHER"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "androidx.car.app.CarAppService"


# instance fields
.field private mAppInfo:Landroidx/car/app/AppInfo;

.field private final mBinders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroidx/car/app/SessionInfo;",
            "Landroidx/car/app/CarAppBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mHostInfo:Landroidx/car/app/HostInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 161
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public abstract createHostValidator()Landroidx/car/app/validation/HostValidator;
.end method

.method public final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 317
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 319
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 320
    .local v2, "arg":Ljava/lang/String;
    const-string v3, "AUTO_DRIVE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 321
    new-instance v3, Landroidx/car/app/CarAppService$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Landroidx/car/app/CarAppService$$ExternalSyntheticLambda0;-><init>(Landroidx/car/app/CarAppService;)V

    invoke-static {v3}, Landroidx/car/app/utils/ThreadUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 319
    .end local v2    # "arg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    :cond_1
    return-void
.end method

.method getAppInfo()Landroidx/car/app/AppInfo;
    .locals 1

    .line 390
    iget-object v0, p0, Landroidx/car/app/CarAppService;->mAppInfo:Landroidx/car/app/AppInfo;

    if-nez v0, :cond_0

    .line 392
    invoke-static {p0}, Landroidx/car/app/AppInfo;->create(Landroid/content/Context;)Landroidx/car/app/AppInfo;

    move-result-object v0

    iput-object v0, p0, Landroidx/car/app/CarAppService;->mAppInfo:Landroidx/car/app/AppInfo;

    .line 394
    :cond_0
    iget-object v0, p0, Landroidx/car/app/CarAppService;->mAppInfo:Landroidx/car/app/AppInfo;

    return-object v0
.end method

.method public final getCurrentSession()Landroidx/car/app/Session;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 360
    iget-object v0, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    monitor-enter v0

    .line 361
    :try_start_0
    iget-object v1, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 362
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/car/app/SessionInfo;Landroidx/car/app/CarAppBinder;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/car/app/SessionInfo;

    invoke-virtual {v3}, Landroidx/car/app/SessionInfo;->getDisplayType()I

    move-result v3

    if-nez v3, :cond_0

    .line 363
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/CarAppBinder;

    invoke-virtual {v1}, Landroidx/car/app/CarAppBinder;->getCurrentSession()Landroidx/car/app/Session;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 365
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroidx/car/app/SessionInfo;Landroidx/car/app/CarAppBinder;>;"
    :cond_0
    goto :goto_0

    .line 366
    :cond_1
    monitor-exit v0

    .line 368
    const/4 v0, 0x0

    return-object v0

    .line 366
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getHostInfo()Landroidx/car/app/HostInfo;
    .locals 1

    .line 344
    iget-object v0, p0, Landroidx/car/app/CarAppService;->mHostInfo:Landroidx/car/app/HostInfo;

    return-object v0
.end method

.method public final getSession(Landroidx/car/app/SessionInfo;)Landroidx/car/app/Session;
    .locals 3
    .param p1, "sessionInfo"    # Landroidx/car/app/SessionInfo;

    .line 377
    iget-object v0, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    monitor-enter v0

    .line 378
    :try_start_0
    iget-object v1, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/CarAppBinder;

    .line 379
    .local v1, "binder":Landroidx/car/app/CarAppBinder;
    if-nez v1, :cond_0

    .line 380
    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    .line 382
    :cond_0
    invoke-virtual {v1}, Landroidx/car/app/CarAppBinder;->getCurrentSession()Landroidx/car/app/Session;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 383
    .end local v1    # "binder":Landroidx/car/app/CarAppBinder;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$dump$1$androidx-car-app-CarAppService()V
    .locals 6

    .line 322
    iget-object v0, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    monitor-enter v0

    .line 323
    :try_start_0
    iget-object v1, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/CarAppBinder;

    .line 324
    .local v2, "binder":Landroidx/car/app/CarAppBinder;
    const-string v3, "CarApp"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    const-string v3, "CarApp"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Executing onAutoDriveEnabled for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 326
    invoke-virtual {v2}, Landroidx/car/app/CarAppBinder;->getCurrentSessionInfo()Landroidx/car/app/SessionInfo;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 325
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    invoke-virtual {v2}, Landroidx/car/app/CarAppBinder;->onAutoDriveEnabled()V

    .line 330
    .end local v2    # "binder":Landroidx/car/app/CarAppBinder;
    goto :goto_0

    .line 331
    :cond_1
    monitor-exit v0

    .line 332
    return-void

    .line 331
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method synthetic lambda$onUnbind$0$androidx-car-app-CarAppService(Landroidx/car/app/SessionInfo;)V
    .locals 2
    .param p1, "sessionInfo"    # Landroidx/car/app/SessionInfo;

    .line 220
    iget-object v0, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/car/app/CarAppBinder;

    .line 222
    .local v1, "binder":Landroidx/car/app/CarAppBinder;
    if-eqz v1, :cond_0

    .line 223
    invoke-virtual {v1}, Landroidx/car/app/CarAppBinder;->onDestroyLifecycle()V

    .line 225
    .end local v1    # "binder":Landroidx/car/app/CarAppBinder;
    :cond_0
    monitor-exit v0

    .line 226
    return-void

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 193
    invoke-static {p1}, Landroidx/car/app/SessionInfoIntentEncoder;->containsSessionInfo(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-static {p1}, Landroidx/car/app/SessionInfoIntentEncoder;->decode(Landroid/content/Intent;)Landroidx/car/app/SessionInfo;

    move-result-object v0

    goto :goto_0

    .line 195
    :cond_0
    sget-object v0, Landroidx/car/app/SessionInfo;->DEFAULT_SESSION_INFO:Landroidx/car/app/SessionInfo;

    :goto_0
    nop

    .line 197
    .local v0, "sessionInfo":Landroidx/car/app/SessionInfo;
    iget-object v1, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    monitor-enter v1

    .line 198
    :try_start_0
    iget-object v2, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 199
    iget-object v2, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    new-instance v3, Landroidx/car/app/CarAppBinder;

    invoke-direct {v3, p0, v0}, Landroidx/car/app/CarAppBinder;-><init>(Landroidx/car/app/CarAppService;Landroidx/car/app/SessionInfo;)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_1
    iget-object v2, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/CarAppBinder;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    monitor-exit v1

    return-object v2

    .line 202
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onCreateSession()Landroidx/car/app/Session;
    .locals 2

    .line 288
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Please override and implement CarAppService#onCreateSession(SessionInfo)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreateSession(Landroidx/car/app/SessionInfo;)Landroidx/car/app/Session;
    .locals 1
    .param p1, "sessionInfo"    # Landroidx/car/app/SessionInfo;
    .annotation runtime Landroidx/car/app/annotations/RequiresCarApi;
        value = 0x6
    .end annotation

    .line 310
    invoke-virtual {p0}, Landroidx/car/app/CarAppService;->onCreateSession()Landroidx/car/app/Session;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 3

    .line 173
    iget-object v0, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/car/app/CarAppBinder;

    .line 175
    .local v2, "binder":Landroidx/car/app/CarAppBinder;
    invoke-virtual {v2}, Landroidx/car/app/CarAppBinder;->destroy()V

    .line 176
    .end local v2    # "binder":Landroidx/car/app/CarAppBinder;
    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 178
    monitor-exit v0

    .line 179
    return-void

    .line 178
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 212
    const-string v0, "CarApp"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUnbind intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :cond_0
    invoke-static {p1}, Landroidx/car/app/SessionInfoIntentEncoder;->containsSessionInfo(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    invoke-static {p1}, Landroidx/car/app/SessionInfoIntentEncoder;->decode(Landroid/content/Intent;)Landroidx/car/app/SessionInfo;

    move-result-object v2

    goto :goto_0

    .line 218
    :cond_1
    sget-object v2, Landroidx/car/app/SessionInfo;->DEFAULT_SESSION_INFO:Landroidx/car/app/SessionInfo;

    :goto_0
    nop

    .line 219
    .local v2, "sessionInfo":Landroidx/car/app/SessionInfo;
    new-instance v3, Landroidx/car/app/CarAppService$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v2}, Landroidx/car/app/CarAppService$$ExternalSyntheticLambda1;-><init>(Landroidx/car/app/CarAppService;Landroidx/car/app/SessionInfo;)V

    invoke-static {v3}, Landroidx/car/app/utils/ThreadUtils;->runOnMain(Ljava/lang/Runnable;)V

    .line 228
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 229
    const-string v1, "onUnbind completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method setAppInfo(Landroidx/car/app/AppInfo;)V
    .locals 0
    .param p1, "appInfo"    # Landroidx/car/app/AppInfo;

    .line 403
    iput-object p1, p0, Landroidx/car/app/CarAppService;->mAppInfo:Landroidx/car/app/AppInfo;

    .line 404
    return-void
.end method

.method setBinder(Landroidx/car/app/SessionInfo;Landroidx/car/app/CarAppBinder;)V
    .locals 1
    .param p1, "sessionInfo"    # Landroidx/car/app/SessionInfo;
    .param p2, "binder"    # Landroidx/car/app/CarAppBinder;

    .line 408
    if-nez p2, :cond_0

    .line 409
    iget-object v0, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    return-void

    .line 413
    :cond_0
    iget-object v0, p0, Landroidx/car/app/CarAppService;->mBinders:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    return-void
.end method

.method setHostInfo(Landroidx/car/app/HostInfo;)V
    .locals 0
    .param p1, "hostInfo"    # Landroidx/car/app/HostInfo;

    .line 348
    iput-object p1, p0, Landroidx/car/app/CarAppService;->mHostInfo:Landroidx/car/app/HostInfo;

    .line 349
    return-void
.end method
