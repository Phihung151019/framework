.class Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiNetworkStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

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
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/NetworkInfo$State;

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
    const-string v3, "]"

    .line 13
    .line 14
    const-string v4, "MHz / "

    .line 15
    .line 16
    const-string v5, " ["

    .line 17
    .line 18
    if-ne v0, v1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/NetworkInfo$State;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 27
    .line 28
    if-ne p1, v0, :cond_6

    .line 29
    .line 30
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 41
    .line 42
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_6

    .line 47
    .line 48
    if-eqz p1, :cond_6

    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 51
    .line 52
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_6

    .line 69
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v1, "Wi-Fi Roam Event - from "

    .line 73
    .line 74
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 84
    .line 85
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v6

    .line 93
    invoke-virtual {v1, v6}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 104
    .line 105
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 120
    .line 121
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$smwifiStandardToString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    const-string v1, "] to "

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 142
    .line 143
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v1, v6}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$smwifiStandardToString(I)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v0, p1, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 184
    .line 185
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->localLog(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 189
    .line 190
    const/4 v0, 0x5

    .line 191
    invoke-virtual {p0, v0, v2, v2, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmLastNetworkState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/NetworkInfo$State;)V

    .line 202
    .line 203
    .line 204
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 205
    .line 206
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    const-string v0, "SemWifiUsageMonitor"

    .line 211
    .line 212
    if-eqz p1, :cond_1

    .line 213
    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    .line 215
    .line 216
    const-string v1, "NetworkStateChanged: "

    .line 217
    .line 218
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 222
    .line 223
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/NetworkInfo$State;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    .line 236
    .line 237
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 238
    .line 239
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/NetworkInfo$State;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    .line 244
    .line 245
    const/4 v6, -0x1

    .line 246
    const-string v7, " "

    .line 247
    .line 248
    if-ne p1, v1, :cond_3

    .line 249
    .line 250
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 251
    .line 252
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    if-eqz p1, :cond_6

    .line 261
    .line 262
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 263
    .line 264
    .line 265
    move-result v0

    .line 266
    if-eq v0, v6, :cond_6

    .line 267
    .line 268
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 269
    .line 270
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiConfigManager(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiConfigManager;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiConfigManager;->getSavedNetwork(I)Landroid/net/wifi/WifiConfiguration;

    .line 279
    .line 280
    .line 281
    move-result-object v0

    .line 282
    if-eqz v0, :cond_6

    .line 283
    .line 284
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 285
    .line 286
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 287
    .line 288
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmLastNetworkId(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;I)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    if-nez v1, :cond_2

    .line 296
    .line 297
    const-string v1, "<none>"

    .line 298
    .line 299
    goto :goto_0

    .line 300
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 301
    .line 302
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v2

    .line 310
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v1

    .line 314
    :goto_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 319
    .line 320
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 321
    .line 322
    .line 323
    move-result-object v8

    .line 324
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCurrentNetwork()Landroid/net/Network;

    .line 325
    .line 326
    .line 327
    move-result-object v8

    .line 328
    invoke-static {v6, v8}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmNetwork(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;Landroid/net/Network;)V

    .line 329
    .line 330
    .line 331
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 332
    .line 333
    iget v8, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 334
    .line 335
    new-instance v9, Ljava/lang/StringBuilder;

    .line 336
    .line 337
    const-string v10, "Network connected : networkId = "

    .line 338
    .line 339
    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 343
    .line 344
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    const-string v0, ", configKey= "

    .line 348
    .line 349
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    .line 354
    .line 355
    const-string v0, ", BSSID= "

    .line 356
    .line 357
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    const-string v0, ", frequency= "

    .line 364
    .line 365
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 369
    .line 370
    .line 371
    move-result v0

    .line 372
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v0

    .line 379
    invoke-virtual {v6, v8, v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->localLog(ILjava/lang/String;)V

    .line 380
    .line 381
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    .line 383
    .line 384
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 400
    .line 401
    .line 402
    move-result v1

    .line 403
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 404
    .line 405
    .line 406
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    .line 408
    .line 409
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$smwifiStandardToString(I)Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-static {v0, p1, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object p1

    .line 421
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 422
    .line 423
    const/4 v0, 0x1

    .line 424
    invoke-static {p0, v0, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;ZLjava/lang/String;)V

    .line 425
    .line 426
    .line 427
    return-void

    .line 428
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 429
    .line 430
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastNetworkState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/NetworkInfo$State;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 435
    .line 436
    if-ne p1, v1, :cond_6

    .line 437
    .line 438
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 439
    .line 440
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmVerboseLoggingEnabled(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Z

    .line 441
    .line 442
    .line 443
    move-result p1

    .line 444
    const-string v1, "Network disconnected : networkId = "

    .line 445
    .line 446
    if-eqz p1, :cond_4

    .line 447
    .line 448
    new-instance p1, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    iget-object v8, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 454
    .line 455
    invoke-static {v8}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastNetworkId(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)I

    .line 456
    .line 457
    .line 458
    move-result v8

    .line 459
    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 460
    .line 461
    .line 462
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    .line 468
    .line 469
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 470
    .line 471
    invoke-static {p1, v6}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fputmLastNetworkId(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;I)V

    .line 472
    .line 473
    .line 474
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 475
    .line 476
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    if-eqz p1, :cond_5

    .line 481
    .line 482
    new-instance p1, Ljava/lang/StringBuilder;

    .line 483
    .line 484
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 485
    .line 486
    .line 487
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 488
    .line 489
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkKey()Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 504
    .line 505
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetlogUtils(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Lcom/samsung/android/server/wifi/util/LogUtils;

    .line 506
    .line 507
    .line 508
    move-result-object v0

    .line 509
    iget-object v6, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 510
    .line 511
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 512
    .line 513
    .line 514
    move-result-object v6

    .line 515
    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 516
    .line 517
    .line 518
    move-result-object v6

    .line 519
    invoke-virtual {v0, v6}, Lcom/samsung/android/server/wifi/util/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 530
    .line 531
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 532
    .line 533
    .line 534
    move-result-object v0

    .line 535
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    .line 544
    .line 545
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 546
    .line 547
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)Landroid/net/wifi/WifiInfo;

    .line 548
    .line 549
    .line 550
    move-result-object v0

    .line 551
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    .line 552
    .line 553
    .line 554
    move-result v0

    .line 555
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$smwifiStandardToString(I)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {p1, v0, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    goto :goto_1

    .line 564
    :cond_5
    const/4 p1, 0x0

    .line 565
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 566
    .line 567
    new-instance v3, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 570
    .line 571
    .line 572
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 573
    .line 574
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$fgetmLastNetworkId(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;)I

    .line 575
    .line 576
    .line 577
    move-result v1

    .line 578
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 579
    .line 580
    .line 581
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v1

    .line 591
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->localLog(Ljava/lang/String;)V

    .line 592
    .line 593
    .line 594
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor$1;->this$0:Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;

    .line 595
    .line 596
    invoke-static {p0, v2, p1}, Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;->-$$Nest$msetWifiNetworkState(Lcom/samsung/android/server/wifi/SemWifiUsageMonitor;ZLjava/lang/String;)V

    .line 597
    .line 598
    .line 599
    :cond_6
    return-void
.end method
