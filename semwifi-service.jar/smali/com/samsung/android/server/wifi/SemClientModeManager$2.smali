.class Lcom/samsung/android/server/wifi/SemClientModeManager$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemClientModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;


# direct methods
.method public static synthetic $r8$lambda$IDCx_paXB9dyV1sRS2A7FIpMAz0(Lcom/samsung/android/server/wifi/SemClientModeManager$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->lambda$onLost$1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic $r8$lambda$wYpcD5Xr_Wlrkmvq39Ayt4QL1hQ(Lcom/samsung/android/server/wifi/SemClientModeManager$2;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->lambda$onAvailable$0(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/SemClientModeManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic lambda$onAvailable$0(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmDefaultNetworkListeners(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;

    .line 22
    .line 23
    invoke-interface {v0, p1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;->onChanged(Z)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private synthetic lambda$onLost$1()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmDefaultNetworkListeners(Lcom/samsung/android/server/wifi/SemClientModeManager;)Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-interface {v0, v1}, Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider$DefaultNetworkListener;->onChanged(Z)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string v1, "default network callback onAvailable, current iface: "

    .line 11
    .line 12
    const-string v2, "SemClientModeManager"

    .line 13
    .line 14
    invoke-static {v1, v0, v2}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const-string v1, "wlan"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v0, 0x0

    .line 30
    :goto_0
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 33
    .line 34
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemClientModeManager;->mStateMachine:Lcom/samsung/android/server/wifi/SemClientModeManager$ClientModeStateMachine;

    .line 35
    .line 36
    const/16 v2, 0xa

    .line 37
    .line 38
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/util/StateMachine;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v1, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    new-instance v1, Lcom/samsung/android/server/wifi/SemClientModeManager$2$$ExternalSyntheticLambda2;

    .line 52
    .line 53
    invoke-direct {v1, p0, v0}, Lcom/samsung/android/server/wifi/SemClientModeManager$2$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/server/wifi/SemClientModeManager$2;Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 5
    .line 6
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$mgetInterfaceName(Lcom/samsung/android/server/wifi/SemClientModeManager;Landroid/net/Network;)Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "default network callback onLost, last iface: "

    .line 11
    .line 12
    const-string v1, "SemClientModeManager"

    .line 13
    .line 14
    invoke-static {v0, p1, v1}, Lcom/samsung/android/server/wifi/SemClientModeManager$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemClientModeManager$2;->this$0:Lcom/samsung/android/server/wifi/SemClientModeManager;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemClientModeManager;->-$$Nest$fgetmWifiThreadRunner(Lcom/samsung/android/server/wifi/SemClientModeManager;)Lcom/samsung/android/server/wifi/SemWifiThreadRunner;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance v0, Lcom/samsung/android/server/wifi/SemClientModeManager$2$$ExternalSyntheticLambda1;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-direct {v0, v1, p0}, Lcom/samsung/android/server/wifi/SemClientModeManager$2$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiThreadRunner;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
