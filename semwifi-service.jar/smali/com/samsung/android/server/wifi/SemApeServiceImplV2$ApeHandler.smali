.class Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/SemApeServiceImplV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

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
    .locals 14

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, ") "

    .line 5
    .line 6
    const-string v3, "(v"

    .line 7
    .line 8
    const-string v4, "invalid"

    .line 9
    .line 10
    const-string v5, " mTrafficMonitor.uid="

    .line 11
    .line 12
    const-string v6, "Primary Wi-Fi ("

    .line 13
    .line 14
    const-wide/16 v7, 0x3e8

    .line 15
    .line 16
    const/4 v9, 0x0

    .line 17
    const/4 v10, 0x1

    .line 18
    packed-switch v0, :pswitch_data_0

    .line 19
    .line 20
    .line 21
    const-string p0, "Not a option in Switch case: "

    .line 22
    .line 23
    invoke-static {v0, p0}, Lcom/samsung/android/mcf/continuity/common/VersionUtil$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 32
    .line 33
    instance-of v0, v0, Ljava/util/HashSet;

    .line 34
    .line 35
    if-eqz v0, :cond_f

    .line 36
    .line 37
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmStreamingUidList(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/util/HashSet;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    .line 48
    check-cast p1, Ljava/util/HashSet;

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_f

    .line 59
    .line 60
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    instance-of v1, v0, Ljava/lang/Integer;

    .line 65
    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 69
    .line 70
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmStreamingUidList(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/util/HashSet;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v0, Ljava/lang/Integer;

    .line 75
    .line 76
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_f

    .line 87
    .line 88
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 97
    .line 98
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    if-eqz p1, :cond_1

    .line 103
    .line 104
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->init()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0, v10, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 120
    .line 121
    const-string v0, "VPN Disconnected - APE rule added"

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    goto :goto_1

    .line 130
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 131
    .line 132
    const-string v0, "VPN Disconnected - APE no action"

    .line 133
    .line 134
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 141
    .line 142
    invoke-static {p0, v9}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 147
    .line 148
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 149
    .line 150
    .line 151
    move-result p1

    .line 152
    if-nez p1, :cond_f

    .line 153
    .line 154
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 155
    .line 156
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-eqz p1, :cond_2

    .line 161
    .line 162
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 163
    .line 164
    const-string v0, "VPN Connected - APE rule deleted"

    .line 165
    .line 166
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 173
    .line 174
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 182
    .line 183
    .line 184
    goto :goto_2

    .line 185
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 186
    .line 187
    const-string v0, "VPN Connected - APE no action"

    .line 188
    .line 189
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 196
    .line 197
    invoke-static {p0, v10}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V

    .line 198
    .line 199
    .line 200
    return-void

    .line 201
    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 202
    .line 203
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 204
    .line 205
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmCurrentUserId(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 206
    .line 207
    .line 208
    new-instance p1, Ljava/lang/StringBuilder;

    .line 209
    .line 210
    const-string v0, "EVENT_USER_SWITCHED: userid="

    .line 211
    .line 212
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    .line 214
    .line 215
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 216
    .line 217
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmCurrentUserId(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 218
    .line 219
    .line 220
    move-result p0

    .line 221
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p0

    .line 228
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    return-void

    .line 232
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 233
    .line 234
    check-cast p1, Ljava/lang/String;

    .line 235
    .line 236
    const-string v0, "EVENT_PRIMARY_IFACE_CHANGED: "

    .line 237
    .line 238
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logv(Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 246
    .line 247
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$minterfaceChanged(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    return-void

    .line 251
    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 252
    .line 253
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mcheckMloConnection(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V

    .line 254
    .line 255
    .line 256
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 257
    .line 258
    check-cast p1, Landroid/net/Network;

    .line 259
    .line 260
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 261
    .line 262
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmConnectivityManager(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Landroid/net/ConnectivityManager;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 271
    .line 272
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mgetIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Landroid/net/Network;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    if-eqz v0, :cond_f

    .line 277
    .line 278
    invoke-virtual {v0, v10}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    .line 279
    .line 280
    .line 281
    move-result v1

    .line 282
    if-eqz v1, :cond_f

    .line 283
    .line 284
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 285
    .line 286
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result p1

    .line 294
    if-eqz p1, :cond_f

    .line 295
    .line 296
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    .line 297
    .line 298
    .line 299
    move-result-object p1

    .line 300
    check-cast p1, Landroid/net/wifi/WifiInfo;

    .line 301
    .line 302
    if-eqz p1, :cond_3

    .line 303
    .line 304
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 305
    .line 306
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRxLinkSpeedMbps()I

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    int-to-double v2, v2

    .line 311
    const-wide v4, 0x3fe6666666666666L    # 0.7

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    mul-double/2addr v2, v4

    .line 317
    double-to-int v2, v2

    .line 318
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 323
    .line 324
    .line 325
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 326
    .line 327
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getTxLinkSpeedMbps()I

    .line 328
    .line 329
    .line 330
    move-result v2

    .line 331
    int-to-double v2, v2

    .line 332
    mul-double/2addr v2, v4

    .line 333
    double-to-int v2, v2

    .line 334
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 339
    .line 340
    .line 341
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 342
    .line 343
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 344
    .line 345
    .line 346
    move-result v2

    .line 347
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 348
    .line 349
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 350
    .line 351
    .line 352
    move-result v3

    .line 353
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 354
    .line 355
    .line 356
    move-result v2

    .line 357
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmMinLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 358
    .line 359
    .line 360
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 361
    .line 362
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    .line 363
    .line 364
    .line 365
    move-result v2

    .line 366
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->is24GHz()Z

    .line 370
    .line 371
    .line 372
    move-result v9

    .line 373
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 374
    .line 375
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    .line 376
    .line 377
    .line 378
    move-result v1

    .line 379
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 380
    .line 381
    .line 382
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 383
    .line 384
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    .line 385
    .line 386
    .line 387
    move-result v0

    .line 388
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmTxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 389
    .line 390
    .line 391
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 392
    .line 393
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mupdateLinkStat(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V

    .line 394
    .line 395
    .line 396
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 397
    .line 398
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 403
    .line 404
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    invoke-static {p1, v0, v9, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$misSpeedGoogleApiDefaultValue(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;IZI)Z

    .line 409
    .line 410
    .line 411
    move-result v0

    .line 412
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmIsRxSpeedGoogleApiDefaultValue(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V

    .line 413
    .line 414
    .line 415
    new-instance p1, Ljava/lang/StringBuilder;

    .line 416
    .line 417
    const-string v0, "Deducted link capacity (M: R="

    .line 418
    .line 419
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 423
    .line 424
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    .line 430
    .line 431
    const-string v0, " T="

    .line 432
    .line 433
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 437
    .line 438
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTxLinkSpeed(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 439
    .line 440
    .line 441
    move-result v1

    .line 442
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    const-string v1, ") on ("

    .line 446
    .line 447
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 451
    .line 452
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 453
    .line 454
    .line 455
    move-result-object v1

    .line 456
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    const-string v1, ") GoogleAPI(M: R="

    .line 460
    .line 461
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    .line 463
    .line 464
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 465
    .line 466
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmRxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    div-int/lit16 v1, v1, 0x3e8

    .line 471
    .line 472
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 473
    .line 474
    .line 475
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    .line 477
    .line 478
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 479
    .line 480
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTxSpeedGoogleApi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 481
    .line 482
    .line 483
    move-result v0

    .line 484
    div-int/lit16 v0, v0, 0x3e8

    .line 485
    .line 486
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    const-string v0, ") RSSI="

    .line 490
    .line 491
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 495
    .line 496
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmCurrentRssi(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 497
    .line 498
    .line 499
    move-result v0

    .line 500
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    const-string v0, " isDefault="

    .line 504
    .line 505
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 509
    .line 510
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRxSpeedGoogleApiDefaultValue(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 511
    .line 512
    .line 513
    move-result v0

    .line 514
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    const-string v0, " isMlo="

    .line 518
    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    .line 521
    .line 522
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 523
    .line 524
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsMloConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 525
    .line 526
    .line 527
    move-result p0

    .line 528
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object p0

    .line 535
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    return-void

    .line 539
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 540
    .line 541
    check-cast p1, Landroid/net/Network;

    .line 542
    .line 543
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    .line 544
    .line 545
    .line 546
    move-result-wide v0

    .line 547
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 548
    .line 549
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/util/HashMap;

    .line 550
    .line 551
    .line 552
    move-result-object p1

    .line 553
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 554
    .line 555
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v2

    .line 559
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    .line 561
    .line 562
    move-result-object p1

    .line 563
    check-cast p1, Ljava/lang/Long;

    .line 564
    .line 565
    if-eqz p1, :cond_4

    .line 566
    .line 567
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 568
    .line 569
    .line 570
    move-result-wide v2

    .line 571
    cmp-long p1, v2, v0

    .line 572
    .line 573
    if-nez p1, :cond_4

    .line 574
    .line 575
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 576
    .line 577
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 578
    .line 579
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 580
    .line 581
    .line 582
    move-result-object v2

    .line 583
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 588
    .line 589
    .line 590
    move-result-object v0

    .line 591
    const-string v1, "Wi-Fi disconnected: %s (%x)"

    .line 592
    .line 593
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object p1

    .line 597
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 598
    .line 599
    .line 600
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 601
    .line 602
    invoke-static {p1, v9}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V

    .line 603
    .line 604
    .line 605
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 606
    .line 607
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 608
    .line 609
    .line 610
    move-result-object p1

    .line 611
    if-eqz p1, :cond_f

    .line 612
    .line 613
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 614
    .line 615
    new-instance v0, Ljava/lang/StringBuilder;

    .line 616
    .line 617
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 621
    .line 622
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 623
    .line 624
    .line 625
    move-result-object v1

    .line 626
    const-string v2, ") disconnected"

    .line 627
    .line 628
    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 633
    .line 634
    .line 635
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 636
    .line 637
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 638
    .line 639
    .line 640
    move-result-object v0

    .line 641
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;)V

    .line 642
    .line 643
    .line 644
    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 645
    .line 646
    .line 647
    return-void

    .line 648
    :cond_4
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 649
    .line 650
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 651
    .line 652
    .line 653
    move-result-object p1

    .line 654
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 655
    .line 656
    .line 657
    move-result-object p1

    .line 658
    const-string v0, "Wi-Fi disconnected, but ignored for non primary interface (%x)"

    .line 659
    .line 660
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object p0

    .line 664
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    return-void

    .line 668
    :pswitch_7
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 669
    .line 670
    check-cast p1, Landroid/net/Network;

    .line 671
    .line 672
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 673
    .line 674
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mgetIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Landroid/net/Network;)Ljava/lang/String;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 679
    .line 680
    .line 681
    move-result v1

    .line 682
    if-nez v1, :cond_f

    .line 683
    .line 684
    invoke-virtual {p1}, Landroid/net/Network;->getNetworkHandle()J

    .line 685
    .line 686
    .line 687
    move-result-wide v1

    .line 688
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 689
    .line 690
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIfaceHandleMap(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/util/HashMap;

    .line 691
    .line 692
    .line 693
    move-result-object p1

    .line 694
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 695
    .line 696
    .line 697
    move-result-object v3

    .line 698
    invoke-virtual {p1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    .line 700
    .line 701
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 702
    .line 703
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 704
    .line 705
    .line 706
    move-result-object p1

    .line 707
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 708
    .line 709
    .line 710
    move-result p1

    .line 711
    if-eqz p1, :cond_6

    .line 712
    .line 713
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 714
    .line 715
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mcheckMloConnection(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V

    .line 716
    .line 717
    .line 718
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 719
    .line 720
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 721
    .line 722
    .line 723
    move-result-object v1

    .line 724
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 725
    .line 726
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsMloConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 727
    .line 728
    .line 729
    move-result v2

    .line 730
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 731
    .line 732
    .line 733
    move-result-object v2

    .line 734
    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    move-result-object v0

    .line 738
    const-string v1, "Wi-Fi connected: %s (%x) isMlo=%b"

    .line 739
    .line 740
    invoke-static {p1, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object p1

    .line 744
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 745
    .line 746
    .line 747
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 748
    .line 749
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 750
    .line 751
    .line 752
    move-result p1

    .line 753
    if-nez p1, :cond_5

    .line 754
    .line 755
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 756
    .line 757
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 758
    .line 759
    .line 760
    move-result p1

    .line 761
    if-nez p1, :cond_5

    .line 762
    .line 763
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 764
    .line 765
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 766
    .line 767
    .line 768
    move-result-object p1

    .line 769
    if-eqz p1, :cond_5

    .line 770
    .line 771
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 772
    .line 773
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 774
    .line 775
    .line 776
    move-result-object p1

    .line 777
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->init()V

    .line 778
    .line 779
    .line 780
    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 781
    .line 782
    .line 783
    invoke-virtual {p0, v10, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 784
    .line 785
    .line 786
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 787
    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    .line 789
    .line 790
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 791
    .line 792
    .line 793
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 794
    .line 795
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmPrimaryIfaceName(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Ljava/lang/String;

    .line 796
    .line 797
    .line 798
    move-result-object v1

    .line 799
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    .line 801
    .line 802
    const-string v1, ") connected, isMlo="

    .line 803
    .line 804
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 808
    .line 809
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsMloConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 810
    .line 811
    .line 812
    move-result v1

    .line 813
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v0

    .line 820
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    :cond_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 824
    .line 825
    invoke-static {p0, v10}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Z)V

    .line 826
    .line 827
    .line 828
    return-void

    .line 829
    :cond_6
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 830
    .line 831
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 832
    .line 833
    .line 834
    move-result-object p1

    .line 835
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 836
    .line 837
    .line 838
    move-result-object p1

    .line 839
    const-string v0, "Wi-Fi connected, but ignored for non primary interface: %s (%x)"

    .line 840
    .line 841
    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 842
    .line 843
    .line 844
    move-result-object p0

    .line 845
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->logd(Ljava/lang/String;)V

    .line 846
    .line 847
    .line 848
    return-void

    .line 849
    :pswitch_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 850
    .line 851
    const-string v0, "EVENT_STOP: mIsRuleApplied="

    .line 852
    .line 853
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 854
    .line 855
    .line 856
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 857
    .line 858
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 859
    .line 860
    .line 861
    move-result v0

    .line 862
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 869
    .line 870
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 871
    .line 872
    .line 873
    move-result-object v0

    .line 874
    if-nez v0, :cond_7

    .line 875
    .line 876
    goto :goto_3

    .line 877
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 878
    .line 879
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 884
    .line 885
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 886
    .line 887
    .line 888
    move-result-object v4

    .line 889
    :goto_3
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 890
    .line 891
    .line 892
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 893
    .line 894
    .line 895
    move-result-object p1

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    .line 897
    .line 898
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 899
    .line 900
    .line 901
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 902
    .line 903
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->VER()Ljava/lang/String;

    .line 904
    .line 905
    .line 906
    move-result-object v3

    .line 907
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 917
    .line 918
    .line 919
    move-result-object v0

    .line 920
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 924
    .line 925
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 926
    .line 927
    .line 928
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 929
    .line 930
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 931
    .line 932
    .line 933
    move-result-object p1

    .line 934
    if-eqz p1, :cond_a

    .line 935
    .line 936
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 937
    .line 938
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 939
    .line 940
    .line 941
    move-result-object p1

    .line 942
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 943
    .line 944
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    iget-object v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mPackageName:Ljava/lang/String;

    .line 949
    .line 950
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 951
    .line 952
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 953
    .line 954
    .line 955
    move-result-object v2

    .line 956
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTimer:I

    .line 957
    .line 958
    invoke-virtual {p1, v0, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->createCsvFile(Ljava/lang/String;I)Z

    .line 959
    .line 960
    .line 961
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 962
    .line 963
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 964
    .line 965
    .line 966
    move-result p1

    .line 967
    if-eqz p1, :cond_8

    .line 968
    .line 969
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 970
    .line 971
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 972
    .line 973
    .line 974
    move-result-object v0

    .line 975
    invoke-static {p1, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;)V

    .line 976
    .line 977
    .line 978
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 979
    .line 980
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 981
    .line 982
    .line 983
    move-result-object v0

    .line 984
    iget v0, v0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mNrtAlloc:I

    .line 985
    .line 986
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 987
    .line 988
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 989
    .line 990
    .line 991
    move-result-object v2

    .line 992
    iget v2, v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 993
    .line 994
    invoke-static {p1, v0, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mstoreNrtAlloc(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;II)V

    .line 995
    .line 996
    .line 997
    :cond_8
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 998
    .line 999
    invoke-static {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)I

    .line 1000
    .line 1001
    .line 1002
    move-result p1

    .line 1003
    if-ne p1, v10, :cond_9

    .line 1004
    .line 1005
    move v4, v10

    .line 1006
    goto :goto_4

    .line 1007
    :cond_9
    move v4, v9

    .line 1008
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1009
    .line 1010
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 1011
    .line 1012
    .line 1013
    move-result-object p1

    .line 1014
    iget-wide v5, p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTotalSecondsOfApeEnabled:J

    .line 1015
    .line 1016
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1017
    .line 1018
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 1019
    .line 1020
    .line 1021
    move-result-object p1

    .line 1022
    iget-wide v7, p1, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mTotalSecondsOfNrtLimited:J

    .line 1023
    .line 1024
    invoke-virtual/range {v3 .. v8}, Lcom/samsung/android/server/wifi/SemApeService;->updateStatsOnStopped(ZJJ)V

    .line 1025
    .line 1026
    .line 1027
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1028
    .line 1029
    invoke-static {p1, v9}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 1030
    .line 1031
    .line 1032
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1033
    .line 1034
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;)V

    .line 1035
    .line 1036
    .line 1037
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1038
    .line 1039
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemApeService;->stopLiveSession()V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1043
    .line 1044
    .line 1045
    return-void

    .line 1046
    :cond_a
    const-string p0, "EVENT_STOP is called, but mTrafficMonitor is null"

    .line 1047
    .line 1048
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 1049
    .line 1050
    .line 1051
    return-void

    .line 1052
    :pswitch_9
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1053
    .line 1054
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 1055
    .line 1056
    .line 1057
    move-result-object p1

    .line 1058
    if-eqz p1, :cond_f

    .line 1059
    .line 1060
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1061
    .line 1062
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mupdateLinkStat(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V

    .line 1063
    .line 1064
    .line 1065
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1066
    .line 1067
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 1068
    .line 1069
    .line 1070
    move-result-object p1

    .line 1071
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->periodicFunction()V

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {p0, v10, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1078
    .line 1079
    .line 1080
    return-void

    .line 1081
    :pswitch_a
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1082
    .line 1083
    iget v6, p1, Landroid/os/Message;->arg2:I

    .line 1084
    .line 1085
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1086
    .line 1087
    check-cast p1, Ljava/lang/String;

    .line 1088
    .line 1089
    new-instance v9, Ljava/lang/StringBuilder;

    .line 1090
    .line 1091
    const-string v11, "EVENT_START: UID="

    .line 1092
    .line 1093
    invoke-direct {v9, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1094
    .line 1095
    .line 1096
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1097
    .line 1098
    .line 1099
    const-string v11, " package="

    .line 1100
    .line 1101
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1102
    .line 1103
    .line 1104
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1105
    .line 1106
    .line 1107
    const-string v11, " type="

    .line 1108
    .line 1109
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    .line 1111
    .line 1112
    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 1113
    .line 1114
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1115
    .line 1116
    .line 1117
    move-result-object v12

    .line 1118
    filled-new-array {v12}, [Ljava/lang/Object;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v12

    .line 1122
    const-string v13, "0x%02X"

    .line 1123
    .line 1124
    invoke-static {v11, v13, v12}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 1125
    .line 1126
    .line 1127
    move-result-object v11

    .line 1128
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    .line 1131
    const-string v11, " mIsRuleApplied="

    .line 1132
    .line 1133
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    .line 1135
    .line 1136
    iget-object v11, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1137
    .line 1138
    invoke-static {v11}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsRuleApplied(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 1139
    .line 1140
    .line 1141
    move-result v11

    .line 1142
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    .line 1147
    .line 1148
    iget-object v5, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1149
    .line 1150
    invoke-static {v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 1151
    .line 1152
    .line 1153
    move-result-object v5

    .line 1154
    if-nez v5, :cond_b

    .line 1155
    .line 1156
    goto :goto_5

    .line 1157
    :cond_b
    iget-object v4, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1158
    .line 1159
    invoke-static {v4}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 1160
    .line 1161
    .line 1162
    move-result-object v4

    .line 1163
    iget v4, v4, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->mUid:I

    .line 1164
    .line 1165
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v4

    .line 1169
    :goto_5
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1170
    .line 1171
    .line 1172
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1173
    .line 1174
    .line 1175
    move-result-object v4

    .line 1176
    new-instance v5, Ljava/lang/StringBuilder;

    .line 1177
    .line 1178
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1182
    .line 1183
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->VER()Ljava/lang/String;

    .line 1184
    .line 1185
    .line 1186
    move-result-object v3

    .line 1187
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1188
    .line 1189
    .line 1190
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    .line 1192
    .line 1193
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    .line 1195
    .line 1196
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1197
    .line 1198
    .line 1199
    move-result-object v2

    .line 1200
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeService;->logi(Ljava/lang/String;)V

    .line 1201
    .line 1202
    .line 1203
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1204
    .line 1205
    invoke-virtual {v2, v4}, Lcom/samsung/android/server/wifi/SemApeService;->recordHistory(Ljava/lang/String;)V

    .line 1206
    .line 1207
    .line 1208
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1209
    .line 1210
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mrefreshAllowList(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)V

    .line 1211
    .line 1212
    .line 1213
    const/4 v2, -0x1

    .line 1214
    if-le v0, v2, :cond_10

    .line 1215
    .line 1216
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1217
    .line 1218
    invoke-static {v2, v6}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmCurrentAppType(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;I)V

    .line 1219
    .line 1220
    .line 1221
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1222
    .line 1223
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 1224
    .line 1225
    .line 1226
    move-result-object v2

    .line 1227
    if-eqz v2, :cond_c

    .line 1228
    .line 1229
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1230
    .line 1231
    invoke-static {v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v3

    .line 1235
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$mremoveApeRules(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;)V

    .line 1236
    .line 1237
    .line 1238
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1239
    .line 1240
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;)V

    .line 1241
    .line 1242
    .line 1243
    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1244
    .line 1245
    .line 1246
    :cond_c
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1247
    .line 1248
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 1249
    .line 1250
    .line 1251
    move-result-object v1

    .line 1252
    if-eqz v1, :cond_d

    .line 1253
    .line 1254
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1255
    .line 1256
    invoke-static {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmDebugLogger(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;

    .line 1257
    .line 1258
    .line 1259
    move-result-object v1

    .line 1260
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$DebugLogger;->init()V

    .line 1261
    .line 1262
    .line 1263
    :cond_d
    if-eqz p1, :cond_f

    .line 1264
    .line 1265
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1266
    .line 1267
    invoke-static {p1}, Lcom/samsung/android/server/wifi/util/WifiUtils;->isGamePackage(Ljava/lang/String;)Z

    .line 1268
    .line 1269
    .line 1270
    move-result v2

    .line 1271
    if-eqz v2, :cond_e

    .line 1272
    .line 1273
    new-instance v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;

    .line 1274
    .line 1275
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1276
    .line 1277
    invoke-direct {v2, v3, v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$GameMonitor;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;ILjava/lang/String;)V

    .line 1278
    .line 1279
    .line 1280
    goto :goto_6

    .line 1281
    :cond_e
    new-instance v2, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;

    .line 1282
    .line 1283
    iget-object v3, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1284
    .line 1285
    invoke-direct {v2, v3, v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$VoipMonitor;-><init>(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;ILjava/lang/String;)V

    .line 1286
    .line 1287
    .line 1288
    :goto_6
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fputmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;)V

    .line 1289
    .line 1290
    .line 1291
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1292
    .line 1293
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmTrafficMonitor(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;

    .line 1294
    .line 1295
    .line 1296
    move-result-object v0

    .line 1297
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$TrafficMonitor;->init()V

    .line 1298
    .line 1299
    .line 1300
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1301
    .line 1302
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/wifi/SemApeService;->startLiveSession(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    invoke-virtual {p0, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 1306
    .line 1307
    .line 1308
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1309
    .line 1310
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmWifiConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 1311
    .line 1312
    .line 1313
    move-result p1

    .line 1314
    if-eqz p1, :cond_f

    .line 1315
    .line 1316
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemApeServiceImplV2$ApeHandler;->this$0:Lcom/samsung/android/server/wifi/SemApeServiceImplV2;

    .line 1317
    .line 1318
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV2;->-$$Nest$fgetmIsVpnConnected(Lcom/samsung/android/server/wifi/SemApeServiceImplV2;)Z

    .line 1319
    .line 1320
    .line 1321
    move-result p1

    .line 1322
    if-nez p1, :cond_f

    .line 1323
    .line 1324
    invoke-virtual {p0, v10, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1325
    .line 1326
    .line 1327
    :cond_f
    return-void

    .line 1328
    :cond_10
    const-string p0, "The UID is NOT fetched from the SemApeController"

    .line 1329
    .line 1330
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemApeService;->loge(Ljava/lang/String;)V

    .line 1331
    .line 1332
    .line 1333
    return-void

    .line 1334
    nop

    .line 1335
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
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
