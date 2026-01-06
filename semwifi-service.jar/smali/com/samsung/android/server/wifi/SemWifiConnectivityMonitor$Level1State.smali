.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Level1State"
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

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
    .locals 4

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    const/4 v2, 0x0

    .line 31
    invoke-static {v0, v1, v1, v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZZ)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 35
    .line 36
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetLinkDetectMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 56
    .line 57
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 71
    .line 72
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$minChinaNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setNetworkStatCheckDns(Z)V

    .line 77
    .line 78
    .line 79
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 80
    .line 81
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 88
    .line 89
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmCheckRoamedNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQcStartPoorLinkMonitor()V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 104
    .line 105
    .line 106
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 107
    .line 108
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    if-eqz v0, :cond_2

    .line 113
    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 115
    .line 116
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmEleNeedRecoveryFromEle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setMonitorEnabled(ZZ)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->registerPedometer()V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->registerBarometer()V

    .line 144
    .line 145
    .line 146
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 147
    .line 148
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsPoorLinkDetectedByLinkQuailityMonitor(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 152
    .line 153
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mregisterLinkQualityMonitorCallback(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMStatusChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 159
    .line 160
    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    if-eqz v0, :cond_3

    .line 168
    .line 169
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 170
    .line 171
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 172
    .line 173
    .line 174
    move-result-object v0

    .line 175
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 176
    .line 177
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    invoke-virtual {v0, p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->notifyLevel1Entered(Landroid/net/wifi/WifiInfo;)V

    .line 182
    .line 183
    .line 184
    :cond_3
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSuperAggressiveModeEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsPoorLinkDetectedByLinkQuailityMonitor(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    return-void

    .line 20
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 21
    .line 22
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$munregisterLinkQualityMonitorCallback(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 5
    .line 6
    .line 7
    iget p1, p1, Landroid/os/Message;->what:I

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    sparse-switch p1, :sswitch_data_0

    .line 11
    .line 12
    .line 13
    return v1

    .line 14
    :sswitch_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mnotifyPoorLink(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 30
    .line 31
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iget v2, v2, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mLastGoodRxRssi:I

    .line 36
    .line 37
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 38
    .line 39
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iget v3, v3, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mGoodLinkTargetRssi:I

    .line 44
    .line 45
    invoke-static {p1, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetRssiFetchHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;III)V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 49
    .line 50
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsPoorLinkDetectedByLinkQuailityMonitor(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 51
    .line 52
    .line 53
    return v0

    .line 54
    :sswitch_1
    const v1, 0x21073

    .line 55
    .line 56
    .line 57
    if-ne p1, v1, :cond_0

    .line 58
    .line 59
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 60
    .line 61
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/16 v1, 0x15

    .line 66
    .line 67
    iput v1, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 71
    .line 72
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    const/16 v1, 0x16

    .line 77
    .line 78
    iput v1, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 79
    .line 80
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 92
    .line 93
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    invoke-static {p1, v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mpoorLinkDetected(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/BssidStatistics;I)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    if-eqz p1, :cond_1

    .line 107
    .line 108
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getEleReason()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    add-int/lit8 v1, v1, 0x3c

    .line 125
    .line 126
    iput v1, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    .line 127
    .line 128
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 135
    .line 136
    .line 137
    move-result-object v1

    .line 138
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const/4 v2, 0x2

    .line 143
    aget-object v1, v1, v2

    .line 144
    .line 145
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    iput v1, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    .line 150
    .line 151
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 152
    .line 153
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetQcFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string v1, "SSIV"

    .line 167
    .line 168
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 172
    .line 173
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    if-eqz p1, :cond_3

    .line 195
    .line 196
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 197
    .line 198
    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    .line 199
    .line 200
    .line 201
    move-result v3

    .line 202
    if-eqz v3, :cond_3

    .line 203
    .line 204
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 205
    .line 206
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 207
    .line 208
    const/16 v4, 0x9

    .line 209
    .line 210
    invoke-static {v3, p1, v4, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 215
    .line 216
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 217
    .line 218
    .line 219
    move-result-object v3

    .line 220
    if-eqz v3, :cond_2

    .line 221
    .line 222
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 223
    .line 224
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 225
    .line 226
    .line 227
    move-result-object v3

    .line 228
    invoke-virtual {v3, v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setEleState(I)V

    .line 229
    .line 230
    .line 231
    :cond_2
    const-string v2, "Disable the current network temporarily. 2 min by ELE result: "

    .line 232
    .line 233
    invoke-static {v2, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    const-string v2, "WifiConnectivityMonitor"

    .line 238
    .line 239
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    .line 241
    .line 242
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 243
    .line 244
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 245
    .line 246
    .line 247
    move-result-object p0

    .line 248
    const-string p1, "IUIE"

    .line 249
    .line 250
    invoke-virtual {p0, v1, p1, v0}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 251
    .line 252
    .line 253
    return v0

    .line 254
    :cond_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 255
    .line 256
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 261
    .line 262
    .line 263
    return v0

    .line 264
    nop

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x21073 -> :sswitch_1
        0x21074 -> :sswitch_1
        0x21078 -> :sswitch_0
    .end sparse-switch
.end method
