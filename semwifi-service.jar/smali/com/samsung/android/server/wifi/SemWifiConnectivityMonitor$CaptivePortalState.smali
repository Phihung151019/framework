.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptivePortalState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

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
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " enter"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "WifiConnectivityMonitor"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon$1(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {v0, v2, v2, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZZ)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentSemWifiConfiguration(Z)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 63
    .line 64
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    iget-boolean v4, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 81
    .line 82
    const/4 v5, 0x5

    .line 83
    if-eqz v4, :cond_0

    .line 84
    .line 85
    iget v4, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 86
    .line 87
    if-eq v4, v5, :cond_1

    .line 88
    .line 89
    :cond_0
    iput-boolean v1, v0, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal:Z

    .line 90
    .line 91
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 92
    .line 93
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 105
    .line 106
    iget v1, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 107
    .line 108
    invoke-static {v0, v1, v5, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    .line 109
    .line 110
    .line 111
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$CaptivePortalState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 112
    .line 113
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    invoke-virtual {p0, v2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidNoInternet(Z)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method
