.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;
.super Lcom/android/internal/util/State;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnabledState"
.end annotation


# instance fields
.field mEnterTime:J

.field mLastScanType:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 8
    .line 9
    return-void
.end method

.method private calculateCandidateNetworkScore([Landroid/net/wifi/ScanResult;)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPnoNetworksLock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 11
    .line 12
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCandidates(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Map;

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmHiddenList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 29
    .line 30
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 35
    .line 36
    .line 37
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 38
    .line 39
    const/4 v3, 0x0

    .line 40
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmChoiceConfig(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    if-nez v2, :cond_0

    .line 50
    .line 51
    const-string v0, "SilentRoamingManager"

    .line 52
    .line 53
    const-string v2, "calculateCandidateNetworkScore: WifiInfo is null. Ignore "

    .line 54
    .line 55
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    monitor-exit v1

    .line 59
    return-void

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    goto/16 :goto_c

    .line 62
    .line 63
    :cond_0
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 64
    .line 65
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    .line 74
    .line 75
    .line 76
    move-result-object v8

    .line 77
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 78
    .line 79
    const/4 v5, 0x0

    .line 80
    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    .line 81
    .line 82
    .line 83
    if-nez v8, :cond_1

    .line 84
    .line 85
    const-string v0, "SilentRoamingManager"

    .line 86
    .line 87
    const-string v2, "calculateCandidateNetworkScore: current getconfig error"

    .line 88
    .line 89
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 94
    :cond_1
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 95
    .line 96
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAllScanOptimizationNetworks(Z)Ljava/util/List;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-static {v4, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmOptimizedWifiConfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/util/List;)V

    .line 101
    .line 102
    .line 103
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 104
    .line 105
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmOptimizedWifiConfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    if-eqz v4, :cond_17

    .line 110
    .line 111
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 112
    .line 113
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmOptimizedWifiConfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    .line 118
    .line 119
    .line 120
    move-result v4

    .line 121
    if-eqz v4, :cond_2

    .line 122
    .line 123
    goto/16 :goto_b

    .line 124
    .line 125
    :cond_2
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 126
    .line 127
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiCondManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/nl80211/WifiNl80211Manager;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 132
    .line 133
    invoke-static {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    invoke-virtual {v6, v7}, Landroid/net/wifi/nl80211/WifiNl80211Manager;->getDeviceWiphyCapabilities(Ljava/lang/String;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-static {v4, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmCapabilities(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;)V

    .line 142
    .line 143
    .line 144
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 145
    .line 146
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    if-nez v4, :cond_3

    .line 151
    .line 152
    const-string v0, "SilentRoamingManager"

    .line 153
    .line 154
    const-string v2, "mCapabilities is null"

    .line 155
    .line 156
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    monitor-exit v1

    .line 160
    return-void

    .line 161
    :cond_3
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 162
    .line 163
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    if-eqz v4, :cond_4

    .line 168
    .line 169
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 170
    .line 171
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    iget-object v4, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v4

    .line 185
    if-eqz v4, :cond_4

    .line 186
    .line 187
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 188
    .line 189
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    .line 190
    .line 191
    .line 192
    move-result-object v4

    .line 193
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    iput v6, v4, Landroid/net/wifi/ScanResult;->level:I

    .line 198
    .line 199
    new-instance v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 200
    .line 201
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 202
    .line 203
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    iget-object v7, v4, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 208
    .line 209
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 210
    .line 211
    .line 212
    move-result v9

    .line 213
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 214
    .line 215
    .line 216
    move-result v10

    .line 217
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 218
    .line 219
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    .line 220
    .line 221
    .line 222
    move-result-object v4

    .line 223
    iget v11, v4, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 224
    .line 225
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 226
    .line 227
    invoke-static {v8, v2}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    .line 228
    .line 229
    .line 230
    move-result v12

    .line 231
    invoke-virtual {v4, v8, v12}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->calculateLastSelectionWeight(Landroid/net/wifi/WifiConfiguration;Z)D

    .line 232
    .line 233
    .line 234
    move-result-wide v12

    .line 235
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 236
    .line 237
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    .line 238
    .line 239
    .line 240
    move-result-object v14

    .line 241
    invoke-virtual {v4, v8, v2, v14}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isEverMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)Z

    .line 242
    .line 243
    .line 244
    move-result v16

    .line 245
    invoke-static {v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z

    .line 246
    .line 247
    .line 248
    move-result v17

    .line 249
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 250
    .line 251
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 252
    .line 253
    .line 254
    move-result-object v14

    .line 255
    iget-object v15, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 256
    .line 257
    invoke-static {v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/ScanResult;

    .line 258
    .line 259
    .line 260
    move-result-object v15

    .line 261
    invoke-virtual {v4, v14, v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Landroid/net/wifi/ScanResult;)I

    .line 262
    .line 263
    .line 264
    move-result v18

    .line 265
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 266
    .line 267
    invoke-virtual {v4, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAffiliatedMloLinksFromWifiInfo(Landroid/net/wifi/WifiInfo;)Ljava/util/List;

    .line 268
    .line 269
    .line 270
    move-result-object v19

    .line 271
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 272
    .line 273
    invoke-virtual {v4, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->semIsNoInternetAccessExpected(Landroid/net/wifi/WifiConfiguration;)Z

    .line 274
    .line 275
    .line 276
    move-result v20

    .line 277
    const/4 v14, 0x1

    .line 278
    const/4 v15, 0x1

    .line 279
    invoke-direct/range {v6 .. v20}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZILjava/util/List;Z)V

    .line 280
    .line 281
    .line 282
    const-string v4, "from ScanResult"

    .line 283
    .line 284
    goto :goto_0

    .line 285
    :cond_4
    new-instance v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 286
    .line 287
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 292
    .line 293
    .line 294
    move-result v9

    .line 295
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 296
    .line 297
    .line 298
    move-result v10

    .line 299
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 300
    .line 301
    invoke-static {v8, v2}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    .line 302
    .line 303
    .line 304
    move-result v11

    .line 305
    invoke-virtual {v4, v8, v11}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->calculateLastSelectionWeight(Landroid/net/wifi/WifiConfiguration;Z)D

    .line 306
    .line 307
    .line 308
    move-result-wide v12

    .line 309
    invoke-static {v8, v2}, Landroid/net/wifi/WifiConfiguration;->isMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;)Z

    .line 310
    .line 311
    .line 312
    move-result v16

    .line 313
    invoke-static {v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z

    .line 314
    .line 315
    .line 316
    move-result v17

    .line 317
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMaxSupportedRxLinkSpeedMbps()I

    .line 318
    .line 319
    .line 320
    move-result v18

    .line 321
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 322
    .line 323
    invoke-virtual {v4, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAffiliatedMloLinksFromWifiInfo(Landroid/net/wifi/WifiInfo;)Ljava/util/List;

    .line 324
    .line 325
    .line 326
    move-result-object v19

    .line 327
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 328
    .line 329
    invoke-virtual {v4, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->semIsNoInternetAccessExpected(Landroid/net/wifi/WifiConfiguration;)Z

    .line 330
    .line 331
    .line 332
    move-result v20

    .line 333
    const/4 v14, 0x1

    .line 334
    const/4 v15, 0x1

    .line 335
    const/4 v11, 0x0

    .line 336
    invoke-direct/range {v6 .. v20}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZILjava/util/List;Z)V

    .line 337
    .line 338
    .line 339
    const-string v4, "from WifiInfo"

    .line 340
    .line 341
    :goto_0
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 342
    .line 343
    move-object/from16 v8, p1

    .line 344
    .line 345
    invoke-virtual {v7, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->filterScanResults([Landroid/net/wifi/ScanResult;)Ljava/util/List;

    .line 346
    .line 347
    .line 348
    move-result-object v7

    .line 349
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 350
    .line 351
    .line 352
    move-result-object v7

    .line 353
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 354
    .line 355
    .line 356
    move-result v8

    .line 357
    if-eqz v8, :cond_7

    .line 358
    .line 359
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    move-result-object v8

    .line 363
    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 364
    .line 365
    iget-object v9, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 366
    .line 367
    invoke-static {v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmOptimizedWifiConfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 372
    .line 373
    .line 374
    move-result-object v9

    .line 375
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 376
    .line 377
    .line 378
    move-result v10

    .line 379
    if-eqz v10, :cond_6

    .line 380
    .line 381
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v10

    .line 385
    move-object v13, v10

    .line 386
    check-cast v13, Landroid/net/wifi/WifiConfiguration;

    .line 387
    .line 388
    iget-object v10, v13, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 389
    .line 390
    invoke-static {v10}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    .line 391
    .line 392
    .line 393
    move-result-object v10

    .line 394
    iget-object v11, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 395
    .line 396
    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 397
    .line 398
    .line 399
    move-result v10

    .line 400
    if-eqz v10, :cond_5

    .line 401
    .line 402
    iget-object v10, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 403
    .line 404
    invoke-static {v10, v13, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misSecurityMatch(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/ScanResult;)Z

    .line 405
    .line 406
    .line 407
    move-result v10

    .line 408
    if-eqz v10, :cond_5

    .line 409
    .line 410
    new-instance v11, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 411
    .line 412
    iget-object v12, v8, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 413
    .line 414
    iget v14, v8, Landroid/net/wifi/ScanResult;->level:I

    .line 415
    .line 416
    iget v15, v8, Landroid/net/wifi/ScanResult;->frequency:I

    .line 417
    .line 418
    iget v9, v8, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 419
    .line 420
    iget-object v10, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 421
    .line 422
    invoke-virtual {v10, v13, v2, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isEverMetered(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/ScanResult;)Z

    .line 423
    .line 424
    .line 425
    move-result v21

    .line 426
    invoke-static {v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->isFromCarrierOrPrivilegedApp(Landroid/net/wifi/WifiConfiguration;)Z

    .line 427
    .line 428
    .line 429
    move-result v22

    .line 430
    iget-object v10, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 431
    .line 432
    invoke-static {v10}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCapabilities(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;

    .line 433
    .line 434
    .line 435
    move-result-object v3

    .line 436
    invoke-virtual {v10, v3, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->predictThroughput(Landroid/net/wifi/nl80211/DeviceWiphyCapabilities;Landroid/net/wifi/ScanResult;)I

    .line 437
    .line 438
    .line 439
    move-result v23

    .line 440
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 441
    .line 442
    invoke-virtual {v3, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->getAffiliatedMloLinksFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;

    .line 443
    .line 444
    .line 445
    move-result-object v24

    .line 446
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 447
    .line 448
    invoke-virtual {v3, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->semIsNoInternetAccessExpected(Landroid/net/wifi/WifiConfiguration;)Z

    .line 449
    .line 450
    .line 451
    move-result v25

    .line 452
    const/16 v19, 0x0

    .line 453
    .line 454
    const/16 v20, 0x0

    .line 455
    .line 456
    const-wide/16 v17, 0x0

    .line 457
    .line 458
    move/from16 v16, v9

    .line 459
    .line 460
    invoke-direct/range {v11 .. v25}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;-><init>(Ljava/lang/String;Landroid/net/wifi/WifiConfiguration;IIIDZZZZILjava/util/List;Z)V

    .line 461
    .line 462
    .line 463
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 464
    .line 465
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCandidates(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Map;

    .line 466
    .line 467
    .line 468
    move-result-object v3

    .line 469
    invoke-virtual {v11}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v8

    .line 473
    invoke-interface {v3, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    .line 475
    .line 476
    goto :goto_3

    .line 477
    :cond_5
    const/4 v3, 0x0

    .line 478
    goto :goto_2

    .line 479
    :cond_6
    :goto_3
    const/4 v3, 0x0

    .line 480
    goto :goto_1

    .line 481
    :cond_7
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 482
    .line 483
    invoke-static {v3, v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePredictedMultiLinkThroughputMbps(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)V

    .line 484
    .line 485
    .line 486
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 487
    .line 488
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmThroughputScorer(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 489
    .line 490
    .line 491
    move-result-object v3

    .line 492
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 493
    .line 494
    invoke-virtual {v7, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasInternetAccess(Landroid/net/wifi/WifiInfo;)Z

    .line 495
    .line 496
    .line 497
    move-result v7

    .line 498
    invoke-virtual {v3, v6, v7}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->getCandidateScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Z)D

    .line 499
    .line 500
    .line 501
    move-result-wide v7

    .line 502
    invoke-virtual {v6, v7, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->setCalculatedThroughputScore(D)V

    .line 503
    .line 504
    .line 505
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 506
    .line 507
    new-instance v7, Ljava/lang/StringBuilder;

    .line 508
    .line 509
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .line 511
    .line 512
    const-string v8, "calculateCandidateNetworkScore: current candidate ("

    .line 513
    .line 514
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    const-string v4, ") = "

    .line 521
    .line 522
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    .line 524
    .line 525
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 526
    .line 527
    .line 528
    const-string v4, ", Possible Target Networks size = "

    .line 529
    .line 530
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 534
    .line 535
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmOptimizedWifiConfigs(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    .line 536
    .line 537
    .line 538
    move-result-object v4

    .line 539
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 540
    .line 541
    .line 542
    move-result v4

    .line 543
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 544
    .line 545
    .line 546
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 547
    .line 548
    .line 549
    move-result-object v4

    .line 550
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 554
    .line 555
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCandidates(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Map;

    .line 556
    .line 557
    .line 558
    move-result-object v3

    .line 559
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 560
    .line 561
    .line 562
    move-result-object v3

    .line 563
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 564
    .line 565
    .line 566
    move-result-object v3

    .line 567
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 568
    .line 569
    .line 570
    move-result v4

    .line 571
    if-eqz v4, :cond_8

    .line 572
    .line 573
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 574
    .line 575
    .line 576
    move-result-object v4

    .line 577
    check-cast v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 578
    .line 579
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 580
    .line 581
    invoke-static {v7, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePredictedMultiLinkThroughputMbps(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)V

    .line 582
    .line 583
    .line 584
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 585
    .line 586
    invoke-static {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmThroughputScorer(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;

    .line 587
    .line 588
    .line 589
    move-result-object v7

    .line 590
    iget-object v8, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 591
    .line 592
    invoke-virtual {v8, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasInternetAccess(Landroid/net/wifi/WifiInfo;)Z

    .line 593
    .line 594
    .line 595
    move-result v8

    .line 596
    invoke-virtual {v7, v4, v8}, Lcom/samsung/android/server/wifi/silentroaming/SemThroughputScorer;->getCandidateScore(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Z)D

    .line 597
    .line 598
    .line 599
    move-result-wide v7

    .line 600
    invoke-virtual {v4, v7, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->setCalculatedThroughputScore(D)V

    .line 601
    .line 602
    .line 603
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 604
    .line 605
    new-instance v8, Ljava/lang/StringBuilder;

    .line 606
    .line 607
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    .line 609
    .line 610
    const-string v9, "add : "

    .line 611
    .line 612
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 613
    .line 614
    .line 615
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 616
    .line 617
    .line 618
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v4

    .line 622
    invoke-static {v7, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    goto :goto_4

    .line 626
    :cond_8
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 627
    .line 628
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmCandidates(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Map;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 633
    .line 634
    .line 635
    move-result-object v3

    .line 636
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 637
    .line 638
    .line 639
    move-result-object v3

    .line 640
    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    .line 641
    .line 642
    const/4 v4, 0x0

    .line 643
    :cond_9
    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 644
    .line 645
    .line 646
    move-result v9

    .line 647
    if-eqz v9, :cond_a

    .line 648
    .line 649
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 650
    .line 651
    .line 652
    move-result-object v9

    .line 653
    check-cast v9, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 654
    .line 655
    invoke-virtual {v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getCalculatedThroughputScore()D

    .line 656
    .line 657
    .line 658
    move-result-wide v10

    .line 659
    cmpl-double v12, v10, v7

    .line 660
    .line 661
    if-lez v12, :cond_9

    .line 662
    .line 663
    move-object v4, v9

    .line 664
    move-wide v7, v10

    .line 665
    goto :goto_5

    .line 666
    :cond_a
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 667
    .line 668
    new-instance v9, Ljava/lang/StringBuilder;

    .line 669
    .line 670
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 671
    .line 672
    .line 673
    const-string v10, "calculateCandidateNetworkScore: currentWifiCandidate.score="

    .line 674
    .line 675
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    .line 677
    .line 678
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getCalculatedThroughputScore()D

    .line 679
    .line 680
    .line 681
    move-result-wide v10

    .line 682
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    const-string v10, ", bestCandidateScore="

    .line 686
    .line 687
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 688
    .line 689
    .line 690
    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 691
    .line 692
    .line 693
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 694
    .line 695
    .line 696
    move-result-object v9

    .line 697
    invoke-static {v3, v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 698
    .line 699
    .line 700
    if-eqz v4, :cond_d

    .line 701
    .line 702
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getCalculatedThroughputScore()D

    .line 703
    .line 704
    .line 705
    move-result-wide v9

    .line 706
    cmpg-double v3, v9, v7

    .line 707
    .line 708
    if-gez v3, :cond_d

    .line 709
    .line 710
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 711
    .line 712
    iget-object v7, v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mBssid:Ljava/lang/String;

    .line 713
    .line 714
    iget-object v8, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mBssid:Ljava/lang/String;

    .line 715
    .line 716
    invoke-static {v3, v7, v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misMultiBandApBssidPair(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;Ljava/lang/String;)Z

    .line 717
    .line 718
    .line 719
    move-result v3

    .line 720
    if-eqz v3, :cond_b

    .line 721
    .line 722
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 723
    .line 724
    const-string v7, "current BSSID and best BSSID are MultiBandApBssidPair. Do not check ConnectChoice."

    .line 725
    .line 726
    invoke-static {v3, v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 727
    .line 728
    .line 729
    goto :goto_6

    .line 730
    :cond_b
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 731
    .line 732
    invoke-static {v3, v6, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$moverrideCandidateWithUserConnectChoice(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;

    .line 733
    .line 734
    .line 735
    move-result-object v4

    .line 736
    :goto_6
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    .line 737
    .line 738
    .line 739
    move-result-object v3

    .line 740
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getKey()Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v7

    .line 744
    invoke-static {v3, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 745
    .line 746
    .line 747
    move-result v3

    .line 748
    if-eqz v3, :cond_c

    .line 749
    .line 750
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 751
    .line 752
    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    .line 753
    .line 754
    .line 755
    goto :goto_7

    .line 756
    :cond_c
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 757
    .line 758
    const/4 v5, 0x1

    .line 759
    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    .line 760
    .line 761
    .line 762
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 763
    .line 764
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 765
    .line 766
    .line 767
    move-result v2

    .line 768
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 769
    .line 770
    .line 771
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 772
    .line 773
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getNetworkConfigId()I

    .line 774
    .line 775
    .line 776
    move-result v3

    .line 777
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 778
    .line 779
    .line 780
    goto :goto_7

    .line 781
    :cond_d
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 782
    .line 783
    invoke-static {v2, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Z)V

    .line 784
    .line 785
    .line 786
    :goto_7
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 787
    .line 788
    new-instance v3, Ljava/lang/StringBuilder;

    .line 789
    .line 790
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    .line 792
    .line 793
    const-string v5, "mIsNetworkSelectionNeeded: "

    .line 794
    .line 795
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    iget-object v5, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 799
    .line 800
    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 801
    .line 802
    .line 803
    move-result v5

    .line 804
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 808
    .line 809
    .line 810
    move-result-object v3

    .line 811
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 812
    .line 813
    .line 814
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 815
    .line 816
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmForceConnectToTargetNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 817
    .line 818
    .line 819
    move-result v2

    .line 820
    if-nez v2, :cond_15

    .line 821
    .line 822
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 823
    .line 824
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 825
    .line 826
    .line 827
    move-result v2

    .line 828
    if-eqz v2, :cond_14

    .line 829
    .line 830
    if-eqz v4, :cond_14

    .line 831
    .line 832
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    .line 833
    .line 834
    .line 835
    move-result v2

    .line 836
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 837
    .line 838
    new-instance v5, Ljava/lang/StringBuilder;

    .line 839
    .line 840
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 841
    .line 842
    .line 843
    const-string v7, "current_freq="

    .line 844
    .line 845
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 846
    .line 847
    .line 848
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 849
    .line 850
    .line 851
    const-string v7, ", choice: "

    .line 852
    .line 853
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->toString()Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v7

    .line 860
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 864
    .line 865
    .line 866
    move-result-object v5

    .line 867
    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 868
    .line 869
    .line 870
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 871
    .line 872
    .line 873
    move-result-object v3

    .line 874
    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 875
    .line 876
    if-eqz v3, :cond_e

    .line 877
    .line 878
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 879
    .line 880
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmHiddenList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    .line 881
    .line 882
    .line 883
    move-result-object v3

    .line 884
    new-instance v5, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 885
    .line 886
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 887
    .line 888
    .line 889
    move-result-object v7

    .line 890
    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 891
    .line 892
    invoke-direct {v5, v7}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    .line 893
    .line 894
    .line 895
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 896
    .line 897
    .line 898
    :cond_e
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 899
    .line 900
    .line 901
    move-result-object v3

    .line 902
    iget-boolean v3, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 903
    .line 904
    if-eqz v3, :cond_f

    .line 905
    .line 906
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 907
    .line 908
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmHiddenList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    .line 909
    .line 910
    .line 911
    move-result-object v3

    .line 912
    new-instance v5, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;

    .line 913
    .line 914
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 915
    .line 916
    .line 917
    move-result-object v7

    .line 918
    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 919
    .line 920
    invoke-direct {v5, v7}, Landroid/net/wifi/WifiScanner$ScanSettings$HiddenNetwork;-><init>(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 924
    .line 925
    .line 926
    :cond_f
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 927
    .line 928
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    .line 929
    .line 930
    .line 931
    move-result-object v3

    .line 932
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 933
    .line 934
    .line 935
    move-result-object v2

    .line 936
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 937
    .line 938
    .line 939
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 940
    .line 941
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    .line 942
    .line 943
    .line 944
    move-result-object v2

    .line 945
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getFrequency()I

    .line 946
    .line 947
    .line 948
    move-result v3

    .line 949
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 950
    .line 951
    .line 952
    move-result-object v3

    .line 953
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 954
    .line 955
    .line 956
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 957
    .line 958
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 959
    .line 960
    .line 961
    move-result-object v2

    .line 962
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 963
    .line 964
    .line 965
    move-result-object v3

    .line 966
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 967
    .line 968
    .line 969
    move-result-object v3

    .line 970
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults(Ljava/lang/String;)Ljava/util/Set;

    .line 971
    .line 972
    .line 973
    move-result-object v2

    .line 974
    const-string v3, ""

    .line 975
    .line 976
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 977
    .line 978
    .line 979
    move-result-object v2

    .line 980
    :cond_10
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 981
    .line 982
    .line 983
    move-result v5

    .line 984
    if-eqz v5, :cond_11

    .line 985
    .line 986
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 987
    .line 988
    .line 989
    move-result-object v5

    .line 990
    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 991
    .line 992
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 993
    .line 994
    invoke-static {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    .line 995
    .line 996
    .line 997
    move-result-object v7

    .line 998
    iget v8, v5, Landroid/net/wifi/ScanResult;->frequency:I

    .line 999
    .line 1000
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1001
    .line 1002
    .line 1003
    move-result-object v8

    .line 1004
    invoke-interface {v7, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 1005
    .line 1006
    .line 1007
    move-result v7

    .line 1008
    if-nez v7, :cond_10

    .line 1009
    .line 1010
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1011
    .line 1012
    invoke-static {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    .line 1013
    .line 1014
    .line 1015
    move-result-object v7

    .line 1016
    iget v8, v5, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1017
    .line 1018
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v8

    .line 1022
    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1023
    .line 1024
    .line 1025
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1026
    .line 1027
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1028
    .line 1029
    .line 1030
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1031
    .line 1032
    .line 1033
    iget v3, v5, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1034
    .line 1035
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1036
    .line 1037
    .line 1038
    const-string v3, " "

    .line 1039
    .line 1040
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1044
    .line 1045
    .line 1046
    move-result-object v3

    .line 1047
    goto :goto_8

    .line 1048
    :cond_11
    const-string v2, ""

    .line 1049
    .line 1050
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1051
    .line 1052
    .line 1053
    move-result v2

    .line 1054
    if-nez v2, :cond_12

    .line 1055
    .line 1056
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1057
    .line 1058
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1059
    .line 1060
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1061
    .line 1062
    .line 1063
    const-string v7, "Adding extra channels "

    .line 1064
    .line 1065
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    .line 1067
    .line 1068
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    .line 1070
    .line 1071
    const-string v3, "for possible roaming."

    .line 1072
    .line 1073
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    .line 1075
    .line 1076
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1077
    .line 1078
    .line 1079
    move-result-object v3

    .line 1080
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1081
    .line 1082
    .line 1083
    :cond_12
    const-string v2, ""

    .line 1084
    .line 1085
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1086
    .line 1087
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDeviceSupportsMlo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1088
    .line 1089
    .line 1090
    move-result v3

    .line 1091
    if-eqz v3, :cond_15

    .line 1092
    .line 1093
    iget-object v3, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->mMloLinkApAddresses:Ljava/util/List;

    .line 1094
    .line 1095
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 1096
    .line 1097
    .line 1098
    move-result v3

    .line 1099
    if-nez v3, :cond_15

    .line 1100
    .line 1101
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1102
    .line 1103
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScanPool(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/ScanPool;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v3

    .line 1107
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 1108
    .line 1109
    .line 1110
    move-result-object v5

    .line 1111
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 1112
    .line 1113
    .line 1114
    move-result-object v5

    .line 1115
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/util/ScanPool;->getScanResults(Ljava/lang/String;)Ljava/util/Set;

    .line 1116
    .line 1117
    .line 1118
    move-result-object v3

    .line 1119
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 1120
    .line 1121
    .line 1122
    move-result-object v3

    .line 1123
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1124
    .line 1125
    .line 1126
    move-result v5

    .line 1127
    if-eqz v5, :cond_13

    .line 1128
    .line 1129
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v5

    .line 1133
    check-cast v5, Landroid/net/wifi/ScanResult;

    .line 1134
    .line 1135
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1136
    .line 1137
    invoke-static {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    .line 1138
    .line 1139
    .line 1140
    move-result-object v7

    .line 1141
    iget v8, v5, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1142
    .line 1143
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1144
    .line 1145
    .line 1146
    move-result-object v8

    .line 1147
    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1148
    .line 1149
    .line 1150
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1151
    .line 1152
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1153
    .line 1154
    .line 1155
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1156
    .line 1157
    .line 1158
    iget v2, v5, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1159
    .line 1160
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1161
    .line 1162
    .line 1163
    const-string v2, " "

    .line 1164
    .line 1165
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1166
    .line 1167
    .line 1168
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1169
    .line 1170
    .line 1171
    move-result-object v2

    .line 1172
    goto :goto_9

    .line 1173
    :cond_13
    const-string v3, ""

    .line 1174
    .line 1175
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1176
    .line 1177
    .line 1178
    move-result v3

    .line 1179
    if-nez v3, :cond_15

    .line 1180
    .line 1181
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1182
    .line 1183
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1184
    .line 1185
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1186
    .line 1187
    .line 1188
    const-string v7, "Adding extra channels "

    .line 1189
    .line 1190
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    .line 1196
    const-string v2, "for MLO links."

    .line 1197
    .line 1198
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    .line 1200
    .line 1201
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1202
    .line 1203
    .line 1204
    move-result-object v2

    .line 1205
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    goto :goto_a

    .line 1209
    :cond_14
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1210
    .line 1211
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    .line 1212
    .line 1213
    .line 1214
    move-result-object v2

    .line 1215
    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1216
    .line 1217
    .line 1218
    :cond_15
    :goto_a
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1219
    .line 1220
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1221
    .line 1222
    .line 1223
    move-result v2

    .line 1224
    if-eqz v2, :cond_16

    .line 1225
    .line 1226
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1227
    .line 1228
    iget-object v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1229
    .line 1230
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getScanRssi()I

    .line 1231
    .line 1232
    .line 1233
    move-result v3

    .line 1234
    iput v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentRssi:I

    .line 1235
    .line 1236
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1237
    .line 1238
    iget-object v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1239
    .line 1240
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getScanRssi()I

    .line 1241
    .line 1242
    .line 1243
    move-result v3

    .line 1244
    iput v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateRssi:I

    .line 1245
    .line 1246
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1247
    .line 1248
    iget-object v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1249
    .line 1250
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getCalculatedThroughputScore()D

    .line 1251
    .line 1252
    .line 1253
    move-result-wide v5

    .line 1254
    iput-wide v5, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCurrentScore:D

    .line 1255
    .line 1256
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1257
    .line 1258
    iget-object v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1259
    .line 1260
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getCalculatedThroughputScore()D

    .line 1261
    .line 1262
    .line 1263
    move-result-wide v5

    .line 1264
    iput-wide v5, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingSwitchCandidateScore:D

    .line 1265
    .line 1266
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1267
    .line 1268
    new-instance v2, Landroid/net/wifi/WifiConfiguration;

    .line 1269
    .line 1270
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$WifiCandidate;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v3

    .line 1274
    invoke-direct {v2, v3}, Landroid/net/wifi/WifiConfiguration;-><init>(Landroid/net/wifi/WifiConfiguration;)V

    .line 1275
    .line 1276
    .line 1277
    invoke-static {v0, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmChoiceConfig(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 1278
    .line 1279
    .line 1280
    :cond_16
    monitor-exit v1

    .line 1281
    return-void

    .line 1282
    :cond_17
    :goto_b
    const-string v0, "SilentRoamingManager"

    .line 1283
    .line 1284
    const-string v2, "calculateCandidateNetworkScore: mOptimizedWifiConfigs network is empty"

    .line 1285
    .line 1286
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    .line 1288
    .line 1289
    monitor-exit v1

    .line 1290
    return-void

    .line 1291
    :goto_c
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1292
    throw v0
.end method


# virtual methods
.method public enter()V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "SilentRoamingManager"

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    const-string v0, "Retry getInterfaceName "

    .line 13
    .line 14
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mgetInterfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 28
    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 31
    .line 32
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-nez v0, :cond_1

    .line 47
    .line 48
    const-string v0, "EnabledState - WifiInfo is null "

    .line 49
    .line 50
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 56
    .line 57
    .line 58
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 59
    .line 60
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 69
    .line 70
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v3

    .line 78
    iput-wide v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mEnterTime:J

    .line 79
    .line 80
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 81
    .line 82
    const-wide/high16 v4, -0x8000000000000000L

    .line 83
    .line 84
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastPnoNetworkFoundTimeStamp(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;J)V

    .line 85
    .line 86
    .line 87
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 88
    .line 89
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 94
    .line 95
    .line 96
    move-result v4

    .line 97
    const-string v5, "sem_wifi"

    .line 98
    .line 99
    const/16 v6, 0xa

    .line 100
    .line 101
    const-string v7, ", failed. Disable the choice network."

    .line 102
    .line 103
    const-string v8, "Forced connection to the choice network, netID:"

    .line 104
    .line 105
    const/4 v9, -0x1

    .line 106
    if-ne v3, v4, :cond_5

    .line 107
    .line 108
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 109
    .line 110
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 115
    .line 116
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 117
    .line 118
    .line 119
    move-result v4

    .line 120
    if-ne v3, v4, :cond_2

    .line 121
    .line 122
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 123
    .line 124
    const-string v4, "Connected back again to the original network, after the previous choice network is disabled."

    .line 125
    .line 126
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 132
    .line 133
    const-string v4, "Connected back again to the original network, without making the transition to the choice network."

    .line 134
    .line 135
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 139
    .line 140
    iget-object v4, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 141
    .line 142
    iget-object v10, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 143
    .line 144
    sget-object v11, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->TRIGGERED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 145
    .line 146
    if-ne v10, v11, :cond_3

    .line 147
    .line 148
    sget-object v10, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 149
    .line 150
    iget v11, v10, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 151
    .line 152
    add-int/2addr v11, v2

    .line 153
    iput v11, v10, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 154
    .line 155
    sget-object v10, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->FAILURE:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 156
    .line 157
    iput-object v10, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 158
    .line 159
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 164
    .line 165
    .line 166
    move-result-wide v10

    .line 167
    iput-wide v10, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 168
    .line 169
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 170
    .line 171
    iget-object v3, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 172
    .line 173
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->reportEventResult()V

    .line 174
    .line 175
    .line 176
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 177
    .line 178
    new-instance v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 179
    .line 180
    iget-object v10, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 181
    .line 182
    invoke-direct {v4, v3, v10}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 186
    .line 187
    .line 188
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 189
    .line 190
    iget-object v3, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 191
    .line 192
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->initialize()V

    .line 193
    .line 194
    .line 195
    :cond_3
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 196
    .line 197
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmForceConnectToTargetNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-eqz v3, :cond_4

    .line 202
    .line 203
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 204
    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    iget-object v8, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 211
    .line 212
    invoke-static {v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 213
    .line 214
    .line 215
    move-result v8

    .line 216
    invoke-static {v7, v8, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v4

    .line 220
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 224
    .line 225
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 230
    .line 231
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 232
    .line 233
    .line 234
    move-result v4

    .line 235
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    .line 236
    .line 237
    .line 238
    move-result-object v3

    .line 239
    if-eqz v3, :cond_4

    .line 240
    .line 241
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 242
    .line 243
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 244
    .line 245
    .line 246
    move-result-object v4

    .line 247
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v3

    .line 251
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 252
    .line 253
    .line 254
    move-result-object v3

    .line 255
    if-eqz v3, :cond_4

    .line 256
    .line 257
    iput v6, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 258
    .line 259
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 260
    .line 261
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/content/Context;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    move-result-object v4

    .line 269
    check-cast v4, Lcom/samsung/android/wifi/SemWifiManager;

    .line 270
    .line 271
    invoke-virtual {v4, v3}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    .line 272
    .line 273
    .line 274
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 275
    .line 276
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 281
    .line 282
    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->disableNetwork(I)Z

    .line 287
    .line 288
    .line 289
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 290
    .line 291
    new-instance v5, Ljava/lang/StringBuilder;

    .line 292
    .line 293
    const-string v6, "Disable network #2 - "

    .line 294
    .line 295
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    iget-object v3, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 299
    .line 300
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 311
    .line 312
    invoke-static {v3, v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 313
    .line 314
    .line 315
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 316
    .line 317
    invoke-static {v3, v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_1

    .line 321
    .line 322
    :cond_5
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 323
    .line 324
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 329
    .line 330
    .line 331
    move-result v4

    .line 332
    const-wide/16 v10, 0x2710

    .line 333
    .line 334
    const/4 v12, 0x0

    .line 335
    const/16 v13, 0x11

    .line 336
    .line 337
    if-ne v3, v4, :cond_6

    .line 338
    .line 339
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 340
    .line 341
    const-string v4, "Connected to a new target network.[CHOICE] Check Internet validity in 10 seconds."

    .line 342
    .line 343
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 347
    .line 348
    invoke-static {v3, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$100(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 349
    .line 350
    .line 351
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 352
    .line 353
    invoke-virtual {v3, v13, v2, v12}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 354
    .line 355
    .line 356
    move-result-object v4

    .line 357
    invoke-virtual {v3, v4, v10, v11}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 358
    .line 359
    .line 360
    goto/16 :goto_1

    .line 361
    .line 362
    :cond_6
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 363
    .line 364
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 365
    .line 366
    .line 367
    move-result v3

    .line 368
    if-eq v3, v9, :cond_8

    .line 369
    .line 370
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 371
    .line 372
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmForceConnectToTargetNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 373
    .line 374
    .line 375
    move-result v3

    .line 376
    if-eqz v3, :cond_7

    .line 377
    .line 378
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 379
    .line 380
    new-instance v4, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iget-object v8, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 386
    .line 387
    invoke-static {v8}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 388
    .line 389
    .line 390
    move-result v8

    .line 391
    invoke-static {v7, v8, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v4

    .line 395
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 399
    .line 400
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 401
    .line 402
    .line 403
    move-result-object v3

    .line 404
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 405
    .line 406
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 407
    .line 408
    .line 409
    move-result v4

    .line 410
    invoke-virtual {v3, v4}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    .line 411
    .line 412
    .line 413
    move-result-object v3

    .line 414
    if-eqz v3, :cond_7

    .line 415
    .line 416
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 417
    .line 418
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 419
    .line 420
    .line 421
    move-result-object v4

    .line 422
    invoke-virtual {v3}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v3

    .line 426
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    if-eqz v3, :cond_7

    .line 431
    .line 432
    iput v6, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 433
    .line 434
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 435
    .line 436
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/content/Context;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    check-cast v4, Lcom/samsung/android/wifi/SemWifiManager;

    .line 445
    .line 446
    invoke-virtual {v4, v3}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    .line 447
    .line 448
    .line 449
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 450
    .line 451
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 452
    .line 453
    .line 454
    move-result-object v4

    .line 455
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 456
    .line 457
    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 458
    .line 459
    .line 460
    move-result v5

    .line 461
    invoke-virtual {v4, v5}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->disableNetwork(I)Z

    .line 462
    .line 463
    .line 464
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 465
    .line 466
    new-instance v5, Ljava/lang/StringBuilder;

    .line 467
    .line 468
    const-string v6, "Disable network #3 - "

    .line 469
    .line 470
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    iget-object v3, v3, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    :cond_7
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 486
    .line 487
    const-string v4, "Connected to a new target network.[NOT CHOICE] Check Internet validity in 10 seconds."

    .line 488
    .line 489
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 490
    .line 491
    .line 492
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 493
    .line 494
    invoke-static {v3, v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$200(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 495
    .line 496
    .line 497
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 498
    .line 499
    invoke-virtual {v3, v13, v12, v12}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 500
    .line 501
    .line 502
    move-result-object v4

    .line 503
    invoke-virtual {v3, v4, v10, v11}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 504
    .line 505
    .line 506
    :cond_8
    :goto_1
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 507
    .line 508
    iget-object v4, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 509
    .line 510
    iget-object v5, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 511
    .line 512
    sget-object v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->TRIGGERED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 513
    .line 514
    if-eq v5, v6, :cond_9

    .line 515
    .line 516
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->initialize()V

    .line 517
    .line 518
    .line 519
    goto :goto_2

    .line 520
    :cond_9
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 521
    .line 522
    .line 523
    move-result-object v3

    .line 524
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 525
    .line 526
    .line 527
    move-result-wide v3

    .line 528
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 529
    .line 530
    iget-object v6, v5, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 531
    .line 532
    iget-wide v7, v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->triggeredTime:J

    .line 533
    .line 534
    sub-long/2addr v3, v7

    .line 535
    const-wide/16 v7, 0x7530

    .line 536
    .line 537
    cmp-long v3, v3, v7

    .line 538
    .line 539
    if-lez v3, :cond_a

    .line 540
    .line 541
    sget-object v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 542
    .line 543
    iget v4, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchAbortedCount:I

    .line 544
    .line 545
    add-int/2addr v4, v2

    .line 546
    iput v4, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchAbortedCount:I

    .line 547
    .line 548
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->ABORTED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 549
    .line 550
    iput-object v2, v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 551
    .line 552
    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 553
    .line 554
    .line 555
    move-result-object v2

    .line 556
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 557
    .line 558
    .line 559
    move-result-wide v2

    .line 560
    iput-wide v2, v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 561
    .line 562
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 563
    .line 564
    iget-object v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 565
    .line 566
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->reportEventResult()V

    .line 567
    .line 568
    .line 569
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 570
    .line 571
    new-instance v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 572
    .line 573
    iget-object v4, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 574
    .line 575
    invoke-direct {v3, v2, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 576
    .line 577
    .line 578
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 579
    .line 580
    .line 581
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 582
    .line 583
    iget-object v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 584
    .line 585
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->initialize()V

    .line 586
    .line 587
    .line 588
    :cond_a
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 589
    .line 590
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 591
    .line 592
    .line 593
    move-result-object v3

    .line 594
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getMaxMloStrLinkCount()I

    .line 595
    .line 596
    .line 597
    move-result v3

    .line 598
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmMaxMloStrLinkCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 599
    .line 600
    .line 601
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 602
    .line 603
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 604
    .line 605
    .line 606
    move-result-object v3

    .line 607
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getSupportedSimultaneousBandCombinations()Ljava/util/Set;

    .line 608
    .line 609
    .line 610
    move-result-object v3

    .line 611
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmSupportedSimultaneousBandCombinations(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/util/Set;)V

    .line 612
    .line 613
    .line 614
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 615
    .line 616
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 617
    .line 618
    .line 619
    move-result v2

    .line 620
    if-eqz v2, :cond_b

    .line 621
    .line 622
    new-instance v2, Ljava/lang/StringBuilder;

    .line 623
    .line 624
    const-string v3, "MaxMloStrLinkCount: "

    .line 625
    .line 626
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 630
    .line 631
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmMaxMloStrLinkCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 632
    .line 633
    .line 634
    move-result v3

    .line 635
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    const-string v3, ", SimultaneousBandCombinations: "

    .line 639
    .line 640
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 641
    .line 642
    .line 643
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 644
    .line 645
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSupportedSimultaneousBandCombinations(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    .line 646
    .line 647
    .line 648
    move-result-object v3

    .line 649
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 650
    .line 651
    .line 652
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 653
    .line 654
    .line 655
    move-result-object v2

    .line 656
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    .line 658
    .line 659
    :cond_b
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 660
    .line 661
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 662
    .line 663
    .line 664
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 665
    .line 666
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addPnoScanRequest()V

    .line 667
    .line 668
    .line 669
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 670
    .line 671
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSupportConnectedPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 672
    .line 673
    .line 674
    move-result v1

    .line 675
    if-nez v1, :cond_e

    .line 676
    .line 677
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 678
    .line 679
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateLinkLayerStateForCurrentNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 680
    .line 681
    .line 682
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 683
    .line 684
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmRoamingWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    .line 685
    .line 686
    .line 687
    move-result-object v1

    .line 688
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->hasActiveStream()Z

    .line 689
    .line 690
    .line 691
    move-result v1

    .line 692
    if-eqz v1, :cond_c

    .line 693
    .line 694
    goto :goto_3

    .line 695
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 696
    .line 697
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 698
    .line 699
    .line 700
    move-result-object v1

    .line 701
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 702
    .line 703
    .line 704
    move-result-wide v1

    .line 705
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 706
    .line 707
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastConnectedTime(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)J

    .line 708
    .line 709
    .line 710
    move-result-wide v3

    .line 711
    sub-long/2addr v1, v3

    .line 712
    const-wide/16 v3, 0x1388

    .line 713
    .line 714
    cmp-long v1, v1, v3

    .line 715
    .line 716
    if-gez v1, :cond_d

    .line 717
    .line 718
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 719
    .line 720
    const-string v0, "Wi-Fi is connected, just now. Do not start partial scan."

    .line 721
    .line 722
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 723
    .line 724
    .line 725
    return-void

    .line 726
    :cond_d
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 727
    .line 728
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmHiddenList(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/List;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 733
    .line 734
    .line 735
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 736
    .line 737
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    .line 738
    .line 739
    .line 740
    move-result-object v1

    .line 741
    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 742
    .line 743
    .line 744
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 745
    .line 746
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->updatePnoNetworkList()V

    .line 747
    .line 748
    .line 749
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 750
    .line 751
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 756
    .line 757
    .line 758
    move-result v1

    .line 759
    if-nez v1, :cond_e

    .line 760
    .line 761
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 762
    .line 763
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmPartialScanFreq(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Ljava/util/Set;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 768
    .line 769
    .line 770
    move-result v0

    .line 771
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 776
    .line 777
    .line 778
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 779
    .line 780
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$maddPartialScanRequest(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 781
    .line 782
    .line 783
    :cond_e
    :goto_3
    return-void
.end method

.method public exit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoScanRestartCount:I

    .line 5
    .line 6
    const/16 v1, 0x11

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$300(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 12
    .line 13
    const/16 v0, 0xf

    .line 14
    .line 15
    invoke-static {p0, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$400(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 6
    .line 7
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 14
    .line 15
    invoke-static {v2, v1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlogStateAndMessage(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/os/Message;Lcom/android/internal/util/State;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget v2, v1, Landroid/os/Message;->what:I

    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    const-string v4, "Start Connecting Watchdog "

    .line 22
    .line 23
    const/4 v5, 0x5

    .line 24
    const-string v6, ", rssi="

    .line 25
    .line 26
    const-string v7, ") freq= "

    .line 27
    .line 28
    const-string v8, " ("

    .line 29
    .line 30
    const/4 v12, 0x0

    .line 31
    const-string v13, "Received "

    .line 32
    .line 33
    const/4 v9, 0x3

    .line 34
    const/4 v10, -0x1

    .line 35
    const-string v11, "SilentRoamingManager"

    .line 36
    .line 37
    const-wide/16 v19, 0x1388

    .line 38
    .line 39
    const/4 v14, 0x0

    .line 40
    packed-switch v2, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    :pswitch_0
    return v14

    .line 44
    :pswitch_1
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addPnoScanRequest()V

    .line 47
    .line 48
    .line 49
    return v3

    .line 50
    :pswitch_2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    if-nez v2, :cond_1

    .line 57
    .line 58
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 59
    .line 60
    const-string v1, "CMD_CHECK_INTERNET_VALIDITY : : WifiInfo is null. Ignore "

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return v3

    .line 66
    :cond_1
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 67
    .line 68
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misInternetConnectionValidated(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-eqz v4, :cond_5

    .line 73
    .line 74
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 75
    .line 76
    const-string v5, "Internet connectivity is VALID on new target network."

    .line 77
    .line 78
    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 82
    .line 83
    invoke-static {v4, v10}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 84
    .line 85
    .line 86
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 87
    .line 88
    invoke-static {v4, v10}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    if-eq v4, v10, :cond_2

    .line 96
    .line 97
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 98
    .line 99
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmUserConnectionSaLogging(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    invoke-virtual {v4, v2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging;->reportSilentRoamingNetworkConnection(I)V

    .line 108
    .line 109
    .line 110
    :cond_2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 111
    .line 112
    iget-object v4, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 113
    .line 114
    iget-object v5, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 115
    .line 116
    sget-object v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->TRIGGERED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 117
    .line 118
    if-ne v5, v6, :cond_4

    .line 119
    .line 120
    sget-object v5, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 121
    .line 122
    iget v6, v5, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchSuccessCount:I

    .line 123
    .line 124
    add-int/2addr v6, v3

    .line 125
    iput v6, v5, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchSuccessCount:I

    .line 126
    .line 127
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 128
    .line 129
    if-ne v1, v3, :cond_3

    .line 130
    .line 131
    sget-object v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->SUCCESS_CHOICE:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 132
    .line 133
    iput-object v1, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_3
    sget-object v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->SUCCESS_NOT_CHOICE:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 137
    .line 138
    iput-object v1, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 139
    .line 140
    :goto_0
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 145
    .line 146
    .line 147
    move-result-wide v1

    .line 148
    iput-wide v1, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 149
    .line 150
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 151
    .line 152
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 153
    .line 154
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->reportEventResult()V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 158
    .line 159
    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 160
    .line 161
    iget-object v4, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 162
    .line 163
    invoke-direct {v2, v1, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 170
    .line 171
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 172
    .line 173
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->initialize()V

    .line 174
    .line 175
    .line 176
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 177
    .line 178
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 179
    .line 180
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mEnterTime:J

    .line 181
    .line 182
    iput-wide v4, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->enabledStateEnterTime:J

    .line 183
    .line 184
    return v3

    .line 185
    :cond_4
    :pswitch_3
    move v2, v3

    .line 186
    goto/16 :goto_5

    .line 187
    .line 188
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 189
    .line 190
    const-string v4, "Internet connectivity is INVALID on new target network. Disable the current network."

    .line 191
    .line 192
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 196
    .line 197
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 202
    .line 203
    .line 204
    move-result-object v1

    .line 205
    if-eqz v1, :cond_6

    .line 206
    .line 207
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 208
    .line 209
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v4, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getManagedNetwork(Ljava/lang/String;)Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    if-eqz v1, :cond_6

    .line 222
    .line 223
    const/16 v4, 0xa

    .line 224
    .line 225
    iput v4, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    .line 226
    .line 227
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 228
    .line 229
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/content/Context;

    .line 230
    .line 231
    .line 232
    move-result-object v4

    .line 233
    const-string v5, "sem_wifi"

    .line 234
    .line 235
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v4

    .line 239
    check-cast v4, Lcom/samsung/android/wifi/SemWifiManager;

    .line 240
    .line 241
    invoke-virtual {v4, v1}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    .line 242
    .line 243
    .line 244
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 245
    .line 246
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    invoke-virtual {v4, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->disableNetwork(I)Z

    .line 255
    .line 256
    .line 257
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 258
    .line 259
    new-instance v4, Ljava/lang/StringBuilder;

    .line 260
    .line 261
    const-string v5, "Disable network #1 - "

    .line 262
    .line 263
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    .line 265
    .line 266
    iget-object v1, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    .line 267
    .line 268
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    .line 270
    .line 271
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 276
    .line 277
    .line 278
    :cond_6
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 279
    .line 280
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmSilentRoamFrom(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmSilentRoamTo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 285
    .line 286
    .line 287
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 288
    .line 289
    iget-object v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 290
    .line 291
    iget-object v4, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 292
    .line 293
    sget-object v5, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->TRIGGERED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 294
    .line 295
    if-ne v4, v5, :cond_4

    .line 296
    .line 297
    sget-object v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 298
    .line 299
    iget v5, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchNoInternetCount:I

    .line 300
    .line 301
    add-int/2addr v5, v3

    .line 302
    iput v5, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchNoInternetCount:I

    .line 303
    .line 304
    sget-object v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->NO_INTERNET:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 305
    .line 306
    iput-object v4, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 307
    .line 308
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 313
    .line 314
    .line 315
    move-result-wide v4

    .line 316
    iput-wide v4, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 317
    .line 318
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 319
    .line 320
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 321
    .line 322
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->reportEventResult()V

    .line 323
    .line 324
    .line 325
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 326
    .line 327
    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 328
    .line 329
    iget-object v4, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 330
    .line 331
    invoke-direct {v2, v1, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 332
    .line 333
    .line 334
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 335
    .line 336
    .line 337
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 338
    .line 339
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 340
    .line 341
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->initialize()V

    .line 342
    .line 343
    .line 344
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 345
    .line 346
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 347
    .line 348
    iget-wide v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mEnterTime:J

    .line 349
    .line 350
    iput-wide v4, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->enabledStateEnterTime:J

    .line 351
    .line 352
    return v3

    .line 353
    :pswitch_4
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 354
    .line 355
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getAutojoinGlobal()Z

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    if-nez v2, :cond_7

    .line 364
    .line 365
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 366
    .line 367
    const-string v2, "mIsAutoJoinGlobal is false, stop pno scan"

    .line 368
    .line 369
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 373
    .line 374
    invoke-virtual {v1, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 375
    .line 376
    .line 377
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 378
    .line 379
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 380
    .line 381
    .line 382
    move-result-object v1

    .line 383
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 384
    .line 385
    .line 386
    return v3

    .line 387
    :cond_7
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 388
    .line 389
    iput v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 390
    .line 391
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 392
    .line 393
    iget-boolean v4, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mIsAtestOngoing:Z

    .line 394
    .line 395
    const-string v9, " Scan results."

    .line 396
    .line 397
    if-nez v4, :cond_8

    .line 398
    .line 399
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 400
    .line 401
    .line 402
    move-result-object v2

    .line 403
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 404
    .line 405
    .line 406
    move-result-wide v15

    .line 407
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 408
    .line 409
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastConnectedTime(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)J

    .line 410
    .line 411
    .line 412
    move-result-wide v17

    .line 413
    sub-long v15, v15, v17

    .line 414
    .line 415
    cmp-long v2, v15, v19

    .line 416
    .line 417
    if-gez v2, :cond_8

    .line 418
    .line 419
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 420
    .line 421
    new-instance v2, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    const-string v4, "Wi-Fi is connected, just now. Ignore "

    .line 424
    .line 425
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    sget-object v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->SCAN_TYPE_TO_STRING:[Ljava/lang/String;

    .line 429
    .line 430
    iget v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 431
    .line 432
    aget-object v0, v4, v0

    .line 433
    .line 434
    invoke-static {v2, v0, v9}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 439
    .line 440
    .line 441
    return v3

    .line 442
    :cond_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 443
    .line 444
    check-cast v1, [Landroid/net/wifi/ScanResult;

    .line 445
    .line 446
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 447
    .line 448
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 449
    .line 450
    .line 451
    move-result-object v4

    .line 452
    invoke-virtual {v4, v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo(Z)Landroid/net/wifi/WifiInfo;

    .line 453
    .line 454
    .line 455
    move-result-object v4

    .line 456
    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)V

    .line 457
    .line 458
    .line 459
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 460
    .line 461
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiInfo;

    .line 462
    .line 463
    .line 464
    move-result-object v2

    .line 465
    if-nez v2, :cond_9

    .line 466
    .line 467
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 468
    .line 469
    new-instance v2, Ljava/lang/StringBuilder;

    .line 470
    .line 471
    const-string v4, "CMD_GET_AUTOJOIN_VALUE_IN_ENABLED : : WifiInfo is null. Ignore "

    .line 472
    .line 473
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 474
    .line 475
    .line 476
    sget-object v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->SCAN_TYPE_TO_STRING:[Ljava/lang/String;

    .line 477
    .line 478
    iget v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 479
    .line 480
    aget-object v0, v4, v0

    .line 481
    .line 482
    invoke-static {v2, v0, v9}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v0

    .line 486
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    return v3

    .line 490
    :cond_9
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 491
    .line 492
    new-instance v9, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v9, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    array-length v12, v1

    .line 498
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 499
    .line 500
    .line 501
    const-string v12, " "

    .line 502
    .line 503
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    sget-object v12, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->SCAN_TYPE_TO_STRING:[Ljava/lang/String;

    .line 507
    .line 508
    iget v13, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 509
    .line 510
    aget-object v12, v12, v13

    .line 511
    .line 512
    const-string v13, " scan results"

    .line 513
    .line 514
    invoke-static {v9, v12, v13}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 515
    .line 516
    .line 517
    move-result-object v9

    .line 518
    invoke-static {v4, v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 519
    .line 520
    .line 521
    array-length v4, v1

    .line 522
    move v9, v14

    .line 523
    :goto_1
    if-ge v14, v4, :cond_c

    .line 524
    .line 525
    aget-object v12, v1, v14

    .line 526
    .line 527
    iget-object v13, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 528
    .line 529
    invoke-static {v13}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 530
    .line 531
    .line 532
    move-result v13

    .line 533
    if-eqz v13, :cond_a

    .line 534
    .line 535
    new-instance v13, Ljava/lang/StringBuilder;

    .line 536
    .line 537
    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 538
    .line 539
    .line 540
    sget-object v15, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->SCAN_TYPE_TO_STRING:[Ljava/lang/String;

    .line 541
    .line 542
    move/from16 v21, v3

    .line 543
    .line 544
    iget v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 545
    .line 546
    aget-object v3, v15, v3

    .line 547
    .line 548
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    const-string v3, " scan result: "

    .line 552
    .line 553
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    iget-object v3, v12, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 557
    .line 558
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 565
    .line 566
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 567
    .line 568
    .line 569
    move-result-object v3

    .line 570
    iget-object v15, v12, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 571
    .line 572
    invoke-virtual {v3, v15}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v3

    .line 576
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    .line 581
    .line 582
    iget v3, v12, Landroid/net/wifi/ScanResult;->frequency:I

    .line 583
    .line 584
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    iget v3, v12, Landroid/net/wifi/ScanResult;->level:I

    .line 591
    .line 592
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v3

    .line 599
    invoke-static {v11, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .line 601
    .line 602
    goto :goto_2

    .line 603
    :cond_a
    move/from16 v21, v3

    .line 604
    .line 605
    :goto_2
    iget v3, v12, Landroid/net/wifi/ScanResult;->level:I

    .line 606
    .line 607
    const/16 v12, -0x3f

    .line 608
    .line 609
    if-lt v3, v12, :cond_b

    .line 610
    .line 611
    move/from16 v9, v21

    .line 612
    .line 613
    :cond_b
    add-int/lit8 v14, v14, 0x1

    .line 614
    .line 615
    move/from16 v3, v21

    .line 616
    .line 617
    goto :goto_1

    .line 618
    :cond_c
    move/from16 v21, v3

    .line 619
    .line 620
    if-nez v9, :cond_d

    .line 621
    .line 622
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 623
    .line 624
    new-instance v2, Ljava/lang/StringBuilder;

    .line 625
    .line 626
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 627
    .line 628
    .line 629
    sget-object v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->SCAN_TYPE_TO_STRING:[Ljava/lang/String;

    .line 630
    .line 631
    iget v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 632
    .line 633
    aget-object v0, v3, v0

    .line 634
    .line 635
    const-string v3, " ScanResults do not have valid RSSI level."

    .line 636
    .line 637
    invoke-static {v2, v0, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-static {v1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 642
    .line 643
    .line 644
    return v21

    .line 645
    :cond_d
    iget v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 646
    .line 647
    if-nez v3, :cond_f

    .line 648
    .line 649
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 650
    .line 651
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastPnoNetworkFoundTimeStamp(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)J

    .line 652
    .line 653
    .line 654
    move-result-wide v3

    .line 655
    const-wide/high16 v6, -0x8000000000000000L

    .line 656
    .line 657
    cmp-long v3, v3, v6

    .line 658
    .line 659
    if-eqz v3, :cond_e

    .line 660
    .line 661
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 662
    .line 663
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 664
    .line 665
    .line 666
    move-result-object v3

    .line 667
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 668
    .line 669
    .line 670
    move-result-wide v3

    .line 671
    iget-object v6, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 672
    .line 673
    invoke-static {v6}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastPnoNetworkFoundTimeStamp(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)J

    .line 674
    .line 675
    .line 676
    move-result-wide v6

    .line 677
    sub-long/2addr v3, v6

    .line 678
    const-wide/32 v6, 0x48828

    .line 679
    .line 680
    .line 681
    cmp-long v6, v3, v6

    .line 682
    .line 683
    if-gez v6, :cond_e

    .line 684
    .line 685
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 686
    .line 687
    new-instance v1, Ljava/lang/StringBuilder;

    .line 688
    .line 689
    const-string v2, "Too short since last pno network found: "

    .line 690
    .line 691
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 692
    .line 693
    .line 694
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 695
    .line 696
    .line 697
    const-string v2, " ms. Skip silent roaming."

    .line 698
    .line 699
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 707
    .line 708
    .line 709
    return v21

    .line 710
    :cond_e
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 711
    .line 712
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 713
    .line 714
    .line 715
    move-result-object v4

    .line 716
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 717
    .line 718
    .line 719
    move-result-wide v6

    .line 720
    invoke-static {v3, v6, v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastPnoNetworkFoundTimeStamp(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;J)V

    .line 721
    .line 722
    .line 723
    :cond_f
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 724
    .line 725
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/NetworkInfo$State;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    sget-object v4, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 730
    .line 731
    if-ne v3, v4, :cond_19

    .line 732
    .line 733
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 734
    .line 735
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateLinkLayerStateForCurrentNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 736
    .line 737
    .line 738
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 739
    .line 740
    .line 741
    move-result v3

    .line 742
    if-ne v3, v10, :cond_10

    .line 743
    .line 744
    const-string v0, "network is connected but wifi info is invalid"

    .line 745
    .line 746
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    .line 748
    .line 749
    return v21

    .line 750
    :cond_10
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 751
    .line 752
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmRoamingWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    .line 753
    .line 754
    .line 755
    move-result-object v3

    .line 756
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->hasActiveStream()Z

    .line 757
    .line 758
    .line 759
    move-result v3

    .line 760
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 761
    .line 762
    new-instance v6, Ljava/lang/StringBuilder;

    .line 763
    .line 764
    const-string v7, "current network hasActiveStream= "

    .line 765
    .line 766
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 767
    .line 768
    .line 769
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 770
    .line 771
    .line 772
    const-string v7, " (hasInternetAccess/isNoInternetAccessExpected/semIsNoInternetAccessExpected = "

    .line 773
    .line 774
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 778
    .line 779
    invoke-virtual {v7, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->hasInternetAccess(Landroid/net/wifi/WifiInfo;)Z

    .line 780
    .line 781
    .line 782
    move-result v7

    .line 783
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 784
    .line 785
    .line 786
    const-string v7, "/"

    .line 787
    .line 788
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    .line 790
    .line 791
    iget-object v8, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 792
    .line 793
    invoke-static {v8, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misNoInternetAccessExpected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)Z

    .line 794
    .line 795
    .line 796
    move-result v8

    .line 797
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 798
    .line 799
    .line 800
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    iget-object v7, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 804
    .line 805
    invoke-static {v7}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 806
    .line 807
    .line 808
    move-result-object v8

    .line 809
    invoke-virtual {v8, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 810
    .line 811
    .line 812
    move-result-object v2

    .line 813
    invoke-virtual {v7, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->semIsNoInternetAccessExpected(Landroid/net/wifi/WifiConfiguration;)Z

    .line 814
    .line 815
    .line 816
    move-result v2

    .line 817
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 818
    .line 819
    .line 820
    const-string v2, ")"

    .line 821
    .line 822
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 826
    .line 827
    .line 828
    move-result-object v2

    .line 829
    invoke-static {v4, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 830
    .line 831
    .line 832
    if-eqz v3, :cond_11

    .line 833
    .line 834
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 835
    .line 836
    const-string v1, "current network is connected but has active stream or no internet."

    .line 837
    .line 838
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 839
    .line 840
    .line 841
    return v21

    .line 842
    :cond_11
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 843
    .line 844
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$misMloSufficient(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 845
    .line 846
    .line 847
    move-result v2

    .line 848
    if-eqz v2, :cond_12

    .line 849
    .line 850
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 851
    .line 852
    const-string v1, "current network is MLO connection, and signal strength is sufficient."

    .line 853
    .line 854
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 855
    .line 856
    .line 857
    return v21

    .line 858
    :cond_12
    invoke-direct {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->calculateCandidateNetworkScore([Landroid/net/wifi/ScanResult;)V

    .line 859
    .line 860
    .line 861
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 862
    .line 863
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsNetworkSelectionNeeded(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 864
    .line 865
    .line 866
    move-result v1

    .line 867
    if-eqz v1, :cond_17

    .line 868
    .line 869
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 870
    .line 871
    const/16 v2, 0x11

    .line 872
    .line 873
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$500(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)Z

    .line 874
    .line 875
    .line 876
    move-result v1

    .line 877
    if-eqz v1, :cond_13

    .line 878
    .line 879
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 880
    .line 881
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$600(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 882
    .line 883
    .line 884
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 885
    .line 886
    iget-object v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 887
    .line 888
    iget-object v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 889
    .line 890
    sget-object v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->TRIGGERED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 891
    .line 892
    if-ne v3, v4, :cond_13

    .line 893
    .line 894
    sget-object v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 895
    .line 896
    iget v4, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchAbortedCount:I

    .line 897
    .line 898
    add-int/lit8 v4, v4, 0x1

    .line 899
    .line 900
    iput v4, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchAbortedCount:I

    .line 901
    .line 902
    sget-object v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->ABORTED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 903
    .line 904
    iput-object v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 905
    .line 906
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 907
    .line 908
    .line 909
    move-result-object v1

    .line 910
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 911
    .line 912
    .line 913
    move-result-wide v3

    .line 914
    iput-wide v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 915
    .line 916
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 917
    .line 918
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 919
    .line 920
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->reportEventResult()V

    .line 921
    .line 922
    .line 923
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 924
    .line 925
    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 926
    .line 927
    iget-object v3, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 928
    .line 929
    invoke-direct {v2, v1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 930
    .line 931
    .line 932
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 933
    .line 934
    .line 935
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 936
    .line 937
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 938
    .line 939
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->initialize()V

    .line 940
    .line 941
    .line 942
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 943
    .line 944
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 945
    .line 946
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mEnterTime:J

    .line 947
    .line 948
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->enabledStateEnterTime:J

    .line 949
    .line 950
    :cond_13
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 951
    .line 952
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmChoiceConfig(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiConfiguration;

    .line 953
    .line 954
    .line 955
    move-result-object v2

    .line 956
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstartSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiConfiguration;)V

    .line 957
    .line 958
    .line 959
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 960
    .line 961
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmForceConnectToTargetNetwork(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 962
    .line 963
    .line 964
    move-result v1

    .line 965
    if-eqz v1, :cond_14

    .line 966
    .line 967
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 968
    .line 969
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmChoiceConfig(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/wifi/WifiConfiguration;

    .line 970
    .line 971
    .line 972
    move-result-object v1

    .line 973
    if-nez v1, :cond_15

    .line 974
    .line 975
    :cond_14
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 976
    .line 977
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$maddPartialScanRequest(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 978
    .line 979
    .line 980
    :cond_15
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 981
    .line 982
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 983
    .line 984
    iget-object v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 985
    .line 986
    sget-object v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->INVALID:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 987
    .line 988
    if-ne v2, v3, :cond_16

    .line 989
    .line 990
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 991
    .line 992
    iget v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    .line 993
    .line 994
    add-int/lit8 v3, v3, 0x1

    .line 995
    .line 996
    iput v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchCount:I

    .line 997
    .line 998
    sget-object v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->TRIGGERED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 999
    .line 1000
    iput-object v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1001
    .line 1002
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 1003
    .line 1004
    .line 1005
    move-result-object v0

    .line 1006
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 1007
    .line 1008
    .line 1009
    move-result-wide v2

    .line 1010
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->triggeredTime:J

    .line 1011
    .line 1012
    return v21

    .line 1013
    :cond_16
    :goto_3
    move/from16 v2, v21

    .line 1014
    .line 1015
    goto/16 :goto_5

    .line 1016
    .line 1017
    :cond_17
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1018
    .line 1019
    const-string v2, "current network is best choice at the moment."

    .line 1020
    .line 1021
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    iget v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 1025
    .line 1026
    if-nez v1, :cond_16

    .line 1027
    .line 1028
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1029
    .line 1030
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 1031
    .line 1032
    .line 1033
    move-result v2

    .line 1034
    add-int/lit8 v2, v2, 0x1

    .line 1035
    .line 1036
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1037
    .line 1038
    .line 1039
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1040
    .line 1041
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 1042
    .line 1043
    .line 1044
    move-result v1

    .line 1045
    if-le v1, v5, :cond_18

    .line 1046
    .line 1047
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1048
    .line 1049
    const-string v2, "Connecting watchdog count over threshold, stop pno scan"

    .line 1050
    .line 1051
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1052
    .line 1053
    .line 1054
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1055
    .line 1056
    move/from16 v2, v21

    .line 1057
    .line 1058
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1059
    .line 1060
    .line 1061
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1062
    .line 1063
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmRunSilentRoamAtGenericScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1064
    .line 1065
    .line 1066
    move-result v1

    .line 1067
    if-nez v1, :cond_25

    .line 1068
    .line 1069
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1070
    .line 1071
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v1

    .line 1075
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1076
    .line 1077
    .line 1078
    return v2

    .line 1079
    :cond_18
    move/from16 v2, v21

    .line 1080
    .line 1081
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1082
    .line 1083
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1084
    .line 1085
    .line 1086
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1087
    .line 1088
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addPnoScanRequest()V

    .line 1089
    .line 1090
    .line 1091
    return v2

    .line 1092
    :cond_19
    move/from16 v2, v21

    .line 1093
    .line 1094
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1095
    .line 1096
    const-string v1, "Enabled state but current network is not connected"

    .line 1097
    .line 1098
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1099
    .line 1100
    .line 1101
    return v2

    .line 1102
    :pswitch_5
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1103
    .line 1104
    const-string v2, "Received full scan failure"

    .line 1105
    .line 1106
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1107
    .line 1108
    .line 1109
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1110
    .line 1111
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWaitingForRoamResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1112
    .line 1113
    .line 1114
    move-result v1

    .line 1115
    if-eqz v1, :cond_1a

    .line 1116
    .line 1117
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1118
    .line 1119
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstartSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1120
    .line 1121
    .line 1122
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1123
    .line 1124
    iget-object v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1125
    .line 1126
    iget-object v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1127
    .line 1128
    sget-object v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->TRIGGERED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1129
    .line 1130
    if-ne v3, v4, :cond_1a

    .line 1131
    .line 1132
    sget-object v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 1133
    .line 1134
    iget v4, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 1135
    .line 1136
    const/16 v21, 0x1

    .line 1137
    .line 1138
    add-int/lit8 v4, v4, 0x1

    .line 1139
    .line 1140
    iput v4, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 1141
    .line 1142
    sget-object v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->FAILURE:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1143
    .line 1144
    iput-object v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1145
    .line 1146
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v1

    .line 1150
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 1151
    .line 1152
    .line 1153
    move-result-wide v3

    .line 1154
    iput-wide v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 1155
    .line 1156
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1157
    .line 1158
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1159
    .line 1160
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->reportEventResult()V

    .line 1161
    .line 1162
    .line 1163
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1164
    .line 1165
    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1166
    .line 1167
    iget-object v3, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1168
    .line 1169
    invoke-direct {v2, v1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 1170
    .line 1171
    .line 1172
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 1173
    .line 1174
    .line 1175
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1176
    .line 1177
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1178
    .line 1179
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->initialize()V

    .line 1180
    .line 1181
    .line 1182
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1183
    .line 1184
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1185
    .line 1186
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mEnterTime:J

    .line 1187
    .line 1188
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->enabledStateEnterTime:J

    .line 1189
    .line 1190
    const/16 v21, 0x1

    .line 1191
    .line 1192
    return v21

    .line 1193
    :cond_1a
    const/4 v2, 0x1

    .line 1194
    goto/16 :goto_5

    .line 1195
    .line 1196
    :pswitch_6
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1197
    .line 1198
    const-string v2, "Received partial scan failure"

    .line 1199
    .line 1200
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1204
    .line 1205
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWaitingForRoamResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1206
    .line 1207
    .line 1208
    move-result v1

    .line 1209
    if-eqz v1, :cond_1b

    .line 1210
    .line 1211
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1212
    .line 1213
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstartSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1214
    .line 1215
    .line 1216
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1217
    .line 1218
    iget-object v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1219
    .line 1220
    iget-object v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1221
    .line 1222
    sget-object v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->TRIGGERED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1223
    .line 1224
    if-ne v3, v4, :cond_1b

    .line 1225
    .line 1226
    sget-object v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 1227
    .line 1228
    iget v4, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 1229
    .line 1230
    const/16 v21, 0x1

    .line 1231
    .line 1232
    add-int/lit8 v4, v4, 0x1

    .line 1233
    .line 1234
    iput v4, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 1235
    .line 1236
    sget-object v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->FAILURE:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1237
    .line 1238
    iput-object v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1239
    .line 1240
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 1241
    .line 1242
    .line 1243
    move-result-object v1

    .line 1244
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 1245
    .line 1246
    .line 1247
    move-result-wide v3

    .line 1248
    iput-wide v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 1249
    .line 1250
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1251
    .line 1252
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1253
    .line 1254
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->reportEventResult()V

    .line 1255
    .line 1256
    .line 1257
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1258
    .line 1259
    new-instance v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1260
    .line 1261
    iget-object v3, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1262
    .line 1263
    invoke-direct {v2, v1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 1264
    .line 1265
    .line 1266
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 1267
    .line 1268
    .line 1269
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1270
    .line 1271
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1272
    .line 1273
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->initialize()V

    .line 1274
    .line 1275
    .line 1276
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1277
    .line 1278
    iget-object v1, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1279
    .line 1280
    iget-wide v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mEnterTime:J

    .line 1281
    .line 1282
    iput-wide v2, v1, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->enabledStateEnterTime:J

    .line 1283
    .line 1284
    const/16 v21, 0x1

    .line 1285
    .line 1286
    return v21

    .line 1287
    :cond_1b
    const/16 v21, 0x1

    .line 1288
    .line 1289
    goto/16 :goto_3

    .line 1290
    .line 1291
    :pswitch_7
    move/from16 v21, v3

    .line 1292
    .line 1293
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1294
    .line 1295
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1296
    .line 1297
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mpnoScanFailure(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1298
    .line 1299
    .line 1300
    return v21

    .line 1301
    :pswitch_8
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1302
    .line 1303
    check-cast v2, [Landroid/net/wifi/ScanResult;

    .line 1304
    .line 1305
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1306
    .line 1307
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1308
    .line 1309
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1310
    .line 1311
    .line 1312
    array-length v2, v2

    .line 1313
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1314
    .line 1315
    .line 1316
    const-string v2, " full scan results. mWaitingForRoamResult is "

    .line 1317
    .line 1318
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    .line 1320
    .line 1321
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1322
    .line 1323
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWaitingForRoamResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1324
    .line 1325
    .line 1326
    move-result v2

    .line 1327
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1328
    .line 1329
    .line 1330
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1331
    .line 1332
    .line 1333
    move-result-object v2

    .line 1334
    invoke-static {v3, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1335
    .line 1336
    .line 1337
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1338
    .line 1339
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1340
    .line 1341
    check-cast v3, [Landroid/net/wifi/ScanResult;

    .line 1342
    .line 1343
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateFullScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;[Landroid/net/wifi/ScanResult;)V

    .line 1344
    .line 1345
    .line 1346
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1347
    .line 1348
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWaitingForRoamResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1349
    .line 1350
    .line 1351
    move-result v2

    .line 1352
    if-eqz v2, :cond_1d

    .line 1353
    .line 1354
    iget v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 1355
    .line 1356
    if-nez v1, :cond_1c

    .line 1357
    .line 1358
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1359
    .line 1360
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 1361
    .line 1362
    .line 1363
    move-result v2

    .line 1364
    const/16 v21, 0x1

    .line 1365
    .line 1366
    add-int/lit8 v2, v2, 0x1

    .line 1367
    .line 1368
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1369
    .line 1370
    .line 1371
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1372
    .line 1373
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1374
    .line 1375
    .line 1376
    move-result v1

    .line 1377
    if-eqz v1, :cond_1c

    .line 1378
    .line 1379
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1380
    .line 1381
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1382
    .line 1383
    .line 1384
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1385
    .line 1386
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 1387
    .line 1388
    .line 1389
    move-result v2

    .line 1390
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1391
    .line 1392
    .line 1393
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1394
    .line 1395
    .line 1396
    move-result-object v1

    .line 1397
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    .line 1399
    .line 1400
    :cond_1c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1401
    .line 1402
    invoke-static {v1, v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$800(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1403
    .line 1404
    .line 1405
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1406
    .line 1407
    iget v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 1408
    .line 1409
    invoke-virtual {v1, v9, v0, v14, v12}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 1410
    .line 1411
    .line 1412
    move-result-object v0

    .line 1413
    move-wide/from16 v2, v19

    .line 1414
    .line 1415
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1416
    .line 1417
    .line 1418
    const/4 v2, 0x1

    .line 1419
    return v2

    .line 1420
    :cond_1d
    const/4 v2, 0x1

    .line 1421
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1422
    .line 1423
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->queryWifiManagerForAsyncParameters()V

    .line 1424
    .line 1425
    .line 1426
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1427
    .line 1428
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1429
    .line 1430
    const/16 v3, 0xf

    .line 1431
    .line 1432
    invoke-virtual {v0, v3, v2, v14, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 1433
    .line 1434
    .line 1435
    move-result-object v1

    .line 1436
    const-wide/16 v3, 0x44c

    .line 1437
    .line 1438
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1439
    .line 1440
    .line 1441
    return v2

    .line 1442
    :pswitch_9
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1443
    .line 1444
    check-cast v2, [Landroid/net/wifi/ScanResult;

    .line 1445
    .line 1446
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1447
    .line 1448
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1449
    .line 1450
    invoke-direct {v5, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1451
    .line 1452
    .line 1453
    array-length v10, v2

    .line 1454
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1455
    .line 1456
    .line 1457
    const-string v10, " partial scan results.  mWaitingForRoamResult is "

    .line 1458
    .line 1459
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1460
    .line 1461
    .line 1462
    iget-object v10, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1463
    .line 1464
    invoke-static {v10}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWaitingForRoamResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1465
    .line 1466
    .line 1467
    move-result v10

    .line 1468
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1469
    .line 1470
    .line 1471
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v5

    .line 1475
    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1476
    .line 1477
    .line 1478
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1479
    .line 1480
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1481
    .line 1482
    .line 1483
    move-result v3

    .line 1484
    if-eqz v3, :cond_1e

    .line 1485
    .line 1486
    array-length v3, v2

    .line 1487
    move v5, v14

    .line 1488
    :goto_4
    if-ge v5, v3, :cond_1e

    .line 1489
    .line 1490
    aget-object v10, v2, v5

    .line 1491
    .line 1492
    new-instance v13, Ljava/lang/StringBuilder;

    .line 1493
    .line 1494
    const-string v15, "partial result: "

    .line 1495
    .line 1496
    invoke-direct {v13, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1497
    .line 1498
    .line 1499
    iget-object v15, v10, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 1500
    .line 1501
    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1502
    .line 1503
    .line 1504
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1505
    .line 1506
    .line 1507
    iget-object v15, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1508
    .line 1509
    invoke-static {v15}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 1510
    .line 1511
    .line 1512
    move-result-object v15

    .line 1513
    iget-object v12, v10, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 1514
    .line 1515
    invoke-virtual {v15, v12}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 1516
    .line 1517
    .line 1518
    move-result-object v12

    .line 1519
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1520
    .line 1521
    .line 1522
    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1523
    .line 1524
    .line 1525
    iget v12, v10, Landroid/net/wifi/ScanResult;->frequency:I

    .line 1526
    .line 1527
    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1528
    .line 1529
    .line 1530
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1531
    .line 1532
    .line 1533
    iget v10, v10, Landroid/net/wifi/ScanResult;->level:I

    .line 1534
    .line 1535
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1536
    .line 1537
    .line 1538
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1539
    .line 1540
    .line 1541
    move-result-object v10

    .line 1542
    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    .line 1544
    .line 1545
    add-int/lit8 v5, v5, 0x1

    .line 1546
    .line 1547
    const/4 v12, 0x0

    .line 1548
    goto :goto_4

    .line 1549
    :cond_1e
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1550
    .line 1551
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1552
    .line 1553
    check-cast v3, [Landroid/net/wifi/ScanResult;

    .line 1554
    .line 1555
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePartialScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;[Landroid/net/wifi/ScanResult;)V

    .line 1556
    .line 1557
    .line 1558
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1559
    .line 1560
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWaitingForRoamResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1561
    .line 1562
    .line 1563
    move-result v2

    .line 1564
    if-eqz v2, :cond_20

    .line 1565
    .line 1566
    iget v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 1567
    .line 1568
    if-nez v1, :cond_1f

    .line 1569
    .line 1570
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1571
    .line 1572
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 1573
    .line 1574
    .line 1575
    move-result v2

    .line 1576
    const/16 v21, 0x1

    .line 1577
    .line 1578
    add-int/lit8 v2, v2, 0x1

    .line 1579
    .line 1580
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1581
    .line 1582
    .line 1583
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1584
    .line 1585
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1586
    .line 1587
    .line 1588
    move-result v1

    .line 1589
    if-eqz v1, :cond_1f

    .line 1590
    .line 1591
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1592
    .line 1593
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1594
    .line 1595
    .line 1596
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1597
    .line 1598
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 1599
    .line 1600
    .line 1601
    move-result v2

    .line 1602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1603
    .line 1604
    .line 1605
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1606
    .line 1607
    .line 1608
    move-result-object v1

    .line 1609
    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    .line 1611
    .line 1612
    :cond_1f
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1613
    .line 1614
    invoke-static {v1, v9}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->access$700(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 1615
    .line 1616
    .line 1617
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1618
    .line 1619
    iget v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mLastScanType:I

    .line 1620
    .line 1621
    const/4 v2, 0x0

    .line 1622
    invoke-virtual {v1, v9, v0, v14, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 1623
    .line 1624
    .line 1625
    move-result-object v0

    .line 1626
    const-wide/16 v2, 0x1388

    .line 1627
    .line 1628
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1629
    .line 1630
    .line 1631
    const/4 v2, 0x1

    .line 1632
    return v2

    .line 1633
    :cond_20
    const/4 v2, 0x1

    .line 1634
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1635
    .line 1636
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->queryWifiManagerForAsyncParameters()V

    .line 1637
    .line 1638
    .line 1639
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1640
    .line 1641
    const/4 v3, 0x2

    .line 1642
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1643
    .line 1644
    const/16 v4, 0xf

    .line 1645
    .line 1646
    invoke-virtual {v0, v4, v3, v14, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v1

    .line 1650
    const-wide/16 v5, 0x44c

    .line 1651
    .line 1652
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1653
    .line 1654
    .line 1655
    return v2

    .line 1656
    :pswitch_a
    move v2, v3

    .line 1657
    const/16 v4, 0xf

    .line 1658
    .line 1659
    const-wide/16 v5, 0x44c

    .line 1660
    .line 1661
    iget-object v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1662
    .line 1663
    iput v14, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mPnoScanRestartCount:I

    .line 1664
    .line 1665
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->queryWifiManagerForAsyncParameters()V

    .line 1666
    .line 1667
    .line 1668
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1669
    .line 1670
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1671
    .line 1672
    invoke-virtual {v0, v4, v14, v14, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v1

    .line 1676
    invoke-virtual {v0, v1, v5, v6}, Lcom/android/internal/util/StateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 1677
    .line 1678
    .line 1679
    return v2

    .line 1680
    :pswitch_b
    move v2, v3

    .line 1681
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1682
    .line 1683
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1684
    .line 1685
    .line 1686
    move-result v1

    .line 1687
    if-eqz v1, :cond_25

    .line 1688
    .line 1689
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1690
    .line 1691
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1692
    .line 1693
    .line 1694
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1695
    .line 1696
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 1697
    .line 1698
    .line 1699
    move-result-object v1

    .line 1700
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1701
    .line 1702
    .line 1703
    return v2

    .line 1704
    :pswitch_c
    move v2, v3

    .line 1705
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1706
    .line 1707
    if-nez v1, :cond_21

    .line 1708
    .line 1709
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1710
    .line 1711
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDisabledState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 1712
    .line 1713
    .line 1714
    move-result-object v3

    .line 1715
    invoke-virtual {v1, v3}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1716
    .line 1717
    .line 1718
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1719
    .line 1720
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmRoamingWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    .line 1721
    .line 1722
    .line 1723
    move-result-object v0

    .line 1724
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->reset()V

    .line 1725
    .line 1726
    .line 1727
    return v2

    .line 1728
    :cond_21
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1729
    .line 1730
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1731
    .line 1732
    .line 1733
    move-result v0

    .line 1734
    if-eqz v0, :cond_25

    .line 1735
    .line 1736
    const-string v0, "Roaming connected "

    .line 1737
    .line 1738
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    .line 1740
    .line 1741
    return v2

    .line 1742
    :pswitch_d
    move v2, v3

    .line 1743
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1744
    .line 1745
    if-nez v1, :cond_25

    .line 1746
    .line 1747
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1748
    .line 1749
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmIfaceName(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1750
    .line 1751
    .line 1752
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1753
    .line 1754
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1755
    .line 1756
    .line 1757
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1758
    .line 1759
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 1760
    .line 1761
    .line 1762
    move-result-object v1

    .line 1763
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1764
    .line 1765
    .line 1766
    return v2

    .line 1767
    :pswitch_e
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1768
    .line 1769
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1770
    .line 1771
    const-string v4, "Connecting watchdog! , ConnectingWatchdogCount= "

    .line 1772
    .line 1773
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1774
    .line 1775
    .line 1776
    iget-object v4, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1777
    .line 1778
    invoke-static {v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 1779
    .line 1780
    .line 1781
    move-result v4

    .line 1782
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1783
    .line 1784
    .line 1785
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1786
    .line 1787
    .line 1788
    move-result-object v3

    .line 1789
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1790
    .line 1791
    .line 1792
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1793
    .line 1794
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstartSilentRoaming(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1795
    .line 1796
    .line 1797
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1798
    .line 1799
    iget-object v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1800
    .line 1801
    iget-object v4, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1802
    .line 1803
    sget-object v6, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->TRIGGERED:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1804
    .line 1805
    if-ne v4, v6, :cond_22

    .line 1806
    .line 1807
    sget-object v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mW24hStats:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;

    .line 1808
    .line 1809
    iget v6, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 1810
    .line 1811
    const/16 v21, 0x1

    .line 1812
    .line 1813
    add-int/lit8 v6, v6, 0x1

    .line 1814
    .line 1815
    iput v6, v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingW24hStats;->totalSwitchFailureCount:I

    .line 1816
    .line 1817
    sget-object v4, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;->FAILURE:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1818
    .line 1819
    iput-object v4, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->silentRoamingResult:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamginResult;

    .line 1820
    .line 1821
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmClock(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/SemClock;

    .line 1822
    .line 1823
    .line 1824
    move-result-object v2

    .line 1825
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/util/SemClock;->getElapsedSinceBootMillis()J

    .line 1826
    .line 1827
    .line 1828
    move-result-wide v6

    .line 1829
    iput-wide v6, v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->resultTime:J

    .line 1830
    .line 1831
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1832
    .line 1833
    iget-object v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1834
    .line 1835
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->reportEventResult()V

    .line 1836
    .line 1837
    .line 1838
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1839
    .line 1840
    new-instance v3, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1841
    .line 1842
    iget-object v4, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1843
    .line 1844
    invoke-direct {v3, v2, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;-><init>(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 1845
    .line 1846
    .line 1847
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastSilentRoamingEvent(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;)V

    .line 1848
    .line 1849
    .line 1850
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1851
    .line 1852
    iget-object v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1853
    .line 1854
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->initialize()V

    .line 1855
    .line 1856
    .line 1857
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1858
    .line 1859
    iget-object v2, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->mSilentRoamingEvent:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;

    .line 1860
    .line 1861
    iget-wide v3, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->mEnterTime:J

    .line 1862
    .line 1863
    iput-wide v3, v2, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$SilentRoamingEvent;->enabledStateEnterTime:J

    .line 1864
    .line 1865
    :cond_22
    iget-object v2, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1866
    .line 1867
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 1868
    .line 1869
    .line 1870
    move-result v2

    .line 1871
    if-le v2, v5, :cond_24

    .line 1872
    .line 1873
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1874
    .line 1875
    const/4 v2, 0x1

    .line 1876
    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1877
    .line 1878
    .line 1879
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1880
    .line 1881
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmRunSilentRoamAtGenericScanResults(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 1882
    .line 1883
    .line 1884
    move-result v1

    .line 1885
    if-eqz v1, :cond_23

    .line 1886
    .line 1887
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1888
    .line 1889
    const-string v1, "Terminate PNO scan but stay on EnabledState and wait for generic scan results."

    .line 1890
    .line 1891
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1892
    .line 1893
    .line 1894
    return v2

    .line 1895
    :cond_23
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1896
    .line 1897
    const-string v3, "Terminate PNO scan and exit from EnabledState."

    .line 1898
    .line 1899
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 1900
    .line 1901
    .line 1902
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1903
    .line 1904
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmDefaultState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/android/internal/util/State;

    .line 1905
    .line 1906
    .line 1907
    move-result-object v1

    .line 1908
    invoke-virtual {v0, v1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    .line 1909
    .line 1910
    .line 1911
    return v2

    .line 1912
    :cond_24
    const/4 v2, 0x1

    .line 1913
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 1914
    .line 1915
    if-nez v1, :cond_25

    .line 1916
    .line 1917
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1918
    .line 1919
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdatePnoScanParams(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1920
    .line 1921
    .line 1922
    iget-object v1, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1923
    .line 1924
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mstopPnoScan(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 1925
    .line 1926
    .line 1927
    iget-object v0, v0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$EnabledState;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 1928
    .line 1929
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->addPnoScanRequest()V

    .line 1930
    .line 1931
    .line 1932
    :cond_25
    :goto_5
    return v2

    .line 1933
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
