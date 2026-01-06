.class Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DefaultState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DefaultState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    invoke-static {}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$sfgetDBG()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    const-string v2, "unhandled message : "

    .line 17
    .line 18
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DefaultState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 22
    .line 23
    iget p1, p1, Landroid/os/Message;->what:I

    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->access$000(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    const-string p1, "WifiRouterInfoCollector"

    .line 37
    .line 38
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    .line 40
    .line 41
    :cond_0
    return v1

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DefaultState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiEnabled(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DefaultState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 51
    .line 52
    invoke-static {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmEnabledState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/android/internal/util/State;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 57
    .line 58
    .line 59
    return v1

    .line 60
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$DefaultState;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 61
    .line 62
    invoke-static {p0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/android/internal/util/State;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 67
    .line 68
    .line 69
    return v1
.end method
