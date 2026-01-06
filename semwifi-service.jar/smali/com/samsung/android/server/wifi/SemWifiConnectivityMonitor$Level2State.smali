.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Level2State"
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

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
    .locals 7

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
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIccManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->labelInvalidWifi()V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetLinkDetectMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 43
    .line 44
    const/4 v3, 0x1

    .line 45
    invoke-static {v0, v2, v2, v3, v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetWifiScoreAndIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;ZZZZ)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSuperAggressiveModeEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-ne v0, v3, :cond_0

    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLinkQualityMonitorCallbackRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiLinkQualityMonitor(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiLinkQualityMonitor;->resetComebackCondition()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmGatewayPinger(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/GatewayPinger;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 80
    .line 81
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 82
    .line 83
    .line 84
    move-result-object v4

    .line 85
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget v4, v4, Landroid/net/DhcpInfo;->gateway:I

    .line 90
    .line 91
    const-wide/16 v5, 0x0

    .line 92
    .line 93
    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->start(IJ)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmGatewayPinger(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/GatewayPinger;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 104
    .line 105
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    iget v4, v4, Landroid/net/DhcpInfo;->gateway:I

    .line 114
    .line 115
    const-wide/16 v5, 0x2710

    .line 116
    .line 117
    invoke-virtual {v0, v4, v5, v6}, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->start(IJ)V

    .line 118
    .line 119
    .line 120
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    .line 127
    .line 128
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->startActivityCheck(Z)V

    .line 135
    .line 136
    .line 137
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 138
    .line 139
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    if-eqz v0, :cond_3

    .line 144
    .line 145
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->isInEleMoving()Z

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-eqz v0, :cond_2

    .line 156
    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQcStartRecoveryScoreCheck()V

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmScoreQC(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/ScoreQC;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/ScoreQC;->scoreQCStopCheck()V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 177
    .line 178
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->limitMonitorTimeByLevel2()V

    .line 183
    .line 184
    .line 185
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 186
    .line 187
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    if-nez v0, :cond_5

    .line 192
    .line 193
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 194
    .line 195
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInDhcpSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 196
    .line 197
    .line 198
    move-result v0

    .line 199
    if-eqz v0, :cond_4

    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 203
    .line 204
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mstartScan(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 205
    .line 206
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    const-string v2, "Start scan to find alternative networks. "

    .line 210
    .line 211
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 215
    .line 216
    invoke-virtual {v2}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 224
    .line 225
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->getCurrentMode()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .line 238
    .line 239
    goto :goto_3

    .line 240
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    const-string v2, "Do not start scan for alternative networks because mIsInRoamSession="

    .line 243
    .line 244
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 245
    .line 246
    .line 247
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 248
    .line 249
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInRoamSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v2, ", mIsInDhcpSession="

    .line 257
    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 262
    .line 263
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsInDhcpSession(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    :goto_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 278
    .line 279
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmGoodEnoughRssiToRecover(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 280
    .line 281
    .line 282
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 283
    .line 284
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msendBroadcastWCMStatusChanged(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 285
    .line 286
    .line 287
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 288
    .line 289
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 290
    .line 291
    .line 292
    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 294
    .line 295
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 296
    .line 297
    .line 298
    move-result v1

    .line 299
    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidQosMapOnLevel2State(IZ)V

    .line 300
    .line 301
    .line 302
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 303
    .line 304
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    if-eqz v0, :cond_6

    .line 309
    .line 310
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 311
    .line 312
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 313
    .line 314
    .line 315
    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 317
    .line 318
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->notifyLevel2Entered(Landroid/net/wifi/WifiInfo;)V

    .line 323
    .line 324
    .line 325
    :cond_6
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 326
    .line 327
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 328
    .line 329
    .line 330
    move-result-object v0

    .line 331
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 332
    .line 333
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiBackOffController(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;

    .line 334
    .line 335
    .line 336
    move-result-object v1

    .line 337
    const-string v2, "wlan0"

    .line 338
    .line 339
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/backoff/WifiBackOffController;->getCurrentBackOffType(Ljava/lang/String;)I

    .line 340
    .line 341
    .line 342
    move-result v1

    .line 343
    const-string v2, "BFTY"

    .line 344
    .line 345
    const-string v3, "WFSN"

    .line 346
    .line 347
    invoke-virtual {v0, v3, v2, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 348
    .line 349
    .line 350
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 351
    .line 352
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 357
    .line 358
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 359
    .line 360
    .line 361
    move-result v1

    .line 362
    const-string v2, "BFRS"

    .line 363
    .line 364
    invoke-virtual {v0, v3, v2, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 365
    .line 366
    .line 367
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 368
    .line 369
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 374
    .line 375
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetTxLinkSpeed(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    const-string v2, "BFTL"

    .line 380
    .line 381
    invoke-virtual {v0, v3, v2, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 382
    .line 383
    .line 384
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 385
    .line 386
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 387
    .line 388
    .line 389
    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 391
    .line 392
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRxLinkSpeed(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    const-string v2, "BFRL"

    .line 397
    .line 398
    invoke-virtual {v0, v3, v2, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 399
    .line 400
    .line 401
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 402
    .line 403
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 411
    .line 412
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 413
    .line 414
    .line 415
    move-result-object p0

    .line 416
    invoke-virtual {p0, v3}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    .line 417
    .line 418
    .line 419
    return-void
.end method

.method public exit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentBssid(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/BssidStatistics;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mgetRssi(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/wifi/wcm/BssidStatistics;->updateBssidQosMapOnLevel2State(IZ)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSuperAggressiveModeEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x1

    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLinkQualityMonitorCallbackRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_0

    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$munregisterLinkQualityMonitorCallback(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmGatewayPinger(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/GatewayPinger;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->stop()V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 49
    .line 50
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 57
    .line 58
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->notifyLevel2Exit()V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

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
    const-string v0, "WifiConnectivityMonitor"

    .line 10
    .line 11
    const/4 v2, 0x2

    .line 12
    const/4 v3, 0x1

    .line 13
    sparse-switch p1, :sswitch_data_0

    .line 14
    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :sswitch_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    add-int/2addr v0, v3

    .line 25
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmTrafficPollToken(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;I)V

    .line 26
    .line 27
    .line 28
    const v2, 0x21019

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 39
    .line 40
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLevel1State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level1State;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 45
    .line 46
    .line 47
    return v3

    .line 48
    :sswitch_1
    const-string p1, "Good link detected by WifiLinkQualityMonitor"

    .line 49
    .line 50
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 54
    .line 55
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mcheckTransitionToLevel1State(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 56
    .line 57
    .line 58
    return v3

    .line 59
    :sswitch_2
    const v1, 0x21073

    .line 60
    .line 61
    .line 62
    if-ne p1, v1, :cond_0

    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    const/16 v1, 0x15

    .line 71
    .line 72
    iput v1, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/16 v1, 0x16

    .line 82
    .line 83
    iput v1, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->error:I

    .line 84
    .line 85
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 86
    .line 87
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputbSetQcResult(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    if-eqz p1, :cond_1

    .line 97
    .line 98
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 105
    .line 106
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->getEleReason()I

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    add-int/lit8 v1, v1, 0x3c

    .line 115
    .line 116
    iput v1, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->qcTrigger:I

    .line 117
    .line 118
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 119
    .line 120
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    aget-object v1, v1, v2

    .line 133
    .line 134
    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getLineNumber()I

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    iput v1, p1, Lcom/samsung/android/server/wifi/wcm/QcFailHistory;->line:I

    .line 139
    .line 140
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLowQualityFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/QcFailHistory;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetQcFailHistory(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Lcom/samsung/android/server/wifi/wcm/QcFailHistory;)V

    .line 147
    .line 148
    .line 149
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    const-string v1, "SSIV"

    .line 156
    .line 157
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->insertLog(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 161
    .line 162
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-virtual {p1, v1}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->clearFeature(Ljava/lang/String;)Z

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 170
    .line 171
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getInstance(Landroid/content/Context;)Lcom/samsung/android/server/wifi/wcm/WcmUtil;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/wcm/WcmUtil;->getCurrentWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    if-eqz p1, :cond_4

    .line 184
    .line 185
    iget-object v4, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 186
    .line 187
    invoke-virtual {v4, v2}, Ljava/util/BitSet;->get(I)Z

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-eqz v4, :cond_4

    .line 192
    .line 193
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 194
    .line 195
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 196
    .line 197
    const/16 v5, 0x9

    .line 198
    .line 199
    invoke-static {v4, p1, v5, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mdisableNetworkWithReason(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;IIZ)Z

    .line 200
    .line 201
    .line 202
    move-result p1

    .line 203
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 204
    .line 205
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    if-eqz v4, :cond_2

    .line 210
    .line 211
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 212
    .line 213
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSemWifiEleStateTracker(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    invoke-virtual {v4, v2}, Lcom/samsung/android/server/wifi/wcm/SemWifiEleStateTracker;->setEleState(I)V

    .line 218
    .line 219
    .line 220
    :cond_2
    const-string v2, "Disable the current network temporarily. 2 min by ELE result: "

    .line 221
    .line 222
    invoke-static {v2, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .line 228
    .line 229
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 230
    .line 231
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWcmBigDataManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;

    .line 232
    .line 233
    .line 234
    move-result-object p0

    .line 235
    const-string p1, "IUIE"

    .line 236
    .line 237
    invoke-virtual {p0, v1, p1, v3}, Lcom/samsung/android/server/wifi/wcm/WcmBigDataManager;->addOrUpdateFeatureValue(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 238
    .line 239
    .line 240
    return v3

    .line 241
    :sswitch_3
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$sfgetmInitialResultSentToSystemUi()Z

    .line 242
    .line 243
    .line 244
    move-result p1

    .line 245
    if-eqz p1, :cond_4

    .line 246
    .line 247
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 248
    .line 249
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 250
    .line 251
    .line 252
    move-result p1

    .line 253
    if-eq p1, v2, :cond_3

    .line 254
    .line 255
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 256
    .line 257
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCurrentMode(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 258
    .line 259
    .line 260
    move-result p1

    .line 261
    const/4 v0, 0x3

    .line 262
    if-ne p1, v0, :cond_4

    .line 263
    .line 264
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 265
    .line 266
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msyncGetCurrentWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/net/wifi/WifiInfo;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Landroid/net/wifi/WifiInfo;)V

    .line 271
    .line 272
    .line 273
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 274
    .line 275
    invoke-static {p0, v1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mchangeWifiIcon(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 276
    .line 277
    .line 278
    :cond_4
    return v3

    .line 279
    :sswitch_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 280
    .line 281
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmGatewayPinger(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/GatewayPinger;

    .line 282
    .line 283
    .line 284
    move-result-object p0

    .line 285
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->stop()V

    .line 286
    .line 287
    .line 288
    return v1

    .line 289
    :sswitch_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 290
    .line 291
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmSuperAggressiveModeEnabled(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 292
    .line 293
    .line 294
    move-result p1

    .line 295
    if-ne p1, v3, :cond_5

    .line 296
    .line 297
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 298
    .line 299
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmLinkQualityMonitorCallbackRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 300
    .line 301
    .line 302
    move-result p1

    .line 303
    if-eqz p1, :cond_5

    .line 304
    .line 305
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 306
    .line 307
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmGatewayPinger(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/GatewayPinger;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$Level2State;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 312
    .line 313
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 314
    .line 315
    .line 316
    move-result-object p0

    .line 317
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getDhcpInfo()Landroid/net/DhcpInfo;

    .line 318
    .line 319
    .line 320
    move-result-object p0

    .line 321
    iget p0, p0, Landroid/net/DhcpInfo;->gateway:I

    .line 322
    .line 323
    const-wide/16 v2, 0x0

    .line 324
    .line 325
    invoke-virtual {p1, p0, v2, v3}, Lcom/samsung/android/server/wifi/wcm/GatewayPinger;->start(IJ)V

    .line 326
    .line 327
    .line 328
    :cond_5
    :goto_1
    return v1

    .line 329
    :sswitch_data_0
    .sparse-switch
        0x21008 -> :sswitch_5
        0x21009 -> :sswitch_4
        0x21040 -> :sswitch_3
        0x21073 -> :sswitch_2
        0x21074 -> :sswitch_2
        0x21079 -> :sswitch_1
        0x210de -> :sswitch_0
    .end sparse-switch
.end method
