.class Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Landroid/net/NetworkInfo$State;

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
    const/4 v2, 0x0

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Landroid/net/NetworkInfo$State;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 21
    .line 22
    if-ne p1, v0, :cond_4

    .line 23
    .line 24
    iget-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 25
    .line 26
    invoke-static {p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Landroid/net/wifi/WifiInfo;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_4

    .line 41
    .line 42
    if-eqz p1, :cond_4

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-nez v1, :cond_4

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string v3, "Wi-Fi Roam Event - from "

    .line 61
    .line 62
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v3, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 66
    .line 67
    invoke-static {v3}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v3, v0}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v0, " to "

    .line 83
    .line 84
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 109
    .line 110
    const/4 v0, 0x3

    .line 111
    invoke-virtual {p0, v0, v2, v2, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;Landroid/net/NetworkInfo$State;)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Landroid/net/NetworkInfo$State;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 131
    .line 132
    const-string v1, "WifiRouterInfoCollector"

    .line 133
    .line 134
    const/4 v3, -0x1

    .line 135
    if-ne p1, v0, :cond_2

    .line 136
    .line 137
    iget-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 138
    .line 139
    invoke-static {p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-eqz p1, :cond_4

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eq v0, v3, :cond_4

    .line 154
    .line 155
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 156
    .line 157
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 162
    .line 163
    .line 164
    move-result v2

    .line 165
    invoke-virtual {v0, v2}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    if-eqz v0, :cond_4

    .line 170
    .line 171
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 172
    .line 173
    iget v3, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 174
    .line 175
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmLastNetworkId(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    if-nez v2, :cond_1

    .line 183
    .line 184
    const-string v2, "<none>"

    .line 185
    .line 186
    goto :goto_0

    .line 187
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 188
    .line 189
    invoke-static {v2}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v3

    .line 197
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v3

    .line 205
    new-instance v4, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    const-string v5, "Network connected : networkId = "

    .line 208
    .line 209
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 213
    .line 214
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    const-string v0, ", configKey= "

    .line 218
    .line 219
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .line 224
    .line 225
    const-string v0, ", BSSID= "

    .line 226
    .line 227
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v0, ", frequency= "

    .line 234
    .line 235
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 239
    .line 240
    .line 241
    move-result p1

    .line 242
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object p1

    .line 249
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .line 251
    .line 252
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 253
    .line 254
    const/4 p1, 0x1

    .line 255
    invoke-static {p0, p1, v3}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;ZLjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    return-void

    .line 259
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 260
    .line 261
    invoke-static {p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Landroid/net/NetworkInfo$State;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 266
    .line 267
    if-ne p1, v0, :cond_4

    .line 268
    .line 269
    iget-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 270
    .line 271
    invoke-static {p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)Z

    .line 272
    .line 273
    .line 274
    move-result p1

    .line 275
    if-eqz p1, :cond_3

    .line 276
    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    const-string v0, "Network disconnected : networkId = "

    .line 280
    .line 281
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object v0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 285
    .line 286
    invoke-static {v0}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fgetmLastNetworkId(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;)I

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    .line 299
    .line 300
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 301
    .line 302
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$fputmLastNetworkId(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;I)V

    .line 303
    .line 304
    .line 305
    iget-object p0, p0, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector$1;->this$0:Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;

    .line 306
    .line 307
    const/4 p1, 0x0

    .line 308
    invoke-static {p0, v2, p1}, Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;->-$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/routerinfo/WifiRouterInfoCollector;ZLjava/lang/String;)V

    .line 309
    .line 310
    .line 311
    :cond_4
    return-void
.end method
