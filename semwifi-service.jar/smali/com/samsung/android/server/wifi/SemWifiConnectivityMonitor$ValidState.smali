.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValidState"
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

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
    .locals 5

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v1

    .line 37
    iput-wide v1, v0, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->mBssidAvoidTimeMax:J

    .line 38
    .line 39
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 45
    .line 46
    const v1, 0x21083

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 53
    .line 54
    const/4 v1, 0x0

    .line 55
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmValidationCheckMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v2, 0x1

    .line 70
    if-eqz v0, :cond_0

    .line 71
    .line 72
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 73
    .line 74
    const v3, 0x21014

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    add-int/2addr v3, v2

    .line 87
    invoke-static {v0, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 88
    .line 89
    .line 90
    const v4, 0x21019

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v4, v3, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v0, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQcStartPoorLinkMonitor()V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 110
    .line 111
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmEleNeedRecoveryFromEle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 112
    .line 113
    .line 114
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMStatusChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 120
    .line 121
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    if-eqz v0, :cond_1

    .line 134
    .line 135
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 136
    .line 137
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 138
    .line 139
    const/16 v4, 0x8

    .line 140
    .line 141
    invoke-static {v3, v0, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mclearDisabledReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;II)V

    .line 142
    .line 143
    .line 144
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 145
    .line 146
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidNoInternet(Z)V

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_2

    .line 160
    .line 161
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->changeWifiValidState(Z)V

    .line 168
    .line 169
    .line 170
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIntelligentConnectionManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_3

    .line 177
    .line 178
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 179
    .line 180
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIntelligentConnectionManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiIntelligentConnectionManager;->validationSuccess()V

    .line 185
    .line 186
    .line 187
    :cond_3
    return-void
.end method

.method public exit()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

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
    const/4 v0, 0x3

    .line 10
    const-string v2, "WifiConnectivityMonitor"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    sparse-switch p1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    return v1

    .line 17
    :sswitch_0
    const-string p1, "CMD_PROVISIONING_FAIL"

    .line 18
    .line 19
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 23
    .line 24
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget p1, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStepTemp:I

    .line 29
    .line 30
    invoke-virtual {p0, v3, p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->reportNetworkConnectivityToNM(ZII)Z

    .line 31
    .line 32
    .line 33
    return v3

    .line 34
    :sswitch_1
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    const-string p1, "CMD_REACHABILITY_LOST"

    .line 41
    .line 42
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 46
    .line 47
    const/4 p1, 0x4

    .line 48
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 49
    .line 50
    .line 51
    return v3

    .line 52
    :sswitch_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 53
    .line 54
    const/16 p1, 0x1b

    .line 55
    .line 56
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 57
    .line 58
    .line 59
    return v3

    .line 60
    :sswitch_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 69
    .line 70
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidNoCheckState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 75
    .line 76
    .line 77
    return v3

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-ne p1, v3, :cond_2

    .line 85
    .line 86
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 87
    .line 88
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidNonSwitchableState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 93
    .line 94
    .line 95
    return v3

    .line 96
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 97
    .line 98
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidSwitchableState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 103
    .line 104
    .line 105
    return v3

    .line 106
    :sswitch_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 107
    .line 108
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateWcmSettings(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 112
    .line 113
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 118
    .line 119
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdetermineMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 120
    .line 121
    .line 122
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 123
    .line 124
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eq p1, v2, :cond_7

    .line 129
    .line 130
    if-nez p1, :cond_3

    .line 131
    .line 132
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 133
    .line 134
    const v4, 0x21014

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 141
    .line 142
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 143
    .line 144
    .line 145
    move-result v4

    .line 146
    add-int/2addr v4, v3

    .line 147
    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 148
    .line 149
    .line 150
    const v5, 0x21019

    .line 151
    .line 152
    .line 153
    invoke-virtual {v2, v5, v4, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v2, v4}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 158
    .line 159
    .line 160
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 161
    .line 162
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-nez v2, :cond_3

    .line 167
    .line 168
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 169
    .line 170
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 175
    .line 176
    .line 177
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 178
    .line 179
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 184
    .line 185
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$minChinaNetwork(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 186
    .line 187
    .line 188
    move-result v4

    .line 189
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setNetworkStatCheckDns(Z)V

    .line 190
    .line 191
    .line 192
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 193
    .line 194
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 195
    .line 196
    .line 197
    move-result v2

    .line 198
    if-ne v2, v3, :cond_4

    .line 199
    .line 200
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 201
    .line 202
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidNonSwitchableState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNonSwitchableState;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 207
    .line 208
    .line 209
    return v3

    .line 210
    :cond_4
    if-ne p1, v3, :cond_6

    .line 211
    .line 212
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 213
    .line 214
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 215
    .line 216
    .line 217
    move-result p1

    .line 218
    const/4 v2, 0x2

    .line 219
    if-eq p1, v2, :cond_5

    .line 220
    .line 221
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 222
    .line 223
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 224
    .line 225
    .line 226
    move-result p1

    .line 227
    if-ne p1, v0, :cond_6

    .line 228
    .line 229
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 230
    .line 231
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidSwitchableState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidSwitchableState;

    .line 232
    .line 233
    .line 234
    move-result-object p1

    .line 235
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 236
    .line 237
    .line 238
    return v3

    .line 239
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 240
    .line 241
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-nez p1, :cond_7

    .line 246
    .line 247
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 248
    .line 249
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 254
    .line 255
    .line 256
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 257
    .line 258
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmValidNoCheckState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$ValidNoCheckState;

    .line 259
    .line 260
    .line 261
    move-result-object p1

    .line 262
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 263
    .line 264
    .line 265
    :cond_7
    :sswitch_5
    return v3

    .line 266
    nop

    .line 267
    :sswitch_data_0
    .sparse-switch
        0x21006 -> :sswitch_4
        0x21024 -> :sswitch_5
        0x21083 -> :sswitch_3
        0x210dc -> :sswitch_2
        0x210e8 -> :sswitch_1
        0x210e9 -> :sswitch_0
    .end sparse-switch
.end method
