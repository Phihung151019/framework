.class Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemWifiHal$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;


# direct methods
.method public static synthetic $r8$lambda$2azgHPVR-_gTqIfSVT71ymzceZE()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;->lambda$onStart$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$Qj1YIYN5DMt3EO-Bgq-s077Q_bs(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;->lambda$onFailure$2(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$_56FKaqloSCOXMYAoL7Zrgq8w4A(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;->lambda$onSubsystemRestart$3(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$mpZAZbDc8G3dN8DQHG0HiJmfKrw()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;->lambda$onStop$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V

    return-void
.end method

.method private static synthetic lambda$onFailure$2(I)V
    .locals 2

    .line 1
    const-string v0, "IWifiEventCallback.onFailure. Status: "

    .line 2
    .line 3
    const-string v1, "SemHalDeviceManager"

    .line 4
    .line 5
    invoke-static {v0, p0, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$onStart$0()V
    .locals 2

    .line 1
    const-string v0, "SemHalDeviceManager"

    .line 2
    .line 3
    const-string v1, "IWifiEventCallback.onStart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private static synthetic lambda$onStop$1()V
    .locals 2

    .line 1
    const-string v0, "SemHalDeviceManager"

    .line 2
    .line 3
    const-string v1, "IWifiEventCallback.onStop"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic lambda$onSubsystemRestart$3(I)V
    .locals 3

    .line 1
    const-string v0, "SemHalDeviceManager"

    .line 2
    .line 3
    const-string v1, "IWifiEventCallback.onSubsystemRestart. Status: "

    .line 4
    .line 5
    invoke-static {v1, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiServiceImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    monitor-enter p1

    .line 15
    :try_start_0
    const-string v0, "SemHalDeviceManager"

    .line 16
    .line 17
    const-string v1, "Attempting to invoke mSubsystemRestartListener"

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->-$$Nest$fgetmSubsystemRestartListener(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$SubsystemRestartListenerProxy;

    .line 43
    .line 44
    const-string v1, "SemHalDeviceManager"

    .line 45
    .line 46
    const-string v2, "Invoking mSubsystemRestartListener"

    .line 47
    .line 48
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$SubsystemRestartListenerProxy;->action()V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    monitor-exit p1

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback$$ExternalSyntheticLambda0;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback$$ExternalSyntheticLambda2;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback$$ExternalSyntheticLambda2;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback$$ExternalSyntheticLambda2;-><init>(I)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onSubsystemRestart(I)V
    .locals 2

    .line 1
    const-string v0, "SemHalDeviceManager"

    .line 2
    .line 3
    const-string v1, "onSubsystemRestart"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->-$$Nest$fgetmEventHandler(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)Landroid/os/Handler;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback$$ExternalSyntheticLambda1;

    .line 15
    .line 16
    invoke-direct {v1, p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$WifiEventCallback;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    .line 21
    .line 22
    return-void
.end method
