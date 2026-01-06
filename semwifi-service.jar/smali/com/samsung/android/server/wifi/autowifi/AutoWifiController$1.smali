.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLinkConfiguredChanged()V
    .locals 0

    .line 1
    return-void
.end method

.method public onNetworkStateChanged(Landroid/net/NetworkInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/net/NetworkInfo$State;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;Landroid/net/NetworkInfo$State;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/net/NetworkInfo$State;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 30
    .line 31
    if-ne p1, v0, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-eqz p1, :cond_4

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    const/4 v1, -0x1

    .line 50
    if-eq v0, v1, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 53
    .line 54
    invoke-static {v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 65
    .line 66
    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;ZLjava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void

    .line 75
    :cond_1
    const-string p0, "AutoWifiController"

    .line 76
    .line 77
    const-string p1, "network was connected but config is null"

    .line 78
    .line 79
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/net/NetworkInfo$State;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 90
    .line 91
    if-ne p1, v0, :cond_3

    .line 92
    .line 93
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 94
    .line 95
    invoke-static {p0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$mnotifyConnectingState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)Landroid/net/NetworkInfo$State;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 106
    .line 107
    if-ne p1, v0, :cond_4

    .line 108
    .line 109
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$1;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    .line 110
    .line 111
    const/4 p1, 0x0

    .line 112
    const/4 v0, 0x0

    .line 113
    invoke-static {p0, p1, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->-$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;ZLjava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    :goto_0
    return-void
.end method
