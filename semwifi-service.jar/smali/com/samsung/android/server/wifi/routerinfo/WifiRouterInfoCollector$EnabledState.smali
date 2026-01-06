.class Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$EnabledState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$EnabledState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$EnabledState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$EnabledState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 10
    .line 11
    invoke-static {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/android/internal/util/State;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$EnabledState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 20
    .line 21
    invoke-static {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/android/internal/util/State;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public exit()V
    .locals 0

    .line 1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 1

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 p0, 0x0

    .line 7
    return p0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$EnabledState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$EnabledState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 17
    .line 18
    invoke-static {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmConnectedState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/android/internal/util/State;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$EnabledState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 27
    .line 28
    invoke-static {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmDisconnectedState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/android/internal/util/State;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 p0, 0x1

    .line 36
    return p0
.end method
