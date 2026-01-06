.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EvaluatedState"
.end annotation


# instance fields
.field private mRxPkts:J

.field private mTxPkts:J

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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

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
    .locals 2

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetLinkDetectMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmGoodLinkLastRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 43
    .line 44
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmConnectionPersonalizer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-nez v0, :cond_0

    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 51
    .line 52
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getConnectionPersonalizer()Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmConnectionPersonalizer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmConnectionPersonalizer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    .line 70
    .line 71
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmConnectionPersonalizer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    new-instance v1, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState$1;

    .line 78
    .line 79
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState$1;-><init>(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/connection/ConnectionPersonalizer;->registerBeaconLossDisconnectionHandler(Landroid/os/Handler;)V

    .line 83
    .line 84
    .line 85
    :cond_0
    return-void
.end method

.method public exit()V
    .locals 0

    .line 1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 21

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 9
    .line 10
    .line 11
    iget v2, v1, Landroid/os/Message;->what:I

    .line 12
    .line 13
    const-string v4, "Fetch Detect Mode : "

    .line 14
    .line 15
    const/4 v5, 0x2

    .line 16
    const v6, 0x21019

    .line 17
    .line 18
    .line 19
    const/4 v7, 0x3

    .line 20
    const v8, 0x21014

    .line 21
    .line 22
    .line 23
    const-string v9, "WifiConnectivityMonitor"

    .line 24
    .line 25
    const/4 v10, 0x1

    .line 26
    sparse-switch v2, :sswitch_data_0

    .line 27
    .line 28
    .line 29
    return v3

    .line 30
    :sswitch_0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiRssiBasePoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->start()V

    .line 37
    .line 38
    .line 39
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$munregisterLinkQualityMonitorCallback(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 42
    .line 43
    .line 44
    return v10

    .line 45
    :sswitch_1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 46
    .line 47
    invoke-static {v1, v10}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWcmPollOngoing(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 48
    .line 49
    .line 50
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 51
    .line 52
    invoke-virtual {v1, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 53
    .line 54
    .line 55
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ne v1, v10, :cond_0

    .line 60
    .line 61
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 62
    .line 63
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiRssiBasePoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->getTxBadOnGoing()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_1

    .line 72
    .line 73
    :cond_0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 80
    .line 81
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    if-ne v1, v2, :cond_2

    .line 86
    .line 87
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 88
    .line 89
    const/16 v2, 0x13

    .line 90
    .line 91
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 92
    .line 93
    .line 94
    :cond_2
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mregisterLinkQualityMonitorCallback(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 97
    .line 98
    .line 99
    return v10

    .line 100
    :sswitch_2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 101
    .line 102
    invoke-virtual {v2, v10}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 103
    .line 104
    .line 105
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 106
    .line 107
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 110
    .line 111
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 115
    .line 116
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v1, v0}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setCurrentTrafficStats(Lcom/samsung/android/server/wifi/SemWifiTrafficStats;)V

    .line 127
    .line 128
    .line 129
    return v10

    .line 130
    :sswitch_3
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 131
    .line 132
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 133
    .line 134
    .line 135
    move-result v2

    .line 136
    if-nez v2, :cond_3

    .line 137
    .line 138
    :goto_0
    move/from16 v20, v10

    .line 139
    .line 140
    goto/16 :goto_4

    .line 141
    .line 142
    :cond_3
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 143
    .line 144
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    if-nez v2, :cond_4

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_4
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 152
    .line 153
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-nez v2, :cond_5

    .line 158
    .line 159
    goto :goto_0

    .line 160
    :cond_5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 161
    .line 162
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 163
    .line 164
    .line 165
    move-result v2

    .line 166
    if-eq v2, v5, :cond_6

    .line 167
    .line 168
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 169
    .line 170
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-ne v2, v7, :cond_7

    .line 175
    .line 176
    :cond_6
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    .line 177
    .line 178
    .line 179
    move-result v2

    .line 180
    if-nez v2, :cond_7

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_7
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 184
    .line 185
    invoke-virtual {v2, v10}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 186
    .line 187
    .line 188
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 189
    .line 190
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 191
    .line 192
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 193
    .line 194
    .line 195
    move-result v4

    .line 196
    const-wide/16 v7, 0xbb8

    .line 197
    .line 198
    if-ne v2, v4, :cond_9

    .line 199
    .line 200
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 201
    .line 202
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 203
    .line 204
    .line 205
    move-result v2

    .line 206
    if-nez v2, :cond_8

    .line 207
    .line 208
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    if-nez v2, :cond_9

    .line 213
    .line 214
    :cond_8
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 215
    .line 216
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 217
    .line 218
    .line 219
    move-result v2

    .line 220
    add-int/2addr v2, v10

    .line 221
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v6, v2, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    invoke-virtual {v1, v2, v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_9
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 233
    .line 234
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 235
    .line 236
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    if-eq v1, v2, :cond_b

    .line 241
    .line 242
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 243
    .line 244
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 245
    .line 246
    .line 247
    move-result v1

    .line 248
    if-nez v1, :cond_a

    .line 249
    .line 250
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    if-nez v1, :cond_b

    .line 255
    .line 256
    :cond_a
    const-string v1, "mTrafficPollToken MisMatch!!!"

    .line 257
    .line 258
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 262
    .line 263
    invoke-static {v1, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1500(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 264
    .line 265
    .line 266
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 267
    .line 268
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    add-int/2addr v2, v10

    .line 273
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v1, v6, v2, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v1, v2, v7, v8}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 281
    .line 282
    .line 283
    :cond_b
    :goto_1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 284
    .line 285
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 286
    .line 287
    .line 288
    move-result-object v1

    .line 289
    if-nez v1, :cond_c

    .line 290
    .line 291
    const-string v0, "traffic mSemTrafficStats null."

    .line 292
    .line 293
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .line 295
    .line 296
    return v10

    .line 297
    :cond_c
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mTxPkts:J

    .line 298
    .line 299
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mRxPkts:J

    .line 300
    .line 301
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 302
    .line 303
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 304
    .line 305
    .line 306
    move-result-object v5

    .line 307
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txPackets:J

    .line 308
    .line 309
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mTxPkts:J

    .line 310
    .line 311
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 312
    .line 313
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 314
    .line 315
    .line 316
    move-result-object v5

    .line 317
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 318
    .line 319
    iput-wide v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mRxPkts:J

    .line 320
    .line 321
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 322
    .line 323
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 324
    .line 325
    .line 326
    move-result-object v5

    .line 327
    iget-wide v12, v5, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytes:J

    .line 328
    .line 329
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 330
    .line 331
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 332
    .line 333
    .line 334
    move-result-object v5

    .line 335
    iget-wide v14, v5, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytes:J

    .line 336
    .line 337
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 338
    .line 339
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    iget-wide v5, v5, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->txBytesTopActivity:J

    .line 344
    .line 345
    iget-object v7, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 346
    .line 347
    invoke-static {v7}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 348
    .line 349
    .line 350
    move-result-object v7

    .line 351
    iget-wide v7, v7, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxBytesTopActivity:J

    .line 352
    .line 353
    move/from16 v20, v10

    .line 354
    .line 355
    iget-wide v10, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mTxPkts:J

    .line 356
    .line 357
    cmp-long v1, v1, v10

    .line 358
    .line 359
    if-nez v1, :cond_d

    .line 360
    .line 361
    iget-wide v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->mRxPkts:J

    .line 362
    .line 363
    cmp-long v1, v3, v1

    .line 364
    .line 365
    if-nez v1, :cond_d

    .line 366
    .line 367
    goto/16 :goto_4

    .line 368
    .line 369
    :cond_d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 370
    .line 371
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/app/ActivityManager;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    if-nez v1, :cond_e

    .line 376
    .line 377
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 378
    .line 379
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    const-string v3, "activity"

    .line 384
    .line 385
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v2

    .line 389
    check-cast v2, Landroid/app/ActivityManager;

    .line 390
    .line 391
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmActivityManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/app/ActivityManager;)V

    .line 392
    .line 393
    .line 394
    :cond_e
    iget-object v11, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 395
    .line 396
    move-wide/from16 v16, v5

    .line 397
    .line 398
    move-wide/from16 v18, v7

    .line 399
    .line 400
    invoke-static/range {v11 .. v19}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetTrafficPollHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;JJJJ)V

    .line 401
    .line 402
    .line 403
    return v20

    .line 404
    :sswitch_4
    move/from16 v20, v10

    .line 405
    .line 406
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 407
    .line 408
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 409
    .line 410
    .line 411
    move-result v1

    .line 412
    if-nez v1, :cond_f

    .line 413
    .line 414
    goto/16 :goto_4

    .line 415
    .line 416
    :cond_f
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 417
    .line 418
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 419
    .line 420
    .line 421
    move-result v1

    .line 422
    if-eqz v1, :cond_10

    .line 423
    .line 424
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    if-eqz v1, :cond_10

    .line 429
    .line 430
    goto/16 :goto_4

    .line 431
    .line 432
    :cond_10
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 433
    .line 434
    move/from16 v2, v20

    .line 435
    .line 436
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->setLogOnlyTransitions(Z)V

    .line 437
    .line 438
    .line 439
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 440
    .line 441
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    const/4 v2, 0x0

    .line 446
    if-nez v1, :cond_11

    .line 447
    .line 448
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    if-nez v1, :cond_13

    .line 453
    .line 454
    :cond_11
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 455
    .line 456
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAirPlaneMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 457
    .line 458
    .line 459
    move-result v1

    .line 460
    if-nez v1, :cond_12

    .line 461
    .line 462
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 463
    .line 464
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 465
    .line 466
    .line 467
    move-result-object v1

    .line 468
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getTxPacketCounters()Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;

    .line 473
    .line 474
    .line 475
    move-result-object v2

    .line 476
    :cond_12
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 477
    .line 478
    invoke-static {v1, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1300(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 479
    .line 480
    .line 481
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 482
    .line 483
    sget-wide v10, Lcom/samsung/android/server/wifi/wcm/Constant;->LINK_SAMPLING_INTERVAL_MS:J

    .line 484
    .line 485
    invoke-virtual {v1, v8, v10, v11}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 486
    .line 487
    .line 488
    :cond_13
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 489
    .line 490
    const/4 v4, 0x1

    .line 491
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWcmPollOngoing(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 492
    .line 493
    .line 494
    if-nez v2, :cond_15

    .line 495
    .line 496
    :cond_14
    :goto_2
    const/16 v20, 0x1

    .line 497
    .line 498
    goto/16 :goto_4

    .line 499
    .line 500
    :cond_15
    iget v1, v2, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->result:I

    .line 501
    .line 502
    if-eq v1, v5, :cond_16

    .line 503
    .line 504
    if-ne v1, v7, :cond_17

    .line 505
    .line 506
    :cond_16
    const/16 v20, 0x1

    .line 507
    .line 508
    goto/16 :goto_3

    .line 509
    .line 510
    :cond_17
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 511
    .line 512
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 513
    .line 514
    .line 515
    move-result-object v1

    .line 516
    if-nez v1, :cond_18

    .line 517
    .line 518
    goto :goto_2

    .line 519
    :cond_18
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 520
    .line 521
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 522
    .line 523
    .line 524
    move-result-object v1

    .line 525
    if-nez v1, :cond_19

    .line 526
    .line 527
    const-string v0, "Rssi fetch, mSemTrafficStats null."

    .line 528
    .line 529
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    .line 531
    .line 532
    const/16 v20, 0x1

    .line 533
    .line 534
    return v20

    .line 535
    :cond_19
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 536
    .line 537
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidationFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    iput v7, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStepTemp:I

    .line 542
    .line 543
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 544
    .line 545
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 546
    .line 547
    .line 548
    move-result-object v1

    .line 549
    iput v7, v1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcStep:I

    .line 550
    .line 551
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 552
    .line 553
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 554
    .line 555
    .line 556
    move-result-object v4

    .line 557
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 558
    .line 559
    .line 560
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 561
    .line 562
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 563
    .line 564
    .line 565
    move-result-object v1

    .line 566
    if-nez v1, :cond_1a

    .line 567
    .line 568
    goto :goto_2

    .line 569
    :cond_1a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 570
    .line 571
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    .line 572
    .line 573
    .line 574
    move-result-object v1

    .line 575
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 576
    .line 577
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 578
    .line 579
    .line 580
    move-result-object v4

    .line 581
    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getScore()I

    .line 582
    .line 583
    .line 584
    move-result v4

    .line 585
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 586
    .line 587
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmEleNeedRecoveryFromEle(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 588
    .line 589
    .line 590
    move-result v6

    .line 591
    invoke-virtual {v1, v2, v4, v6}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQcIsRequired(Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;IZ)I

    .line 592
    .line 593
    .line 594
    move-result v1

    .line 595
    const/4 v4, -0x1

    .line 596
    if-eq v1, v4, :cond_1b

    .line 597
    .line 598
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 599
    .line 600
    invoke-virtual {v4, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 601
    .line 602
    .line 603
    :cond_1b
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 604
    .line 605
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetUpdatedRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 606
    .line 607
    .line 608
    move-result v10

    .line 609
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 610
    .line 611
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 612
    .line 613
    .line 614
    move-result v1

    .line 615
    if-eq v1, v5, :cond_1c

    .line 616
    .line 617
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 618
    .line 619
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 620
    .line 621
    .line 622
    move-result v1

    .line 623
    if-ne v1, v7, :cond_1d

    .line 624
    .line 625
    :cond_1c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 626
    .line 627
    iget v4, v2, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxbad:I

    .line 628
    .line 629
    invoke-static {v1, v4, v10}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$meleCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;II)V

    .line 630
    .line 631
    .line 632
    :cond_1d
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 633
    .line 634
    iget v1, v2, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxbad:I

    .line 635
    .line 636
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastTxBad(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 637
    .line 638
    .line 639
    move-result v4

    .line 640
    sub-int/2addr v1, v4

    .line 641
    iget v4, v2, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxgood:I

    .line 642
    .line 643
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 644
    .line 645
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastTxGood(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 646
    .line 647
    .line 648
    move-result v5

    .line 649
    sub-int v11, v4, v5

    .line 650
    .line 651
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 652
    .line 653
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 654
    .line 655
    .line 656
    move-result-object v4

    .line 657
    iget-wide v4, v4, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 658
    .line 659
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 660
    .line 661
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastRxGood(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)J

    .line 662
    .line 663
    .line 664
    move-result-wide v6

    .line 665
    sub-long v13, v4, v6

    .line 666
    .line 667
    move v12, v10

    .line 668
    move v10, v1

    .line 669
    invoke-static/range {v10 .. v15}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckIdleAndStopPoll(IIIJLcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 670
    .line 671
    .line 672
    move-result v1

    .line 673
    move v10, v12

    .line 674
    if-eqz v1, :cond_1e

    .line 675
    .line 676
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 677
    .line 678
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWcmPollOngoing(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 679
    .line 680
    .line 681
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 682
    .line 683
    invoke-static {v1, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1400(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 684
    .line 685
    .line 686
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 687
    .line 688
    const v1, 0x21052

    .line 689
    .line 690
    .line 691
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 692
    .line 693
    .line 694
    const/4 v4, 0x1

    .line 695
    return v4

    .line 696
    :cond_1e
    const/4 v4, 0x1

    .line 697
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 698
    .line 699
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 700
    .line 701
    .line 702
    move-result v1

    .line 703
    if-eqz v1, :cond_20

    .line 704
    .line 705
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 706
    .line 707
    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 712
    .line 713
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidState;

    .line 714
    .line 715
    .line 716
    move-result-object v3

    .line 717
    if-ne v1, v3, :cond_20

    .line 718
    .line 719
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 720
    .line 721
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 722
    .line 723
    .line 724
    move-result v1

    .line 725
    if-ne v1, v4, :cond_20

    .line 726
    .line 727
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 728
    .line 729
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastRxGood(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)J

    .line 730
    .line 731
    .line 732
    move-result-wide v3

    .line 733
    const-wide/16 v5, 0x0

    .line 734
    .line 735
    cmp-long v1, v3, v5

    .line 736
    .line 737
    if-lez v1, :cond_20

    .line 738
    .line 739
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 740
    .line 741
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIs204CheckInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 742
    .line 743
    .line 744
    move-result v1

    .line 745
    if-nez v1, :cond_20

    .line 746
    .line 747
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 748
    .line 749
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 750
    .line 751
    .line 752
    move-result-object v1

    .line 753
    iget-wide v3, v1, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 754
    .line 755
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 756
    .line 757
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLastRxGood(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)J

    .line 758
    .line 759
    .line 760
    move-result-wide v5

    .line 761
    sub-long/2addr v3, v5

    .line 762
    long-to-int v1, v3

    .line 763
    const/16 v3, 0xa

    .line 764
    .line 765
    if-lt v1, v3, :cond_20

    .line 766
    .line 767
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    if-eqz v1, :cond_1f

    .line 772
    .line 773
    const-string v1, "check Internet connectivity - reportNetworkConnectivity"

    .line 774
    .line 775
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    .line 777
    .line 778
    :cond_1f
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 779
    .line 780
    const/16 v3, 0xb

    .line 781
    .line 782
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 783
    .line 784
    .line 785
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 786
    .line 787
    const/4 v4, 0x1

    .line 788
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIs204CheckInterval(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 789
    .line 790
    .line 791
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 792
    .line 793
    const v3, 0x21025

    .line 794
    .line 795
    .line 796
    const-wide/16 v4, 0x7530

    .line 797
    .line 798
    invoke-virtual {v1, v3, v4, v5}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(IJ)V

    .line 799
    .line 800
    .line 801
    :cond_20
    iget-object v15, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 802
    .line 803
    iget v11, v2, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxbad:I

    .line 804
    .line 805
    iget v12, v2, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->mTxgood:I

    .line 806
    .line 807
    invoke-static {v15}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemTrafficStats(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiTrafficStats;

    .line 808
    .line 809
    .line 810
    move-result-object v0

    .line 811
    iget-wide v13, v0, Lcom/samsung/android/server/wifi/SemWifiTrafficStats;->rxPackets:J

    .line 812
    .line 813
    invoke-static/range {v10 .. v15}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mevaluateLinkLayerStatus(IIIJLcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 814
    .line 815
    .line 816
    const/16 v20, 0x1

    .line 817
    .line 818
    return v20

    .line 819
    :goto_3
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetDBG()Z

    .line 820
    .line 821
    .line 822
    move-result v0

    .line 823
    if-eqz v0, :cond_14

    .line 824
    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    .line 826
    .line 827
    const-string v1, "RSSI_FETCH_FAILED reason : "

    .line 828
    .line 829
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    iget v1, v2, Lcom/samsung/android/server/wifi/wcm/TxPacketInfo;->result:I

    .line 833
    .line 834
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 835
    .line 836
    .line 837
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    .line 843
    .line 844
    return v20

    .line 845
    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 846
    .line 847
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 848
    .line 849
    .line 850
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    .line 851
    .line 852
    .line 853
    move-result v2

    .line 854
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 855
    .line 856
    .line 857
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 858
    .line 859
    .line 860
    move-result-object v1

    .line 861
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    .line 863
    .line 864
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 865
    .line 866
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 867
    .line 868
    .line 869
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 870
    .line 871
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLinkLossOccurred(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 872
    .line 873
    .line 874
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 875
    .line 876
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmLossHasGone(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 877
    .line 878
    .line 879
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 880
    .line 881
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmPreviousLoss(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 882
    .line 883
    .line 884
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 885
    .line 886
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$meleScreenOffInitialize(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 887
    .line 888
    .line 889
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 890
    .line 891
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 892
    .line 893
    .line 894
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 895
    .line 896
    invoke-static {v1, v8}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1600(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 897
    .line 898
    .line 899
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 900
    .line 901
    invoke-static {v1, v6}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->access$1700(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 902
    .line 903
    .line 904
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 905
    .line 906
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiRssiBasePoller(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiRssiBasePoller;->stop()V

    .line 911
    .line 912
    .line 913
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 914
    .line 915
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 916
    .line 917
    .line 918
    move-result-object v1

    .line 919
    if-eqz v1, :cond_14

    .line 920
    .line 921
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 922
    .line 923
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 924
    .line 925
    .line 926
    move-result-object v0

    .line 927
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 928
    .line 929
    .line 930
    const/16 v20, 0x1

    .line 931
    .line 932
    :goto_4
    return v20

    .line 933
    :sswitch_6
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 934
    .line 935
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 936
    .line 937
    .line 938
    move-result v1

    .line 939
    if-eqz v1, :cond_24

    .line 940
    .line 941
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 942
    .line 943
    invoke-virtual {v1, v8}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 944
    .line 945
    .line 946
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 947
    .line 948
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misValidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 949
    .line 950
    .line 951
    move-result v1

    .line 952
    if-eqz v1, :cond_22

    .line 953
    .line 954
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 955
    .line 956
    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 957
    .line 958
    .line 959
    move-result-object v1

    .line 960
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 961
    .line 962
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel2State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;

    .line 963
    .line 964
    .line 965
    move-result-object v2

    .line 966
    if-eq v1, v2, :cond_22

    .line 967
    .line 968
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 969
    .line 970
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 971
    .line 972
    .line 973
    move-result-object v1

    .line 974
    if-eqz v1, :cond_21

    .line 975
    .line 976
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 977
    .line 978
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdoNotStartNSA(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 979
    .line 980
    .line 981
    move-result v1

    .line 982
    if-nez v1, :cond_21

    .line 983
    .line 984
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 985
    .line 986
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 987
    .line 988
    .line 989
    move-result-object v1

    .line 990
    const/4 v2, 0x1

    .line 991
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 992
    .line 993
    .line 994
    :cond_21
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 995
    .line 996
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$meleCheckStart(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 997
    .line 998
    .line 999
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1000
    .line 1001
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mregisterLinkQualityMonitorCallback(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 1002
    .line 1003
    .line 1004
    :cond_22
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1005
    .line 1006
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 1007
    .line 1008
    .line 1009
    move-result v1

    .line 1010
    const/4 v2, 0x1

    .line 1011
    if-eq v1, v2, :cond_23

    .line 1012
    .line 1013
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    .line 1014
    .line 1015
    .line 1016
    move-result v1

    .line 1017
    if-ne v1, v2, :cond_24

    .line 1018
    .line 1019
    :cond_23
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1020
    .line 1021
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 1022
    .line 1023
    .line 1024
    move-result v5

    .line 1025
    add-int/2addr v5, v2

    .line 1026
    invoke-static {v1, v5}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 1027
    .line 1028
    .line 1029
    invoke-virtual {v1, v6, v5, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 1030
    .line 1031
    .line 1032
    move-result-object v2

    .line 1033
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 1034
    .line 1035
    .line 1036
    :cond_24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1037
    .line 1038
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    .line 1042
    .line 1043
    .line 1044
    move-result v2

    .line 1045
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v1

    .line 1052
    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    .line 1054
    .line 1055
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmLinkDetectMode()I

    .line 1056
    .line 1057
    .line 1058
    move-result v1

    .line 1059
    const/4 v2, 0x1

    .line 1060
    if-ne v1, v2, :cond_25

    .line 1061
    .line 1062
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1063
    .line 1064
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmOvercomingCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 1065
    .line 1066
    .line 1067
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1068
    .line 1069
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 1070
    .line 1071
    .line 1072
    move-result v1

    .line 1073
    if-nez v1, :cond_26

    .line 1074
    .line 1075
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1076
    .line 1077
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misInvalidState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 1078
    .line 1079
    .line 1080
    move-result v1

    .line 1081
    if-eqz v1, :cond_26

    .line 1082
    .line 1083
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1084
    .line 1085
    const/16 v2, 0x1e

    .line 1086
    .line 1087
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 1088
    .line 1089
    .line 1090
    goto :goto_5

    .line 1091
    :cond_25
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1092
    .line 1093
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmGoodTargetCount(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 1094
    .line 1095
    .line 1096
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1097
    .line 1098
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 1099
    .line 1100
    .line 1101
    move-result v1

    .line 1102
    if-nez v1, :cond_26

    .line 1103
    .line 1104
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1105
    .line 1106
    invoke-virtual {v1}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 1107
    .line 1108
    .line 1109
    move-result-object v1

    .line 1110
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1111
    .line 1112
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmInvalidBlockState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$InvalidBlockState;

    .line 1113
    .line 1114
    .line 1115
    move-result-object v2

    .line 1116
    if-ne v1, v2, :cond_26

    .line 1117
    .line 1118
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1119
    .line 1120
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 1121
    .line 1122
    .line 1123
    move-result v1

    .line 1124
    const/16 v2, -0x42

    .line 1125
    .line 1126
    if-lt v1, v2, :cond_26

    .line 1127
    .line 1128
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1129
    .line 1130
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetValidationBlock(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 1131
    .line 1132
    .line 1133
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1134
    .line 1135
    const/16 v2, 0x1c

    .line 1136
    .line 1137
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mrequestInternetCheck(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 1138
    .line 1139
    .line 1140
    :cond_26
    :goto_5
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$EvaluatedState;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 1141
    .line 1142
    const/4 v2, 0x1

    .line 1143
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmIsScreenOn(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 1144
    .line 1145
    .line 1146
    return v2

    .line 1147
    :sswitch_data_0
    .sparse-switch
        0x21008 -> :sswitch_6
        0x21009 -> :sswitch_5
        0x21014 -> :sswitch_4
        0x21019 -> :sswitch_3
        0x2101a -> :sswitch_2
        0x21051 -> :sswitch_1
        0x21052 -> :sswitch_0
    .end sparse-switch
.end method
