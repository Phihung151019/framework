.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BleWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

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
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "SemWifiApSmartD2DGattClient"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "msg.what:"

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v4, v1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    invoke-static {v2, v4, v3}, Lcom/samsung/android/server/wifi/SemWifiCoexManager$SoftApCallback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    iget v1, v1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x1

    .line 23
    packed-switch v1, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_4

    .line 27
    .line 28
    :pswitch_0
    const-string v1, "SemWifiApSmartD2DGattClient"

    .line 29
    .line 30
    const-string v2, "Device didn\'t get mtu callback so this device is using default value."

    .line 31
    .line 32
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "SemWifiApSmartD2DGattClient:\tDevice didn\'t get mtu callback so this device is using default value."

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-eqz v1, :cond_b

    .line 53
    .line 54
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const/16 v1, 0x200

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :pswitch_1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 67
    .line 68
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const v4, 0x10410fa

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 80
    .line 81
    .line 82
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 83
    .line 84
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v3

    .line 88
    invoke-static {v2, v1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$msetConnectionState(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 92
    .line 93
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->removeDuplicateClientMAC(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :pswitch_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 102
    .line 103
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const v4, 0x10410f9

    .line 108
    .line 109
    .line 110
    invoke-static {v1, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 115
    .line 116
    .line 117
    new-instance v1, Landroid/content/Intent;

    .line 118
    .line 119
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v3, "com.samsung.android.server.wifi.ap.smarttethering.DEVICE_ADDED"

    .line 123
    .line 124
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    .line 126
    .line 127
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 128
    .line 129
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object v3

    .line 133
    const-string v4, "android.permission.OVERRIDE_WIFI_CONFIG"

    .line 134
    .line 135
    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 139
    .line 140
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v3

    .line 144
    const/4 v4, 0x4

    .line 145
    invoke-static {v4, v1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$minvokeCallback(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 149
    .line 150
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    invoke-static {v2, v1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$msetConnectionState(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmD2DClient_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->removeDuplicateClientMAC(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    return-void

    .line 167
    :pswitch_3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 168
    .line 169
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 170
    .line 171
    .line 172
    move-result-object v4

    .line 173
    invoke-virtual {v4}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartD2DMHS()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    invoke-static {v1, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputmWifiApSmartD2DMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 181
    .line 182
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    .line 183
    .line 184
    monitor-enter v1

    .line 185
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 186
    .line 187
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 188
    .line 189
    .line 190
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 191
    .line 192
    iget-object v5, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    .line 193
    .line 194
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 195
    .line 196
    .line 197
    move-result-object v5

    .line 198
    move v6, v2

    .line 199
    move v7, v6

    .line 200
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 201
    .line 202
    .line 203
    move-result v8

    .line 204
    if-eqz v8, :cond_8

    .line 205
    .line 206
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v8

    .line 210
    check-cast v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;

    .line 211
    .line 212
    iget v11, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 213
    .line 214
    const/4 v12, -0x6

    .line 215
    const/16 v13, 0x9

    .line 216
    .line 217
    if-eq v11, v12, :cond_6

    .line 218
    .line 219
    const/4 v14, -0x2

    .line 220
    if-eq v11, v14, :cond_6

    .line 221
    .line 222
    const/4 v14, -0x5

    .line 223
    if-ne v11, v14, :cond_0

    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 228
    .line 229
    .line 230
    move-result-wide v14

    .line 231
    const-wide/16 v16, 0x2710

    .line 232
    .line 233
    iget-wide v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    .line 234
    .line 235
    sub-long/2addr v14, v9

    .line 236
    cmp-long v9, v14, v16

    .line 237
    .line 238
    if-lez v9, :cond_1

    .line 239
    .line 240
    iget v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 241
    .line 242
    if-gez v9, :cond_1

    .line 243
    .line 244
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v8

    .line 248
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    .line 250
    .line 251
    goto/16 :goto_2

    .line 252
    .line 253
    :catchall_0
    move-exception v0

    .line 254
    goto/16 :goto_5

    .line 255
    .line 256
    :cond_1
    iget v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 257
    .line 258
    const/4 v10, 0x2

    .line 259
    if-ne v9, v10, :cond_2

    .line 260
    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 262
    .line 263
    .line 264
    move-result-wide v14

    .line 265
    iget-wide v10, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    .line 266
    .line 267
    sub-long/2addr v14, v10

    .line 268
    const-wide/32 v9, 0x9c40

    .line 269
    .line 270
    .line 271
    cmp-long v9, v14, v9

    .line 272
    .line 273
    if-lez v9, :cond_2

    .line 274
    .line 275
    const-string v9, "SemWifiApSmartD2DGattClient"

    .line 276
    .line 277
    new-instance v10, Ljava/lang/StringBuilder;

    .line 278
    .line 279
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 280
    .line 281
    .line 282
    const-string v11, " ST_BT_PAIRING after 30 sec, so cancelling bonding:"

    .line 283
    .line 284
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    .line 286
    .line 287
    iget-object v11, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    .line 288
    .line 289
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .line 295
    .line 296
    const-string v11, ",isBondingGoingon:"

    .line 297
    .line 298
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 302
    .line 303
    invoke-static {v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    .line 304
    .line 305
    .line 306
    move-result v11

    .line 307
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v10

    .line 314
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 318
    .line 319
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    new-instance v10, Ljava/lang/StringBuilder;

    .line 324
    .line 325
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .line 327
    .line 328
    const-string v11, "SemWifiApSmartD2DGattClient:\tST_BT_PAIRING after 30 sec, so cancelling bonding:"

    .line 329
    .line 330
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    iget-object v11, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    .line 334
    .line 335
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v11

    .line 339
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    .line 341
    .line 342
    const-string v11, ",isBondingGoingon:"

    .line 343
    .line 344
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 348
    .line 349
    invoke-static {v11}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Z

    .line 350
    .line 351
    .line 352
    move-result v11

    .line 353
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v10

    .line 360
    invoke-virtual {v9, v10}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 361
    .line 362
    .line 363
    iput v12, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 364
    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 366
    .line 367
    .line 368
    move-result-wide v9

    .line 369
    iput-wide v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    .line 370
    .line 371
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 372
    .line 373
    invoke-static {v9, v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fputisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Z)V

    .line 374
    .line 375
    .line 376
    add-int/lit8 v6, v6, 0x1

    .line 377
    .line 378
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 379
    .line 380
    iget-object v10, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    .line 381
    .line 382
    invoke-static {v12, v9, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$minvokeCallback(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 386
    .line 387
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartD2DMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 388
    .line 389
    .line 390
    move-result-object v9

    .line 391
    iget-object v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    .line 392
    .line 393
    new-instance v10, Landroid/util/Pair;

    .line 394
    .line 395
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 396
    .line 397
    .line 398
    move-result-wide v11

    .line 399
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 400
    .line 401
    .line 402
    move-result-object v11

    .line 403
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 404
    .line 405
    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmSmartAp_BLE_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v12

    .line 409
    invoke-direct {v10, v11, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v9, v8, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->setBLEPairingFailedHistory(Ljava/lang/String;Landroid/util/Pair;)V

    .line 413
    .line 414
    .line 415
    goto/16 :goto_2

    .line 416
    .line 417
    :cond_2
    iget v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 418
    .line 419
    if-ne v9, v3, :cond_3

    .line 420
    .line 421
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 422
    .line 423
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 424
    .line 425
    .line 426
    move-result-object v9

    .line 427
    if-nez v9, :cond_3

    .line 428
    .line 429
    const-string v9, "SemWifiApSmartD2DGattClient"

    .line 430
    .line 431
    new-instance v10, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    const-string v11, " ST_GATT_CONNECTING and mConnectgatt is null :"

    .line 437
    .line 438
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    iget-object v11, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    .line 442
    .line 443
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 444
    .line 445
    .line 446
    move-result-object v11

    .line 447
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v10

    .line 454
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 458
    .line 459
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    .line 460
    .line 461
    .line 462
    move-result-object v9

    .line 463
    new-instance v10, Ljava/lang/StringBuilder;

    .line 464
    .line 465
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 466
    .line 467
    .line 468
    const-string v11, "SemWifiApSmartD2DGattClient:\tST_GATT_CONNECTING and mConnectgatt is null:"

    .line 469
    .line 470
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    iget-object v11, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    .line 474
    .line 475
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v11

    .line 479
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    .line 481
    .line 482
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v10

    .line 486
    invoke-virtual {v9, v10}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 487
    .line 488
    .line 489
    iput v2, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 490
    .line 491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 492
    .line 493
    .line 494
    move-result-wide v9

    .line 495
    iput-wide v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    .line 496
    .line 497
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 498
    .line 499
    .line 500
    move-result-object v9

    .line 501
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 505
    .line 506
    iget-object v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    .line 507
    .line 508
    invoke-static {v2, v9, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$minvokeCallback(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_2

    .line 512
    .line 513
    :cond_3
    iget v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 514
    .line 515
    if-ne v9, v3, :cond_4

    .line 516
    .line 517
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 518
    .line 519
    .line 520
    move-result-wide v9

    .line 521
    iget-wide v11, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    .line 522
    .line 523
    sub-long/2addr v9, v11

    .line 524
    const-wide/32 v11, 0x88b8

    .line 525
    .line 526
    .line 527
    cmp-long v9, v9, v11

    .line 528
    .line 529
    if-lez v9, :cond_4

    .line 530
    .line 531
    const-string v9, "SemWifiApSmartD2DGattClient"

    .line 532
    .line 533
    const-string v10, "mConnectedGatt is not null after 40 sec, so disconnecting gatt"

    .line 534
    .line 535
    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    .line 537
    .line 538
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 539
    .line 540
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    .line 541
    .line 542
    .line 543
    move-result-object v9

    .line 544
    const-string v10, "SemWifiApSmartD2DGattClient:\tmConnectedGatt is not null after 40 sec, so disconnecting gatt"

    .line 545
    .line 546
    invoke-virtual {v9, v10}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    const/4 v9, -0x7

    .line 550
    iput v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 551
    .line 552
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 553
    .line 554
    .line 555
    move-result-wide v10

    .line 556
    iput-wide v10, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->timestamp:J

    .line 557
    .line 558
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 559
    .line 560
    iget-object v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    .line 561
    .line 562
    invoke-static {v9, v10, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$minvokeCallback(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;Ljava/lang/String;)V

    .line 563
    .line 564
    .line 565
    add-int/lit8 v6, v6, 0x1

    .line 566
    .line 567
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 568
    .line 569
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 570
    .line 571
    .line 572
    move-result-object v8

    .line 573
    if-eqz v8, :cond_7

    .line 574
    .line 575
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 576
    .line 577
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V

    .line 578
    .line 579
    .line 580
    goto :goto_2

    .line 581
    :cond_4
    iget v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->state:I

    .line 582
    .line 583
    if-ltz v8, :cond_5

    .line 584
    .line 585
    if-eq v8, v3, :cond_5

    .line 586
    .line 587
    const/4 v9, 0x2

    .line 588
    if-ne v8, v9, :cond_7

    .line 589
    .line 590
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 591
    .line 592
    goto :goto_2

    .line 593
    :cond_6
    :goto_1
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 594
    .line 595
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartD2DMHS(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;

    .line 596
    .line 597
    .line 598
    move-result-object v9

    .line 599
    iget-object v10, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    .line 600
    .line 601
    invoke-virtual {v9, v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DMHS;->getBLEPairingFailedHistory(Ljava/lang/String;)Z

    .line 602
    .line 603
    .line 604
    move-result v9

    .line 605
    if-nez v9, :cond_5

    .line 606
    .line 607
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 608
    .line 609
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Landroid/util/LocalLog;

    .line 610
    .line 611
    .line 612
    move-result-object v9

    .line 613
    new-instance v10, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .line 617
    .line 618
    const-string v11, "SemWifiApSmartD2DGattClient:\tUPDATE_CONNECTION_FAILURES: removing,"

    .line 619
    .line 620
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    .line 622
    .line 623
    iget-object v11, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    .line 624
    .line 625
    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v11

    .line 629
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v10

    .line 636
    invoke-virtual {v9, v10}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 637
    .line 638
    .line 639
    const-string v9, "SemWifiApSmartD2DGattClient"

    .line 640
    .line 641
    new-instance v10, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .line 645
    .line 646
    const-string v11, "UPDATE_CONNECTION_FAILURES: removing, "

    .line 647
    .line 648
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    .line 650
    .line 651
    iget-object v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$ClientD2DInfo;->clientMAC:Ljava/lang/String;

    .line 652
    .line 653
    invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 654
    .line 655
    .line 656
    move-result-object v8

    .line 657
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    .line 659
    .line 660
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 661
    .line 662
    .line 663
    move-result-object v8

    .line 664
    invoke-static {v9, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 668
    .line 669
    .line 670
    move-result-object v8

    .line 671
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    .line 673
    .line 674
    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 675
    .line 676
    goto/16 :goto_0

    .line 677
    .line 678
    :cond_8
    const-wide/16 v16, 0x2710

    .line 679
    .line 680
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 681
    .line 682
    .line 683
    move-result v3

    .line 684
    :goto_3
    if-ge v2, v3, :cond_9

    .line 685
    .line 686
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 687
    .line 688
    .line 689
    move-result-object v5

    .line 690
    add-int/lit8 v2, v2, 0x1

    .line 691
    .line 692
    check-cast v5, Ljava/lang/Integer;

    .line 693
    .line 694
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 695
    .line 696
    .line 697
    move-result v5

    .line 698
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 699
    .line 700
    iget-object v7, v7, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->mClientD2DList:Ljava/util/List;

    .line 701
    .line 702
    invoke-interface {v7, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 703
    .line 704
    .line 705
    goto :goto_3

    .line 706
    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 707
    .line 708
    .line 709
    move-result v2

    .line 710
    if-lez v2, :cond_a

    .line 711
    .line 712
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 713
    .line 714
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 715
    .line 716
    .line 717
    move-result-object v2

    .line 718
    const-string v3, "D2D gattclient, update failures"

    .line 719
    .line 720
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->sendClientScanResultUpdateIntent(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 721
    .line 722
    .line 723
    :catch_0
    :cond_a
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 724
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 725
    .line 726
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->showD2DClientInfo()V

    .line 727
    .line 728
    .line 729
    if-lez v6, :cond_b

    .line 730
    .line 731
    const/16 v1, 0xd

    .line 732
    .line 733
    move-wide/from16 v2, v16

    .line 734
    .line 735
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 736
    .line 737
    .line 738
    :cond_b
    :goto_4
    return-void

    .line 739
    :goto_5
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 740
    throw v0

    .line 741
    :pswitch_4
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;

    .line 742
    .line 743
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartD2DGattClient;)V

    .line 744
    .line 745
    .line 746
    return-void

    .line 747
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
