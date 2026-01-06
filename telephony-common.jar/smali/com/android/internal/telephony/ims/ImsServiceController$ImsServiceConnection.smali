.class Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;
.super Ljava/lang/Object;
.source "ImsServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsServiceConnection"
.end annotation


# instance fields
.field private blacklist mIsServiceConnectionDead:Z

.field final synthetic blacklist this$0:Lcom/android/internal/telephony/ims/ImsServiceController;


# direct methods
.method public static synthetic blacklist $r8$lambda$lyjsMFpEmdfey2fzUlmJR5l5H2c(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->lambda$onNullBinding$3(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$nmXDzP_KEiPbj8bLK-h8tkBkccI(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->lambda$onServiceConnected$0(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oW8RHC7jOdKbFoD4ji5XEv7Bqrk(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->lambda$onServiceDisconnected$1(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$oZTDWYw7aV8U-NU1ymNJOgrYujY(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->lambda$onBindingDied$2(Landroid/content/ComponentName;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/ims/ImsServiceController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    return-void
.end method

.method private blacklist cleanupConnection()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mcleanupAllFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 219
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->setServiceController(Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic blacklist lambda$onBindingDied$2(Landroid/content/ComponentName;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onBindingDiedInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic blacklist lambda$onNullBinding$3(Landroid/content/ComponentName;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onNullBindingInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceConnected$0(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceDisconnected$1(Landroid/content/ComponentName;)V
    .locals 0

    .line 107
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onServiceDisconnectedInternal(Landroid/content/ComponentName;)V

    return-void
.end method

.method private blacklist onBindingDiedInternal(Landroid/content/ComponentName;)V
    .locals 3

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    .line 176
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 177
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 178
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 179
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmImsServiceConnection(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmImsServiceConnection(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->unbindfromService(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;)V

    .line 184
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmImsServiceConnection(Lcom/android/internal/telephony/ims/ImsServiceController;Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;)V

    .line 188
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 189
    const-string v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): onBindingDiedInternal. Starting rebind..."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mstartDelayedRebindToService(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 191
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindingDiedInternal, retrying in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmBackoff(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " mS"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 179
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist onNullBindingInternal(Landroid/content/ComponentName;)V
    .locals 3

    .line 195
    const-string v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "): onNullBindingInternal. Is service dead = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNullBindingInternal, is service dead = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 200
    iget-boolean p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->mIsServiceConnectionDead:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 201
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object p1, p1, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 205
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 206
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 207
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 210
    iget-object p1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;

    move-result-object p1

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmBoundUser(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/UserHandle;

    move-result-object p0

    invoke-interface {p1, v0, p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceControllerCallbacks;->imsServiceBindPermanentError(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 207
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private blacklist onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .line 130
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmBackoff(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/ExponentialBackoff;->stop()V

    .line 132
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 133
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v1

    const-string v3, "onServiceConnectedInternal"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 136
    const-string v1, "ImsServiceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ImsService("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): onServiceConnectedInternal with binder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->setServiceController(Landroid/os/IBinder;)V

    .line 139
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-virtual {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->notifyImsServiceReady()V

    .line 140
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mretrieveStaticImsServiceCapabilities(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 142
    iget-object p2, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmImsFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;

    .line 143
    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v3}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmImsFeatures(Lcom/android/internal/telephony/ims/ImsServiceController;)Ljava/util/Set;

    move-result-object v4

    iget v5, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    iget-object v6, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v6}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmServiceCapabilities(Lcom/android/internal/telephony/ims/ImsServiceController;)J

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mmodifyCapabiltiesForSlot(Lcom/android/internal/telephony/ims/ImsServiceController;Ljava/util/Set;IJ)J

    move-result-wide v3

    .line 145
    iget-object v5, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v5}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmSlotIdToSubIdMap(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/util/SparseIntArray;

    move-result-object v6

    iget v7, v1, Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;->slotId:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-static {v5, v1, v3, v4, v6}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$maddImsServiceFeature(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/telephony/ims/stub/ImsFeatureConfiguration$FeatureSlotPair;JI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 148
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBound(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 152
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$munbindService(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 154
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mstartDelayedRebindToService(Lcom/android/internal/telephony/ims/ImsServiceController;)V

    .line 155
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onConnected exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", retry in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmBackoff(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/ExponentialBackoff;

    move-result-object p0

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/ExponentialBackoff;->getCurrentDelay()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " mS"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 155
    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 157
    const-string p0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") RemoteException:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {p2}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private blacklist onServiceDisconnectedInternal(Landroid/content/ComponentName;)V
    .locals 3

    .line 164
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    iget-object v0, v0, Lcom/android/internal/telephony/ims/ImsServiceController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fputmIsBinding(Lcom/android/internal/telephony/ims/ImsServiceController;Z)V

    .line 166
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->cleanupConnection()V

    .line 167
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmLocalLog(Lcom/android/internal/telephony/ims/ImsServiceController;)Lcom/android/internal/telephony/LocalLog;

    move-result-object v0

    const-string v1, "onServiceDisconnectedInternal"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    .line 169
    const-string v0, "ImsServiceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "): onServiceDisconnectedInternal. Waiting..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$mcheckAndReportAnomaly(Lcom/android/internal/telephony/ims/ImsServiceController;Landroid/content/ComponentName;)V

    return-void

    :catchall_0
    move-exception p0

    .line 167
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onBindingDiedInternal(Landroid/content/ComponentName;)V

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onNullBindingInternal(Landroid/content/ComponentName;)V

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->onServiceDisconnectedInternal(Landroid/content/ComponentName;)V

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;->this$0:Lcom/android/internal/telephony/ims/ImsServiceController;

    invoke-static {v0}, Lcom/android/internal/telephony/ims/ImsServiceController;->-$$Nest$fgetmHandler(Lcom/android/internal/telephony/ims/ImsServiceController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/ims/ImsServiceController$ImsServiceConnection;Landroid/content/ComponentName;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
