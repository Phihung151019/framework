.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer$INetworkStatsAnalyzerCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiInjector;Lcom/samsung/android/server/wifi/ISemInterfaceNameProvider;Lcom/samsung/android/server/wifi/tcp/SemWifiSwitchForIndividualAppsService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public needInternetCheck(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 10
    .line 11
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;II)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public notifyActivityCheckPoll()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$minChinaNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setIsChinaNetwork(Z)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public notifyAnalyticsDisconnectReason(S)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmAnalyticsDisconnectReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;S)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public notifyDnsCheckResult(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastDnsResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq p1, v1, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-ne p1, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLastDnsResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 18
    .line 19
    .line 20
    goto :goto_1

    .line 21
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 22
    .line 23
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLastDnsResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 24
    .line 25
    .line 26
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastDnsResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eq v0, p1, :cond_2

    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 35
    .line 36
    const p1, 0x21006

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 40
    .line 41
    .line 42
    :cond_2
    return-void
.end method

.method public notifyDnsResult(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    const v0, 0x21141

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public notifyDnsResultType(II)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    const v0, 0x21142

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public notifyThroughputUpdate(IJJJ)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/os/Bundle;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "rssi"

    .line 11
    .line 12
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    .line 14
    .line 15
    const-string p1, "timeDelta"

    .line 16
    .line 17
    invoke-virtual {v1, p1, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 18
    .line 19
    .line 20
    const-string p1, "diffTxBytes"

    .line 21
    .line 22
    invoke-virtual {v1, p1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 23
    .line 24
    .line 25
    const-string p1, "diffRxBytes"

    .line 26
    .line 27
    invoke-virtual {v1, p1, p6, p7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    const p1, 0x21140

    .line 31
    .line 32
    .line 33
    iput p1, v0, Landroid/os/Message;->what:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$6;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method
