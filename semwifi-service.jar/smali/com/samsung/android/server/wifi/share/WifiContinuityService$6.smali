.class Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/WifiContinuityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

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
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fputisConnected(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/net/ConnectivityManager$NetworkCallback;->onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetisConnected(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const/16 p1, 0x11

    .line 14
    .line 15
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    const/4 v0, 0x0

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$sfgetDBG()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const-string p1, "SemWifi.Continuity"

    .line 29
    .line 30
    const-string p2, "captive portal network"

    .line 31
    .line 32
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetwifiManagerProxy(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 48
    .line 49
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetconfigManager(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_4

    .line 58
    .line 59
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 60
    .line 61
    invoke-static {p2}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetconfigLock(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    monitor-enter p2

    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fgetshareableNetworkIds(Lcom/samsung/android/server/wifi/share/WifiContinuityService;)Ljava/util/Set;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 73
    .line 74
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    monitor-exit p2

    .line 82
    goto :goto_0

    .line 83
    :catchall_0
    move-exception p0

    .line 84
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    throw p0

    .line 86
    :cond_2
    const/16 p1, 0x10

    .line 87
    .line 88
    invoke-virtual {p2, p1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    if-nez p1, :cond_3

    .line 93
    .line 94
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$sfgetDBG()Z

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-eqz p1, :cond_4

    .line 99
    .line 100
    const-string p1, "SemWifi.Continuity"

    .line 101
    .line 102
    const-string p2, "internet unavailable"

    .line 103
    .line 104
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    const/4 v0, 0x1

    .line 109
    :cond_4
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 110
    .line 111
    const/16 p1, 0x8

    .line 112
    .line 113
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 114
    .line 115
    .line 116
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$fputisConnected(Lcom/samsung/android/server/wifi/share/WifiContinuityService;Z)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/WifiContinuityService$6;->this$0:Lcom/samsung/android/server/wifi/share/WifiContinuityService;

    .line 11
    .line 12
    const/4 p1, 0x4

    .line 13
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/samsung/android/server/wifi/share/WifiContinuityService;->-$$Nest$sfgetDBG()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-eqz p0, :cond_0

    .line 21
    .line 22
    const-string p0, "SemWifi.Continuity"

    .line 23
    .line 24
    const-string p1, "Wi-Fi network is lost"

    .line 25
    .line 26
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method
