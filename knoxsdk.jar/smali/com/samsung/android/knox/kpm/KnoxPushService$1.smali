.class Lcom/samsung/android/knox/kpm/KnoxPushService$1;
.super Ljava/lang/Object;
.source "qb/104190634 99f1dbf964410b239c7a01052e351590f66e8dc00afbe8338c9b357cd98f1b2a"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/kpm/KnoxPushService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic greylist this$0:Lcom/samsung/android/knox/kpm/KnoxPushService;


# direct methods
.method public constructor greylist <init>(Lcom/samsung/android/knox/kpm/KnoxPushService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService$1;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService$1;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushService;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService$1;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushService;

    invoke-static {p2}, Lcom/samsung/android/knox/kpm/IKnoxPushService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/kpm/IKnoxPushService;

    move-result-object p2

    iput-object p2, v0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    const-string p2, "KnoxPushService"

    const-string v0, "On onServiceConnected"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService$1;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushService;

    invoke-virtual {p0}, Lcom/samsung/android/knox/kpm/KnoxPushService;->handlePendingRequest()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/samsung/android/knox/kpm/KnoxPushService$1;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushService;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService$1;->this$0:Lcom/samsung/android/knox/kpm/KnoxPushService;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/knox/kpm/KnoxPushService;->mKnoxPushService:Lcom/samsung/android/knox/kpm/IKnoxPushService;

    const-string p0, "KnoxPushService"

    const-string v0, "On onServiceDisconnected"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
