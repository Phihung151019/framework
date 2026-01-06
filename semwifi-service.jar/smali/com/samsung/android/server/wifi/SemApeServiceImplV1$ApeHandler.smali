.class Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget v2, v1, Landroid/os/Message;->what:I

    .line 6
    .line 7
    const-string v3, ") "

    .line 8
    .line 9
    const-string v4, "(v"

    .line 10
    .line 11
    const-string v5, "invalid"

    .line 12
    .line 13
    const-string v6, " mTrafficMonitor.mAppInfo.appUid="

    .line 14
    .line 15
    const-string v7, "Primary Wi-Fi ("

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    const/4 v9, 0x0

    .line 19
    const-wide/16 v10, 0x3e8

    .line 20
    .line 21
    const/4 v12, 0x1

    .line 22
    packed-switch v2, :pswitch_data_0

    .line 23
    .line 24
    .line 25
    const-string v0, "Not a option in Switch case: "

    .line 26
    .line 27
    invoke-static {v2, v0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_c

    .line 42
    .line 43
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 44
    .line 45
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_0

    .line 50
    .line 51
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 52
    .line 53
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 58
    .line 59
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 60
    .line 61
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$minitVariables(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 72
    .line 73
    .line 74
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 75
    .line 76
    const-string v2, "VPN Disconnected - APE rule added"

    .line 77
    .line 78
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_0
    const-string v1, "VPN Disconnected - APE no action"

    .line 86
    .line 87
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_0
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 96
    .line 97
    invoke-static {v0, v9}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Z)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-nez v1, :cond_c

    .line 108
    .line 109
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 110
    .line 111
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    if-eqz v1, :cond_1

    .line 116
    .line 117
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 118
    .line 119
    const-string v2, "VPN Connected - APE rule deleted"

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 128
    .line 129
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 141
    .line 142
    const-string v2, "VPN Connected - APE no action"

    .line 143
    .line 144
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    :goto_1
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 151
    .line 152
    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Z)V

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_2
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 157
    .line 158
    iget v1, v1, Landroid/os/Message;->arg1:I

    .line 159
    .line 160
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmCurrentUserId(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V

    .line 161
    .line 162
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v2, "EVENT_USER_SWITCHED: userid="

    .line 166
    .line 167
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 171
    .line 172
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 173
    .line 174
    .line 175
    move-result v0

    .line 176
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 188
    .line 189
    check-cast v1, Ljava/lang/String;

    .line 190
    .line 191
    const-string v2, "EVENT_PRIMARY_IFACE_CHANGED: "

    .line 192
    .line 193
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 201
    .line 202
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$minterfaceChanged(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    return-void

    .line 206
    :pswitch_4
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    .line 208
    check-cast v1, Landroid/net/Network;

    .line 209
    .line 210
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 211
    .line 212
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Landroid/net/ConnectivityManager;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 221
    .line 222
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$mgetIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Landroid/net/Network;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    if-eqz v2, :cond_c

    .line 227
    .line 228
    invoke-virtual {v2, v12}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 229
    .line 230
    .line 231
    move-result v3

    .line 232
    if-eqz v3, :cond_c

    .line 233
    .line 234
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 235
    .line 236
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v1

    .line 244
    if-eqz v1, :cond_c

    .line 245
    .line 246
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    check-cast v1, Landroid/net/wifi/WifiInfo;

    .line 251
    .line 252
    if-eqz v1, :cond_2

    .line 253
    .line 254
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 255
    .line 256
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    .line 257
    .line 258
    .line 259
    move-result v4

    .line 260
    int-to-double v4, v4

    .line 261
    const-wide v6, 0x3fe6666666666666L    # 0.7

    .line 262
    .line 263
    .line 264
    .line 265
    .line 266
    mul-double/2addr v4, v6

    .line 267
    double-to-int v4, v4

    .line 268
    invoke-static {v12, v4}, Ljava/lang/Math;->max(II)I

    .line 269
    .line 270
    .line 271
    move-result v4

    .line 272
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V

    .line 273
    .line 274
    .line 275
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 276
    .line 277
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    .line 278
    .line 279
    .line 280
    move-result v1

    .line 281
    int-to-double v4, v1

    .line 282
    mul-double/2addr v4, v6

    .line 283
    double-to-int v1, v4

    .line 284
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    .line 285
    .line 286
    .line 287
    move-result v1

    .line 288
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V

    .line 289
    .line 290
    .line 291
    :cond_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 292
    .line 293
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmGoogleEstimatedRxBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V

    .line 298
    .line 299
    .line 300
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 301
    .line 302
    invoke-virtual {v2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    .line 303
    .line 304
    .line 305
    move-result v2

    .line 306
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmGoogleEstimatedTxBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V

    .line 307
    .line 308
    .line 309
    new-instance v1, Ljava/lang/StringBuilder;

    .line 310
    .line 311
    const-string v2, "Maximum deducted link capacity (Rx="

    .line 312
    .line 313
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 317
    .line 318
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    .line 324
    .line 325
    const-string v2, " Tx="

    .line 326
    .line 327
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 331
    .line 332
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmMaxTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v3, ") Mbps ("

    .line 340
    .line 341
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 345
    .line 346
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 347
    .line 348
    .line 349
    move-result-object v3

    .line 350
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    const-string v3, ") / Google estimated bandwidth (Rx="

    .line 354
    .line 355
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .line 357
    .line 358
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 359
    .line 360
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmGoogleEstimatedRxBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 361
    .line 362
    .line 363
    move-result v3

    .line 364
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 371
    .line 372
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmGoogleEstimatedTxBandwidth(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 373
    .line 374
    .line 375
    move-result v0

    .line 376
    const-string v2, ") Kbps"

    .line 377
    .line 378
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v0

    .line 382
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    return-void

    .line 386
    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 387
    .line 388
    check-cast v1, Landroid/net/Network;

    .line 389
    .line 390
    invoke-virtual {v1}, Landroid/net/Network;->getNetworkHandle()J

    .line 391
    .line 392
    .line 393
    move-result-wide v1

    .line 394
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 395
    .line 396
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/util/HashMap;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 401
    .line 402
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 403
    .line 404
    .line 405
    move-result-object v4

    .line 406
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    check-cast v3, Ljava/lang/Long;

    .line 411
    .line 412
    if-eqz v3, :cond_3

    .line 413
    .line 414
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 415
    .line 416
    .line 417
    move-result-wide v3

    .line 418
    cmp-long v3, v3, v1

    .line 419
    .line 420
    if-nez v3, :cond_3

    .line 421
    .line 422
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 423
    .line 424
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 425
    .line 426
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object v4

    .line 430
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 431
    .line 432
    .line 433
    move-result-object v1

    .line 434
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 435
    .line 436
    .line 437
    move-result-object v1

    .line 438
    const-string v2, "Wi-Fi disconnected: %s (%x)"

    .line 439
    .line 440
    invoke-static {v3, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v1

    .line 444
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 445
    .line 446
    .line 447
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 448
    .line 449
    invoke-static {v1, v9}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Z)V

    .line 450
    .line 451
    .line 452
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 453
    .line 454
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 455
    .line 456
    .line 457
    move-result-object v1

    .line 458
    if-eqz v1, :cond_c

    .line 459
    .line 460
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 461
    .line 462
    new-instance v2, Ljava/lang/StringBuilder;

    .line 463
    .line 464
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 468
    .line 469
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    const-string v4, ") disconnected"

    .line 474
    .line 475
    invoke-static {v2, v3, v4}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 480
    .line 481
    .line 482
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 483
    .line 484
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 485
    .line 486
    .line 487
    move-result-object v2

    .line 488
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 489
    .line 490
    .line 491
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 492
    .line 493
    .line 494
    return-void

    .line 495
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 496
    .line 497
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v1

    .line 505
    const-string v2, "Wi-Fi disconnected, but ignored for non primary interface (%x)"

    .line 506
    .line 507
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 508
    .line 509
    .line 510
    move-result-object v0

    .line 511
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    return-void

    .line 515
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 516
    .line 517
    check-cast v1, Landroid/net/Network;

    .line 518
    .line 519
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 520
    .line 521
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$mgetIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Landroid/net/Network;)Ljava/lang/String;

    .line 522
    .line 523
    .line 524
    move-result-object v2

    .line 525
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 526
    .line 527
    .line 528
    move-result v3

    .line 529
    if-nez v3, :cond_c

    .line 530
    .line 531
    invoke-virtual {v1}, Landroid/net/Network;->getNetworkHandle()J

    .line 532
    .line 533
    .line 534
    move-result-wide v3

    .line 535
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 536
    .line 537
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/util/HashMap;

    .line 538
    .line 539
    .line 540
    move-result-object v1

    .line 541
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 542
    .line 543
    .line 544
    move-result-object v5

    .line 545
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 546
    .line 547
    .line 548
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 549
    .line 550
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v1

    .line 554
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 555
    .line 556
    .line 557
    move-result v1

    .line 558
    if-eqz v1, :cond_5

    .line 559
    .line 560
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 561
    .line 562
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    filled-new-array {v2, v3}, [Ljava/lang/Object;

    .line 567
    .line 568
    .line 569
    move-result-object v2

    .line 570
    const-string v3, "Wi-Fi connected: %s (%x)"

    .line 571
    .line 572
    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 580
    .line 581
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 582
    .line 583
    .line 584
    move-result v1

    .line 585
    if-nez v1, :cond_4

    .line 586
    .line 587
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 588
    .line 589
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 590
    .line 591
    .line 592
    move-result v1

    .line 593
    if-nez v1, :cond_4

    .line 594
    .line 595
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 596
    .line 597
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    if-eqz v1, :cond_4

    .line 602
    .line 603
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 604
    .line 605
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 606
    .line 607
    .line 608
    move-result-object v1

    .line 609
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$minitVariables(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 610
    .line 611
    .line 612
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 613
    .line 614
    .line 615
    invoke-virtual {v0, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 616
    .line 617
    .line 618
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 619
    .line 620
    new-instance v2, Ljava/lang/StringBuilder;

    .line 621
    .line 622
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 623
    .line 624
    .line 625
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 626
    .line 627
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Ljava/lang/String;

    .line 628
    .line 629
    .line 630
    move-result-object v3

    .line 631
    const-string v4, ") connected"

    .line 632
    .line 633
    invoke-static {v2, v3, v4}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v2

    .line 637
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 638
    .line 639
    .line 640
    :cond_4
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 641
    .line 642
    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Z)V

    .line 643
    .line 644
    .line 645
    return-void

    .line 646
    :cond_5
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 647
    .line 648
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 649
    .line 650
    .line 651
    move-result-object v1

    .line 652
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    move-result-object v1

    .line 656
    const-string v2, "Wi-Fi connected, but ignored for non primary interface: %s (%x)"

    .line 657
    .line 658
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 659
    .line 660
    .line 661
    move-result-object v0

    .line 662
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 663
    .line 664
    .line 665
    return-void

    .line 666
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 667
    .line 668
    const-string v2, "EVENT_STOP: mRulesApplied="

    .line 669
    .line 670
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 671
    .line 672
    .line 673
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 674
    .line 675
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 676
    .line 677
    .line 678
    move-result v2

    .line 679
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 686
    .line 687
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 688
    .line 689
    .line 690
    move-result-object v2

    .line 691
    if-nez v2, :cond_6

    .line 692
    .line 693
    goto :goto_2

    .line 694
    :cond_6
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 695
    .line 696
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 697
    .line 698
    .line 699
    move-result-object v2

    .line 700
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 701
    .line 702
    .line 703
    move-result-object v2

    .line 704
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 705
    .line 706
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 707
    .line 708
    .line 709
    move-result-object v5

    .line 710
    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 711
    .line 712
    .line 713
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 714
    .line 715
    .line 716
    move-result-object v1

    .line 717
    new-instance v2, Ljava/lang/StringBuilder;

    .line 718
    .line 719
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 723
    .line 724
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->VER()Ljava/lang/String;

    .line 725
    .line 726
    .line 727
    move-result-object v4

    .line 728
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 742
    .line 743
    .line 744
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 745
    .line 746
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 747
    .line 748
    .line 749
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 750
    .line 751
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 752
    .line 753
    .line 754
    move-result-object v1

    .line 755
    if-eqz v1, :cond_9

    .line 756
    .line 757
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 758
    .line 759
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 760
    .line 761
    .line 762
    move-result v1

    .line 763
    if-eqz v1, :cond_7

    .line 764
    .line 765
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 766
    .line 767
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 772
    .line 773
    .line 774
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 775
    .line 776
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 777
    .line 778
    .line 779
    move-result-object v2

    .line 780
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 781
    .line 782
    .line 783
    move-result-object v2

    .line 784
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->backgroundBandwidth:I

    .line 785
    .line 786
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 787
    .line 788
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 789
    .line 790
    .line 791
    move-result-object v3

    .line 792
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 793
    .line 794
    .line 795
    move-result-object v3

    .line 796
    iget v3, v3, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 797
    .line 798
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->storeBgBandwidth(II)V

    .line 799
    .line 800
    .line 801
    :cond_7
    iget-object v13, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 802
    .line 803
    invoke-static {v13}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)I

    .line 804
    .line 805
    .line 806
    move-result v1

    .line 807
    if-ne v1, v12, :cond_8

    .line 808
    .line 809
    move v14, v12

    .line 810
    goto :goto_3

    .line 811
    :cond_8
    move v14, v9

    .line 812
    :goto_3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 813
    .line 814
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$fgetmTotalSecondsOfApeEnabled(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)J

    .line 819
    .line 820
    .line 821
    move-result-wide v15

    .line 822
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 823
    .line 824
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$fgetmTotalSecondsOfBackgroundLimited(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)J

    .line 829
    .line 830
    .line 831
    move-result-wide v17

    .line 832
    invoke-virtual/range {v13 .. v18}, Lcom/samsung/android/server/wifi/SemApeService;->updateStatsOnStopped(ZJJ)V

    .line 833
    .line 834
    .line 835
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 836
    .line 837
    invoke-static {v1, v9}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V

    .line 838
    .line 839
    .line 840
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 841
    .line 842
    invoke-static {v1, v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 843
    .line 844
    .line 845
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 846
    .line 847
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemApeService;->stopLiveSession()V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 851
    .line 852
    .line 853
    return-void

    .line 854
    :cond_9
    const-string v0, "EVENT_STOP is called, but mTrafficMonitor is null"

    .line 855
    .line 856
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 857
    .line 858
    .line 859
    return-void

    .line 860
    :pswitch_8
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 861
    .line 862
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 863
    .line 864
    .line 865
    move-result-object v1

    .line 866
    if-eqz v1, :cond_c

    .line 867
    .line 868
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 869
    .line 870
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 871
    .line 872
    .line 873
    move-result-object v1

    .line 874
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$mperiodicFunction(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 878
    .line 879
    .line 880
    invoke-virtual {v0, v12, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 881
    .line 882
    .line 883
    return-void

    .line 884
    :pswitch_9
    iget v2, v1, Landroid/os/Message;->arg1:I

    .line 885
    .line 886
    iget v7, v1, Landroid/os/Message;->arg2:I

    .line 887
    .line 888
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 889
    .line 890
    check-cast v1, Ljava/lang/String;

    .line 891
    .line 892
    new-instance v13, Ljava/lang/StringBuilder;

    .line 893
    .line 894
    const-string v14, "EVENT_START: UID="

    .line 895
    .line 896
    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 897
    .line 898
    .line 899
    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 900
    .line 901
    .line 902
    const-string v14, " package="

    .line 903
    .line 904
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    const-string v14, " type="

    .line 911
    .line 912
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    .line 914
    .line 915
    sget-object v14, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 916
    .line 917
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 918
    .line 919
    .line 920
    move-result-object v15

    .line 921
    filled-new-array {v15}, [Ljava/lang/Object;

    .line 922
    .line 923
    .line 924
    move-result-object v15

    .line 925
    const-string v10, "0x%02X"

    .line 926
    .line 927
    invoke-static {v14, v10, v15}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 928
    .line 929
    .line 930
    move-result-object v10

    .line 931
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 932
    .line 933
    .line 934
    const-string v10, " mRulesApplied="

    .line 935
    .line 936
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    iget-object v10, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 940
    .line 941
    invoke-static {v10}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmRulesApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 942
    .line 943
    .line 944
    move-result v10

    .line 945
    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 946
    .line 947
    .line 948
    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 949
    .line 950
    .line 951
    iget-object v6, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 952
    .line 953
    invoke-static {v6}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 954
    .line 955
    .line 956
    move-result-object v6

    .line 957
    if-nez v6, :cond_a

    .line 958
    .line 959
    goto :goto_4

    .line 960
    :cond_a
    iget-object v5, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 961
    .line 962
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 963
    .line 964
    .line 965
    move-result-object v5

    .line 966
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$fgetmAppInfo(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;

    .line 967
    .line 968
    .line 969
    move-result-object v5

    .line 970
    iget v5, v5, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor$AppInfo;->appUid:I

    .line 971
    .line 972
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 973
    .line 974
    .line 975
    move-result-object v5

    .line 976
    :goto_4
    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 977
    .line 978
    .line 979
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 980
    .line 981
    .line 982
    move-result-object v5

    .line 983
    new-instance v6, Ljava/lang/StringBuilder;

    .line 984
    .line 985
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 986
    .line 987
    .line 988
    iget-object v4, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 989
    .line 990
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->VER()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v4

    .line 994
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    .line 996
    .line 997
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 998
    .line 999
    .line 1000
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    .line 1002
    .line 1003
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1004
    .line 1005
    .line 1006
    move-result-object v3

    .line 1007
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 1008
    .line 1009
    .line 1010
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1011
    .line 1012
    invoke-virtual {v3, v5}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 1013
    .line 1014
    .line 1015
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1016
    .line 1017
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$mrefreshAllowList(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)V

    .line 1018
    .line 1019
    .line 1020
    const/4 v3, -0x1

    .line 1021
    if-le v2, v3, :cond_d

    .line 1022
    .line 1023
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1024
    .line 1025
    invoke-static {v3, v7}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;I)V

    .line 1026
    .line 1027
    .line 1028
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1029
    .line 1030
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 1031
    .line 1032
    .line 1033
    move-result-object v3

    .line 1034
    if-eqz v3, :cond_b

    .line 1035
    .line 1036
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1037
    .line 1038
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 1039
    .line 1040
    .line 1041
    move-result-object v4

    .line 1042
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 1043
    .line 1044
    .line 1045
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1046
    .line 1047
    invoke-static {v3, v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 1048
    .line 1049
    .line 1050
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1051
    .line 1052
    .line 1053
    :cond_b
    iget-object v3, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1054
    .line 1055
    new-instance v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 1056
    .line 1057
    invoke-direct {v4, v2, v9, v3, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;-><init>(IILcom/samsung/android/server/wifi/SemApeServiceImplV1;Ljava/lang/String;)V

    .line 1058
    .line 1059
    .line 1060
    invoke-static {v3, v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fputmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 1061
    .line 1062
    .line 1063
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1064
    .line 1065
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;

    .line 1066
    .line 1067
    .line 1068
    move-result-object v2

    .line 1069
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;->-$$Nest$minitVariables(Lcom/samsung/android/server/wifi/SemApeServiceImplV1$TrafficMonitor;)V

    .line 1070
    .line 1071
    .line 1072
    iget-object v2, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1073
    .line 1074
    invoke-virtual {v2, v1}, Lcom/samsung/android/server/wifi/SemApeService;->startLiveSession(Ljava/lang/String;)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v0, v12}, Landroid/os/Handler;->removeMessages(I)V

    .line 1078
    .line 1079
    .line 1080
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1081
    .line 1082
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 1083
    .line 1084
    .line 1085
    move-result v1

    .line 1086
    if-eqz v1, :cond_c

    .line 1087
    .line 1088
    iget-object v1, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV1;

    .line 1089
    .line 1090
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1;->-$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV1;)Z

    .line 1091
    .line 1092
    .line 1093
    move-result v1

    .line 1094
    if-nez v1, :cond_c

    .line 1095
    .line 1096
    const-wide/16 v1, 0x3e8

    .line 1097
    .line 1098
    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1099
    .line 1100
    .line 1101
    :cond_c
    return-void

    .line 1102
    :cond_d
    const-string v0, "The UID is NOT fetched from the SemApeController"

    .line 1103
    .line 1104
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 1105
    .line 1106
    .line 1107
    return-void

    .line 1108
    nop

    .line 1109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
