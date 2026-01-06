.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->registerConnectionNetworkCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetCm(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/ConnectivityManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "WifiConnectivityMonitor.NCC"

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v2, 0x6

    .line 18
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v3, "sNetworkCallback (oA): "

    .line 28
    .line 29
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    .line 47
    .line 48
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 49
    .line 50
    const v2, 0x2113a

    .line 51
    .line 52
    .line 53
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$2000(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    .line 57
    .line 58
    iget-object v1, v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 61
    .line 62
    .line 63
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    .line 64
    .line 65
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 66
    .line 67
    const v1, 0x2112e

    .line 68
    .line 69
    .line 70
    invoke-static {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendMessageWithNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ILandroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    .line 75
    .line 76
    const-string p0, "true/false"

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    const-string p0, "false/true"

    .line 80
    .line 81
    :goto_1
    const-string p1, "sNetworkCallback(oA) ignore this network."

    .line 82
    .line 83
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    .line 89
    .line 90
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "sNetworkCallback(oCC) FULL : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, "(valid: "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v1, 0x10

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, "/captive: "

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x11

    .line 35
    .line 36
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, ")"

    .line 44
    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const-string v2, "WifiConnectivityMonitor.NCC"

    .line 53
    .line 54
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLogUtils(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->-$$Nest$fgetmHasEverCaptivePortalCapability(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;)Z

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 83
    .line 84
    .line 85
    move-result v1

    .line 86
    or-int/2addr v1, v2

    .line 87
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->-$$Nest$fputmHasEverCaptivePortalCapability(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;Z)V

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    .line 91
    .line 92
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 93
    .line 94
    const v0, 0x21131

    .line 95
    .line 96
    .line 97
    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendMessageWithNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ILandroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 4
    .line 5
    const p1, 0x21136

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "sNetworkCallback(oL) : "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/net/Network;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const-string v1, "WifiConnectivityMonitor.NCC"

    .line 20
    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController$1;->this$1:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;

    .line 25
    .line 26
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$NetworkCallbackController;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 27
    .line 28
    const v0, 0x2112d

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendMessageWithNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ILandroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
