.class Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

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
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/NetworkInfo$State;

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
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmIsWifiConnected(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_8

    .line 20
    .line 21
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/wifi/WifiInfo;)V

    .line 32
    .line 33
    .line 34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 35
    .line 36
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mupdateCurrentBssidScanResult(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Landroid/net/NetworkInfo$State;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 50
    .line 51
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/NetworkInfo$State;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 56
    .line 57
    const-string v1, ", mConnectingWatchdogCount= "

    .line 58
    .line 59
    const-string v2, "<none>"

    .line 60
    .line 61
    const/4 v3, -0x1

    .line 62
    if-ne p1, v0, :cond_3

    .line 63
    .line 64
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 65
    .line 66
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eq v0, v3, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    if-eqz v0, :cond_2

    .line 91
    .line 92
    iget-object v4, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 93
    .line 94
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 95
    .line 96
    invoke-static {v4, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    if-nez v4, :cond_1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 107
    .line 108
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 125
    .line 126
    new-instance v6, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    const-string v7, "Network connected : networkId = "

    .line 129
    .line 130
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 134
    .line 135
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    const-string v0, ", configKey= "

    .line 139
    .line 140
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    const-string v0, ", BSSID= "

    .line 147
    .line 148
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    const-string v0, ", frequency= "

    .line 155
    .line 156
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 170
    .line 171
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    const-string p1, ", mScreenOn= "

    .line 179
    .line 180
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 184
    .line 185
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 186
    .line 187
    .line 188
    move-result p1

    .line 189
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-static {v5, p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 200
    .line 201
    const/4 v0, 0x1

    .line 202
    invoke-static {p1, v0, v4}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;ZLjava/lang/String;)V

    .line 203
    .line 204
    .line 205
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 206
    .line 207
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmTargetNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 212
    .line 213
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/NetworkInfo$State;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    .line 218
    .line 219
    const-string v4, ", mScreenOn="

    .line 220
    .line 221
    if-ne p1, v0, :cond_7

    .line 222
    .line 223
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 224
    .line 225
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 234
    .line 235
    .line 236
    move-result v0

    .line 237
    if-eq v0, v3, :cond_6

    .line 238
    .line 239
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 240
    .line 241
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiConfiguration;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    if-eqz v0, :cond_6

    .line 250
    .line 251
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 252
    .line 253
    iget v5, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 254
    .line 255
    invoke-static {v3, v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmTargetNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 256
    .line 257
    .line 258
    iget-object v3, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 259
    .line 260
    invoke-static {v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmTargetNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    iget-object v5, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 265
    .line 266
    invoke-static {v5}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 267
    .line 268
    .line 269
    move-result v5

    .line 270
    if-eq v3, v5, :cond_4

    .line 271
    .line 272
    const-string v3, " "

    .line 273
    .line 274
    goto :goto_1

    .line 275
    :cond_4
    const-string v3, " roaming to "

    .line 276
    .line 277
    :goto_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    if-nez v5, :cond_5

    .line 282
    .line 283
    goto :goto_2

    .line 284
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 285
    .line 286
    invoke-static {v2}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    invoke-virtual {v2, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 299
    .line 300
    new-instance v5, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    const-string v6, "Network connecting : networkId = "

    .line 303
    .line 304
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    iget v6, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 308
    .line 309
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v6, ", config="

    .line 313
    .line 314
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v0

    .line 321
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    .line 323
    .line 324
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    const-string v0, "BSSID= "

    .line 328
    .line 329
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    .line 331
    .line 332
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 339
    .line 340
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmConnectingWatchdogCount(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    iget-object v0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 351
    .line 352
    invoke-static {v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    :cond_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 367
    .line 368
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mnotifyConnectingState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 373
    .line 374
    invoke-static {p1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Landroid/net/NetworkInfo$State;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 379
    .line 380
    if-ne p1, v0, :cond_8

    .line 381
    .line 382
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 383
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    const-string v1, "Network disconnected : networkId = "

    .line 387
    .line 388
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 392
    .line 393
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmLastNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    iget-object v1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 404
    .line 405
    invoke-static {v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmScreenOn(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Z

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 413
    .line 414
    .line 415
    move-result-object v0

    .line 416
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$mlocalLog(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 420
    .line 421
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmTargetNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 422
    .line 423
    .line 424
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 425
    .line 426
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fputmLastNetworkId(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;I)V

    .line 427
    .line 428
    .line 429
    iget-object p1, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 430
    .line 431
    const/4 v0, 0x0

    .line 432
    const/4 v1, 0x0

    .line 433
    invoke-static {p1, v0, v1}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;ZLjava/lang/String;)V

    .line 434
    .line 435
    .line 436
    iget-object p0, p0, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager$3;->this$0:Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;

    .line 437
    .line 438
    invoke-static {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;->-$$Nest$fgetmRoamingWifiInfo(Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingManager;)Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;

    .line 439
    .line 440
    .line 441
    move-result-object p0

    .line 442
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/silentroaming/SilentRoamingWifiInfo;->reset()V

    .line 443
    .line 444
    .line 445
    :cond_8
    return-void
.end method
