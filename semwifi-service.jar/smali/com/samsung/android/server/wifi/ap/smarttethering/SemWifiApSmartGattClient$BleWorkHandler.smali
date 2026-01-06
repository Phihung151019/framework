.class Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BleWorkHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

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
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "SemWifiApSmartGattClient"

    .line 6
    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v4, "Got message:"

    .line 10
    .line 11
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget v4, v1, Landroid/os/Message;->what:I

    .line 15
    .line 16
    invoke-static {v2, v4, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/StringBuilder;)V

    .line 17
    .line 18
    .line 19
    iget v2, v1, Landroid/os/Message;->what:I

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    const/16 v4, 0xb

    .line 23
    .line 24
    const/4 v5, 0x3

    .line 25
    const/4 v8, -0x1

    .line 26
    const/16 v9, 0x8

    .line 27
    .line 28
    const/4 v10, 0x2

    .line 29
    const/4 v11, 0x0

    .line 30
    if-eq v2, v4, :cond_20

    .line 31
    .line 32
    const/16 v4, 0xc

    .line 33
    .line 34
    if-eq v2, v4, :cond_1f

    .line 35
    .line 36
    const/16 v12, 0xe

    .line 37
    .line 38
    if-eq v2, v12, :cond_1c

    .line 39
    .line 40
    packed-switch v2, :pswitch_data_0

    .line 41
    .line 42
    .line 43
    packed-switch v2, :pswitch_data_1

    .line 44
    .line 45
    .line 46
    goto/16 :goto_10

    .line 47
    .line 48
    :pswitch_0
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputnotifyClientDataPausedByTimeLimit(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    const v1, 0x10410f5

    .line 60
    .line 61
    .line 62
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :pswitch_1
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 71
    .line 72
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputnotifyClientDataPausedByDataLimit(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 76
    .line 77
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    const v1, 0x10410f4

    .line 82
    .line 83
    .line 84
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 89
    .line 90
    .line 91
    return-void

    .line 92
    :pswitch_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputnotifyClientDataPausedByUser(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    const v1, 0x10410f7

    .line 104
    .line 105
    .line 106
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :pswitch_3
    const-string v1, "SemWifiApSmartGattClient"

    .line 115
    .line 116
    const-string v2, "RetryGattReadBondStatus"

    .line 117
    .line 118
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 122
    .line 123
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_2f

    .line 128
    .line 129
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 136
    .line 137
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBluetoothGattService(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGattService;

    .line 138
    .line 139
    .line 140
    move-result-object v2

    .line 141
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 144
    .line 145
    .line 146
    sget-object v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->CHARACTERISTIC_MHS_BOND_STATUS:Ljava/util/UUID;

    .line 147
    .line 148
    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :pswitch_4
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    const v1, 0x10410f3

    .line 163
    .line 164
    .line 165
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 170
    .line 171
    .line 172
    return-void

    .line 173
    :pswitch_5
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 174
    .line 175
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    const v2, 0x10410f6

    .line 180
    .line 181
    .line 182
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 190
    .line 191
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-eqz v1, :cond_2f

    .line 196
    .line 197
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 198
    .line 199
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 204
    .line 205
    .line 206
    return-void

    .line 207
    :pswitch_6
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 212
    .line 213
    const-string v4, "ssid"

    .line 214
    .line 215
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object v4

    .line 219
    invoke-static {v2, v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mremoveDoubleQuotes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    const-string v4, "securitytype"

    .line 224
    .line 225
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    const-string v5, "bssid"

    .line 230
    .line 231
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    const-string v5, "ishidden"

    .line 235
    .line 236
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 237
    .line 238
    .line 239
    move-result v5

    .line 240
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 241
    .line 242
    const-string v12, "presharedkey"

    .line 243
    .line 244
    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object v1

    .line 248
    invoke-static {v8, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mremoveDoubleQuotes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 253
    .line 254
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    .line 255
    .line 256
    .line 257
    move-result-object v8

    .line 258
    const-string v12, "wifi"

    .line 259
    .line 260
    invoke-virtual {v8, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v8

    .line 264
    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 265
    .line 266
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 267
    .line 268
    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 269
    .line 270
    .line 271
    move-result-object v12

    .line 272
    invoke-virtual {v12}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getPrivilegedConfiguredNetworks()Ljava/util/List;

    .line 273
    .line 274
    .line 275
    move-result-object v12

    .line 276
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object v12

    .line 280
    move v13, v3

    .line 281
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    .line 283
    .line 284
    move-result v14

    .line 285
    const/4 v15, 0x4

    .line 286
    if-eqz v14, :cond_1

    .line 287
    .line 288
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 289
    .line 290
    .line 291
    move-result-object v14

    .line 292
    check-cast v14, Landroid/net/wifi/WifiConfiguration;

    .line 293
    .line 294
    iget-object v6, v14, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 295
    .line 296
    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    .line 297
    .line 298
    .line 299
    move-result v6

    .line 300
    iget-object v9, v14, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 301
    .line 302
    if-eqz v9, :cond_0

    .line 303
    .line 304
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 305
    .line 306
    invoke-static {v7, v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mremoveDoubleQuotes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    .line 308
    .line 309
    move-result-object v7

    .line 310
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 311
    .line 312
    .line 313
    move-result v7

    .line 314
    if-eqz v7, :cond_0

    .line 315
    .line 316
    iget-boolean v13, v14, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 317
    .line 318
    const-string v7, "SemWifiApSmartGattClient"

    .line 319
    .line 320
    const-string v9, "isAutoReconnectToBeSet:"

    .line 321
    .line 322
    invoke-static {v9, v7, v13}, Lcom/samsung/android/server/wifi/SemEasySetupWifiManager$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 323
    .line 324
    .line 325
    if-ne v4, v15, :cond_0

    .line 326
    .line 327
    if-eqz v6, :cond_0

    .line 328
    .line 329
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 330
    .line 331
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 332
    .line 333
    .line 334
    move-result-object v6

    .line 335
    const-string v7, "SemWifiApSmartGattClient:\tremoving old WPA3"

    .line 336
    .line 337
    invoke-virtual {v6, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    const-string v6, "SemWifiApSmartGattClient"

    .line 341
    .line 342
    const-string v7, "removing old WPA3"

    .line 343
    .line 344
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .line 346
    .line 347
    iget v6, v14, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 348
    .line 349
    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 350
    .line 351
    .line 352
    goto :goto_1

    .line 353
    :cond_0
    const/16 v9, 0x8

    .line 354
    .line 355
    goto :goto_0

    .line 356
    :cond_1
    :goto_1
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    .line 357
    .line 358
    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 359
    .line 360
    .line 361
    iput-boolean v13, v6, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z

    .line 362
    .line 363
    const-string v7, "\""

    .line 364
    .line 365
    const-string v9, "\""

    .line 366
    .line 367
    invoke-static {v7, v2, v9}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v2

    .line 371
    iput-object v2, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 372
    .line 373
    if-ne v4, v10, :cond_2

    .line 374
    .line 375
    iget-object v2, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 376
    .line 377
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 378
    .line 379
    .line 380
    new-instance v2, Ljava/lang/StringBuilder;

    .line 381
    .line 382
    const-string v4, "\""

    .line 383
    .line 384
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v1, "\""

    .line 391
    .line 392
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    iput-object v1, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 400
    .line 401
    goto/16 :goto_2

    .line 402
    .line 403
    :cond_2
    if-ne v4, v3, :cond_5

    .line 404
    .line 405
    iget-object v2, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 406
    .line 407
    invoke-virtual {v2, v11}, Ljava/util/BitSet;->set(I)V

    .line 408
    .line 409
    .line 410
    iget-object v2, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 411
    .line 412
    invoke-virtual {v2, v11}, Ljava/util/BitSet;->set(I)V

    .line 413
    .line 414
    .line 415
    iget-object v2, v6, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 416
    .line 417
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 418
    .line 419
    .line 420
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 421
    .line 422
    .line 423
    move-result v2

    .line 424
    if-nez v2, :cond_9

    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 427
    .line 428
    .line 429
    move-result v2

    .line 430
    const/16 v4, 0xa

    .line 431
    .line 432
    if-eq v2, v4, :cond_3

    .line 433
    .line 434
    const/16 v4, 0x1a

    .line 435
    .line 436
    if-eq v2, v4, :cond_3

    .line 437
    .line 438
    const/16 v4, 0x3a

    .line 439
    .line 440
    if-ne v2, v4, :cond_4

    .line 441
    .line 442
    :cond_3
    const-string v2, "[0-9A-Fa-f]*"

    .line 443
    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 445
    .line 446
    .line 447
    move-result v2

    .line 448
    if-eqz v2, :cond_4

    .line 449
    .line 450
    iget-object v2, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 451
    .line 452
    aput-object v1, v2, v11

    .line 453
    .line 454
    const-string v1, "SemWifiApSmartGattClient"

    .line 455
    .line 456
    const-string v2, "WEP1"

    .line 457
    .line 458
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    .line 460
    .line 461
    goto :goto_2

    .line 462
    :cond_4
    iget-object v2, v6, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 463
    .line 464
    new-instance v4, Ljava/lang/StringBuilder;

    .line 465
    .line 466
    const-string v7, "\""

    .line 467
    .line 468
    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 472
    .line 473
    .line 474
    const/16 v1, 0x22

    .line 475
    .line 476
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 477
    .line 478
    .line 479
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 480
    .line 481
    .line 482
    move-result-object v1

    .line 483
    aput-object v1, v2, v11

    .line 484
    .line 485
    const-string v1, "SemWifiApSmartGattClient"

    .line 486
    .line 487
    const-string v2, "WEP2"

    .line 488
    .line 489
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    .line 491
    .line 492
    goto :goto_2

    .line 493
    :cond_5
    const/4 v2, 0x7

    .line 494
    if-ne v4, v2, :cond_6

    .line 495
    .line 496
    iget-object v2, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 497
    .line 498
    const/16 v4, 0xd

    .line 499
    .line 500
    invoke-virtual {v2, v4}, Ljava/util/BitSet;->set(I)V

    .line 501
    .line 502
    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    .line 504
    .line 505
    const-string v4, "\""

    .line 506
    .line 507
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    const-string v1, "\""

    .line 514
    .line 515
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    iput-object v1, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 523
    .line 524
    goto :goto_2

    .line 525
    :cond_6
    if-ne v4, v15, :cond_7

    .line 526
    .line 527
    const-string v2, "\""

    .line 528
    .line 529
    const-string v4, "\""

    .line 530
    .line 531
    invoke-static {v2, v1, v4}, Lcom/samsung/android/server/wifi/abtest/AbTestManager$4$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 532
    .line 533
    .line 534
    move-result-object v1

    .line 535
    iput-object v1, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 536
    .line 537
    iput-boolean v3, v6, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    .line 538
    .line 539
    iget-object v1, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 540
    .line 541
    const/16 v2, 0x8

    .line 542
    .line 543
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 544
    .line 545
    .line 546
    goto :goto_2

    .line 547
    :cond_7
    const/4 v1, 0x6

    .line 548
    if-ne v4, v1, :cond_8

    .line 549
    .line 550
    iget-object v1, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 551
    .line 552
    const/16 v2, 0x9

    .line 553
    .line 554
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 555
    .line 556
    .line 557
    iput-boolean v3, v6, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    .line 558
    .line 559
    goto :goto_2

    .line 560
    :cond_8
    iget-object v1, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 561
    .line 562
    invoke-virtual {v1, v11}, Ljava/util/BitSet;->set(I)V

    .line 563
    .line 564
    .line 565
    :cond_9
    :goto_2
    if-eqz v5, :cond_a

    .line 566
    .line 567
    iput-boolean v3, v6, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 568
    .line 569
    :cond_a
    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 570
    .line 571
    .line 572
    move-result v1

    .line 573
    if-eqz v5, :cond_b

    .line 574
    .line 575
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$1;

    .line 576
    .line 577
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$1;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {v8, v6, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 581
    .line 582
    .line 583
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 584
    .line 585
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSilentRoaming(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 586
    .line 587
    .line 588
    move-result v1

    .line 589
    if-ne v1, v3, :cond_e

    .line 590
    .line 591
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 592
    .line 593
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mgetSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/wifi/SemWifiManager;

    .line 594
    .line 595
    .line 596
    move-result-object v1

    .line 597
    iget v2, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 598
    .line 599
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 600
    .line 601
    .line 602
    move-result-object v3

    .line 603
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    .line 604
    .line 605
    .line 606
    goto :goto_4

    .line 607
    :cond_b
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->disconnect()Z

    .line 608
    .line 609
    .line 610
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 611
    .line 612
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSilentRoaming(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 613
    .line 614
    .line 615
    move-result v2

    .line 616
    if-ne v2, v3, :cond_c

    .line 617
    .line 618
    invoke-virtual {v8, v1, v3}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 619
    .line 620
    .line 621
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 622
    .line 623
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mgetSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/wifi/SemWifiManager;

    .line 624
    .line 625
    .line 626
    move-result-object v1

    .line 627
    iget v2, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 628
    .line 629
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v3

    .line 633
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    .line 634
    .line 635
    .line 636
    goto :goto_3

    .line 637
    :cond_c
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 638
    .line 639
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSilentRoaming(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 640
    .line 641
    .line 642
    move-result v2

    .line 643
    if-ne v2, v10, :cond_d

    .line 644
    .line 645
    invoke-virtual {v8, v1, v11}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    .line 646
    .line 647
    .line 648
    :cond_d
    :goto_3
    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->reconnect()Z

    .line 649
    .line 650
    .line 651
    :cond_e
    :goto_4
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 652
    .line 653
    invoke-static {v0, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msendWifiConfigurationForWifiProfileSharing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Landroid/net/wifi/WifiConfiguration;)V

    .line 654
    .line 655
    .line 656
    return-void

    .line 657
    :pswitch_7
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 658
    .line 659
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 660
    .line 661
    check-cast v1, Ljava/lang/String;

    .line 662
    .line 663
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mlaunchWiFiApWarningForWifiProfileSharing(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    return-void

    .line 667
    :pswitch_8
    const-string v1, "SemWifiApSmartGattClient"

    .line 668
    .line 669
    new-instance v2, Ljava/lang/StringBuilder;

    .line 670
    .line 671
    const-string v4, "Auto hotspot service is not found within 10 seconds so disconnect and try to reconnect mIsRetryGattConnect "

    .line 672
    .line 673
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 674
    .line 675
    .line 676
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 677
    .line 678
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmIsRetryGattConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    .line 679
    .line 680
    .line 681
    move-result v4

    .line 682
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 683
    .line 684
    .line 685
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    .line 691
    .line 692
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 693
    .line 694
    invoke-static {v1, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmNeedRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 695
    .line 696
    .line 697
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 698
    .line 699
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 700
    .line 701
    .line 702
    move-result-object v1

    .line 703
    if-eqz v1, :cond_2f

    .line 704
    .line 705
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 706
    .line 707
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 708
    .line 709
    .line 710
    move-result-object v1

    .line 711
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGatt;->disconnect()V

    .line 712
    .line 713
    .line 714
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 715
    .line 716
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmIsRetryGattConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    .line 717
    .line 718
    .line 719
    move-result v1

    .line 720
    if-nez v1, :cond_2f

    .line 721
    .line 722
    new-instance v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$2;

    .line 723
    .line 724
    invoke-direct {v1, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$2;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;)V

    .line 725
    .line 726
    .line 727
    const-wide/16 v2, 0x7d0

    .line 728
    .line 729
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 730
    .line 731
    .line 732
    return-void

    .line 733
    :pswitch_9
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 734
    .line 735
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 736
    .line 737
    .line 738
    move-result v1

    .line 739
    if-gtz v1, :cond_f

    .line 740
    .line 741
    goto/16 :goto_10

    .line 742
    .line 743
    :cond_f
    const-string v1, "SemWifiApSmartGattClient"

    .line 744
    .line 745
    const-string v2, "TRY_TO_GET_AES startSmartTetheringApk"

    .line 746
    .line 747
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    .line 749
    .line 750
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 751
    .line 752
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 753
    .line 754
    .line 755
    move-result-object v1

    .line 756
    const-string v2, "SemWifiApSmartGattClient:\tTRY_TO_GET_AES startSmartTetheringApk"

    .line 757
    .line 758
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 762
    .line 763
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 764
    .line 765
    .line 766
    move-result-object v1

    .line 767
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->updateAESKeyUsingLocalGroupSmartTetheringApk()I

    .line 768
    .line 769
    .line 770
    move-result v1

    .line 771
    if-nez v1, :cond_10

    .line 772
    .line 773
    const-string v1, "SemWifiApSmartGattClient"

    .line 774
    .line 775
    const-string v2, "could not get AESKey from server"

    .line 776
    .line 777
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    .line 779
    .line 780
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 781
    .line 782
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 783
    .line 784
    .line 785
    move-result-object v1

    .line 786
    const-string v2, "SemWifiApSmartGattClient:\tcould not get AESKey from server"

    .line 787
    .line 788
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 789
    .line 790
    .line 791
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 792
    .line 793
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    const-string v2, "need_get_AES_key"

    .line 798
    .line 799
    const-string v4, "1"

    .line 800
    .line 801
    invoke-static {v1, v2, v4}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    .line 803
    .line 804
    goto :goto_5

    .line 805
    :cond_10
    const-string v1, "SemWifiApSmartGattClient"

    .line 806
    .line 807
    const-string v2, "got AESKey from server"

    .line 808
    .line 809
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .line 811
    .line 812
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 813
    .line 814
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 815
    .line 816
    .line 817
    move-result-object v1

    .line 818
    const-string v2, "SemWifiApSmartGattClient:\tgot AESKey from server"

    .line 819
    .line 820
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 824
    .line 825
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    .line 826
    .line 827
    .line 828
    move-result-object v1

    .line 829
    const-string v2, "need_get_AES_key"

    .line 830
    .line 831
    const-string v4, "0"

    .line 832
    .line 833
    invoke-static {v1, v2, v4}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    :goto_5
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 837
    .line 838
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 839
    .line 840
    .line 841
    move-result v1

    .line 842
    sub-int/2addr v1, v3

    .line 843
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmLimitCount(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 844
    .line 845
    .line 846
    return-void

    .line 847
    :pswitch_a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 848
    .line 849
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    .line 850
    .line 851
    .line 852
    move-result v1

    .line 853
    if-eqz v1, :cond_2f

    .line 854
    .line 855
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 856
    .line 857
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    if-lez v1, :cond_2f

    .line 862
    .line 863
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 864
    .line 865
    invoke-static {v0, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 866
    .line 867
    .line 868
    return-void

    .line 869
    :pswitch_b
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 870
    .line 871
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mstopPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 872
    .line 873
    .line 874
    return-void

    .line 875
    :pswitch_c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 876
    .line 877
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    .line 878
    .line 879
    .line 880
    move-result v1

    .line 881
    if-eqz v1, :cond_2f

    .line 882
    .line 883
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 884
    .line 885
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 886
    .line 887
    .line 888
    move-result v1

    .line 889
    if-lez v1, :cond_2f

    .line 890
    .line 891
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 892
    .line 893
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 894
    .line 895
    .line 896
    move-result v1

    .line 897
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 898
    .line 899
    .line 900
    return-void

    .line 901
    :pswitch_d
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 902
    .line 903
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    .line 904
    .line 905
    .line 906
    move-result v1

    .line 907
    if-eqz v1, :cond_2f

    .line 908
    .line 909
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 910
    .line 911
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgettryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 912
    .line 913
    .line 914
    move-result v1

    .line 915
    if-lez v1, :cond_2f

    .line 916
    .line 917
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 918
    .line 919
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 920
    .line 921
    .line 922
    move-result v1

    .line 923
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mdoPartialScan(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 924
    .line 925
    .line 926
    return-void

    .line 927
    :pswitch_e
    const-string v1, "SemWifiApSmartGattClient"

    .line 928
    .line 929
    const-string v2, "Device didn\'t get mtu callback so this device is using default value."

    .line 930
    .line 931
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    .line 933
    .line 934
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 935
    .line 936
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    const-string v2, "SemWifiApSmartGattClient:\tDevice didn\'t get mtu callback so this device is using default value."

    .line 941
    .line 942
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 943
    .line 944
    .line 945
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 946
    .line 947
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 948
    .line 949
    .line 950
    move-result-object v1

    .line 951
    if-eqz v1, :cond_2f

    .line 952
    .line 953
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 954
    .line 955
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 956
    .line 957
    .line 958
    move-result-object v0

    .line 959
    const/16 v1, 0x200

    .line 960
    .line 961
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->requestMtu(I)Z

    .line 962
    .line 963
    .line 964
    return-void

    .line 965
    :pswitch_f
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 966
    .line 967
    .line 968
    move-result-object v1

    .line 969
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 970
    .line 971
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 972
    .line 973
    monitor-enter v2

    .line 974
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    .line 975
    .line 976
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 977
    .line 978
    .line 979
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 980
    .line 981
    iget-object v5, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 982
    .line 983
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 984
    .line 985
    .line 986
    move-result-object v5

    .line 987
    move v6, v11

    .line 988
    move v7, v6

    .line 989
    :goto_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 990
    .line 991
    .line 992
    move-result v8

    .line 993
    if-eqz v8, :cond_1a

    .line 994
    .line 995
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 996
    .line 997
    .line 998
    move-result-object v8

    .line 999
    check-cast v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;

    .line 1000
    .line 1001
    iget v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 1002
    .line 1003
    const/16 v12, -0xa

    .line 1004
    .line 1005
    if-eq v9, v12, :cond_18

    .line 1006
    .line 1007
    const/4 v12, -0x2

    .line 1008
    if-eq v9, v12, :cond_18

    .line 1009
    .line 1010
    const/4 v12, -0x7

    .line 1011
    if-ne v9, v12, :cond_11

    .line 1012
    .line 1013
    goto/16 :goto_8

    .line 1014
    .line 1015
    :cond_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1016
    .line 1017
    .line 1018
    move-result-wide v12

    .line 1019
    iget-wide v14, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->timestamp:J

    .line 1020
    .line 1021
    sub-long/2addr v12, v14

    .line 1022
    const-wide/16 v14, 0x2710

    .line 1023
    .line 1024
    cmp-long v9, v12, v14

    .line 1025
    .line 1026
    if-lez v9, :cond_12

    .line 1027
    .line 1028
    iget v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 1029
    .line 1030
    if-gez v9, :cond_12

    .line 1031
    .line 1032
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1033
    .line 1034
    .line 1035
    move-result-object v8

    .line 1036
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    .line 1038
    .line 1039
    goto/16 :goto_9

    .line 1040
    .line 1041
    :catchall_0
    move-exception v0

    .line 1042
    goto/16 :goto_b

    .line 1043
    .line 1044
    :cond_12
    iget v9, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 1045
    .line 1046
    const/16 v12, -0xc

    .line 1047
    .line 1048
    if-ne v9, v3, :cond_13

    .line 1049
    .line 1050
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1051
    .line 1052
    invoke-static {v9}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetisBondingGoingon(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Z

    .line 1053
    .line 1054
    .line 1055
    move-result v9

    .line 1056
    if-nez v9, :cond_13

    .line 1057
    .line 1058
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1059
    .line 1060
    .line 1061
    move-result-wide v13

    .line 1062
    iget-wide v10, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->timestamp:J

    .line 1063
    .line 1064
    sub-long/2addr v13, v10

    .line 1065
    const-wide/32 v10, 0xea60

    .line 1066
    .line 1067
    .line 1068
    cmp-long v10, v13, v10

    .line 1069
    .line 1070
    if-lez v10, :cond_13

    .line 1071
    .line 1072
    const-string v10, "SemWifiApSmartGattClient"

    .line 1073
    .line 1074
    const-string v11, " BLE transactions going on more than 60 sec, disconnecting gatt"

    .line 1075
    .line 1076
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    .line 1078
    .line 1079
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1080
    .line 1081
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 1082
    .line 1083
    .line 1084
    move-result-object v10

    .line 1085
    const-string v11, "SemWifiApSmartGattClient:\tBLE transactions going on more than 60 sec, disconnecting gatt"

    .line 1086
    .line 1087
    invoke-virtual {v10, v11}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1088
    .line 1089
    .line 1090
    iput v12, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 1091
    .line 1092
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1093
    .line 1094
    .line 1095
    move-result-wide v10

    .line 1096
    iput-wide v10, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->timestamp:J

    .line 1097
    .line 1098
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1099
    .line 1100
    iget-object v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    .line 1101
    .line 1102
    invoke-static {v12, v10, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$minvokeCallback(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 1103
    .line 1104
    .line 1105
    add-int/lit8 v6, v6, 0x1

    .line 1106
    .line 1107
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1108
    .line 1109
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 1110
    .line 1111
    .line 1112
    move-result-object v8

    .line 1113
    if-eqz v8, :cond_19

    .line 1114
    .line 1115
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1116
    .line 1117
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 1118
    .line 1119
    .line 1120
    goto/16 :goto_9

    .line 1121
    .line 1122
    :cond_13
    iget v10, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 1123
    .line 1124
    if-ne v10, v3, :cond_16

    .line 1125
    .line 1126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1127
    .line 1128
    .line 1129
    move-result-wide v10

    .line 1130
    iget-wide v13, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->timestamp:J

    .line 1131
    .line 1132
    sub-long/2addr v10, v13

    .line 1133
    const-wide/32 v13, 0xafc8

    .line 1134
    .line 1135
    .line 1136
    cmp-long v10, v10, v13

    .line 1137
    .line 1138
    if-lez v10, :cond_16

    .line 1139
    .line 1140
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1141
    .line 1142
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 1143
    .line 1144
    .line 1145
    move-result-object v10

    .line 1146
    if-eqz v10, :cond_14

    .line 1147
    .line 1148
    const-string v10, "SemWifiApSmartGattClient"

    .line 1149
    .line 1150
    const-string v11, "mConnectedGatt is not null after 45 sec, so disconnecting gatt"

    .line 1151
    .line 1152
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    .line 1154
    .line 1155
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1156
    .line 1157
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v10

    .line 1161
    const-string v11, "SemWifiApSmartGattClient:\tmConnectedGatt is not null after 45 sec, so disconnecting gatt"

    .line 1162
    .line 1163
    invoke-virtual {v10, v11}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1164
    .line 1165
    .line 1166
    iput v12, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 1167
    .line 1168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1169
    .line 1170
    .line 1171
    move-result-wide v10

    .line 1172
    iput-wide v10, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->timestamp:J

    .line 1173
    .line 1174
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1175
    .line 1176
    iget-object v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    .line 1177
    .line 1178
    invoke-static {v12, v10, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$minvokeCallback(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 1179
    .line 1180
    .line 1181
    add-int/lit8 v6, v6, 0x1

    .line 1182
    .line 1183
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1184
    .line 1185
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 1186
    .line 1187
    .line 1188
    goto/16 :goto_9

    .line 1189
    .line 1190
    :cond_14
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1191
    .line 1192
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmConnectedGatt(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/bluetooth/BluetoothGatt;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v10

    .line 1196
    if-nez v10, :cond_19

    .line 1197
    .line 1198
    const-string v10, "SemWifiApSmartGattClient"

    .line 1199
    .line 1200
    const-string v11, "mConnectedGatt is null after 45 sec,but state is Gatt Connecting "

    .line 1201
    .line 1202
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    .line 1204
    .line 1205
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1206
    .line 1207
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 1208
    .line 1209
    .line 1210
    move-result-object v10

    .line 1211
    const-string v11, "SemWifiApSmartGattClient:\tmConnectedGatt is null after 45 sec,but state is Gatt Connecting"

    .line 1212
    .line 1213
    invoke-virtual {v10, v11}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1214
    .line 1215
    .line 1216
    iput v12, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 1217
    .line 1218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1219
    .line 1220
    .line 1221
    move-result-wide v10

    .line 1222
    iput-wide v10, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->timestamp:J

    .line 1223
    .line 1224
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1225
    .line 1226
    iget-object v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    .line 1227
    .line 1228
    invoke-static {v12, v10, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$minvokeCallback(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 1229
    .line 1230
    .line 1231
    iget-object v8, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1232
    .line 1233
    invoke-static {v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 1234
    .line 1235
    .line 1236
    :cond_15
    :goto_7
    add-int/lit8 v6, v6, 0x1

    .line 1237
    .line 1238
    goto/16 :goto_9

    .line 1239
    .line 1240
    :cond_16
    iget v10, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 1241
    .line 1242
    const/4 v9, 0x2

    .line 1243
    if-ne v10, v9, :cond_17

    .line 1244
    .line 1245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1246
    .line 1247
    .line 1248
    move-result-wide v10

    .line 1249
    iget-wide v12, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->timestamp:J

    .line 1250
    .line 1251
    sub-long/2addr v10, v12

    .line 1252
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1253
    .line 1254
    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetMHS_CONNECTION_TIMEOUT(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 1255
    .line 1256
    .line 1257
    move-result v12

    .line 1258
    int-to-long v12, v12

    .line 1259
    cmp-long v10, v10, v12

    .line 1260
    .line 1261
    if-lez v10, :cond_17

    .line 1262
    .line 1263
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1264
    .line 1265
    const/4 v15, 0x0

    .line 1266
    invoke-static {v10, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 1267
    .line 1268
    .line 1269
    const-string v10, "SemWifiApSmartGattClient"

    .line 1270
    .line 1271
    new-instance v11, Ljava/lang/StringBuilder;

    .line 1272
    .line 1273
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 1274
    .line 1275
    .line 1276
    const-string v12, "Wifi connection timeout after"

    .line 1277
    .line 1278
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1279
    .line 1280
    .line 1281
    iget-object v12, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1282
    .line 1283
    invoke-static {v12}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetMHS_CONNECTION_TIMEOUT(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 1284
    .line 1285
    .line 1286
    move-result v12

    .line 1287
    div-int/lit16 v12, v12, 0x3e8

    .line 1288
    .line 1289
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1290
    .line 1291
    .line 1292
    const-string v12, " secs so dont try to connect"

    .line 1293
    .line 1294
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1295
    .line 1296
    .line 1297
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1298
    .line 1299
    .line 1300
    move-result-object v11

    .line 1301
    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    .line 1303
    .line 1304
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1305
    .line 1306
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v10

    .line 1310
    const-string v11, "SemWifiApSmartGattClient:\tWifi connection timeout after 45 sec, so dont try to connect"

    .line 1311
    .line 1312
    invoke-virtual {v10, v11}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1313
    .line 1314
    .line 1315
    const/16 v10, -0xb

    .line 1316
    .line 1317
    iput v10, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 1318
    .line 1319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1320
    .line 1321
    .line 1322
    move-result-wide v11

    .line 1323
    iput-wide v11, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->timestamp:J

    .line 1324
    .line 1325
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1326
    .line 1327
    iget-object v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    .line 1328
    .line 1329
    invoke-static {v10, v11, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$minvokeCallback(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 1330
    .line 1331
    .line 1332
    goto :goto_7

    .line 1333
    :cond_17
    iget v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->state:I

    .line 1334
    .line 1335
    if-ltz v8, :cond_15

    .line 1336
    .line 1337
    if-eq v8, v3, :cond_15

    .line 1338
    .line 1339
    const/4 v9, 0x2

    .line 1340
    if-ne v8, v9, :cond_19

    .line 1341
    .line 1342
    goto :goto_7

    .line 1343
    :cond_18
    :goto_8
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApSmartClient()Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;

    .line 1344
    .line 1345
    .line 1346
    move-result-object v10

    .line 1347
    iget-object v8, v8, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$SmartMHSInfo;->clientMAC:Ljava/lang/String;

    .line 1348
    .line 1349
    invoke-virtual {v10, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartClient;->getBLEPairingFailedHistory(Ljava/lang/String;)Z

    .line 1350
    .line 1351
    .line 1352
    move-result v8

    .line 1353
    if-nez v8, :cond_15

    .line 1354
    .line 1355
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1356
    .line 1357
    .line 1358
    move-result-object v8

    .line 1359
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    .line 1361
    .line 1362
    :cond_19
    :goto_9
    add-int/lit8 v7, v7, 0x1

    .line 1363
    .line 1364
    const/4 v10, 0x2

    .line 1365
    const/4 v11, 0x0

    .line 1366
    goto/16 :goto_6

    .line 1367
    .line 1368
    :cond_1a
    :try_start_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 1369
    .line 1370
    .line 1371
    move-result v1

    .line 1372
    const/4 v11, 0x0

    .line 1373
    :goto_a
    if-ge v11, v1, :cond_1b

    .line 1374
    .line 1375
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 1376
    .line 1377
    .line 1378
    move-result-object v3

    .line 1379
    add-int/lit8 v11, v11, 0x1

    .line 1380
    .line 1381
    check-cast v3, Ljava/lang/Integer;

    .line 1382
    .line 1383
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 1384
    .line 1385
    .line 1386
    move-result v3

    .line 1387
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1388
    .line 1389
    iget-object v5, v5, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 1390
    .line 1391
    invoke-interface {v5, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1392
    .line 1393
    .line 1394
    goto :goto_a

    .line 1395
    :catch_0
    :cond_1b
    :try_start_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1396
    .line 1397
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->showSmartMHSInfo()V

    .line 1398
    .line 1399
    .line 1400
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1401
    if-lez v6, :cond_2f

    .line 1402
    .line 1403
    const/16 v1, 0x12

    .line 1404
    .line 1405
    const-wide/16 v2, 0x1388

    .line 1406
    .line 1407
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1408
    .line 1409
    .line 1410
    goto/16 :goto_10

    .line 1411
    .line 1412
    :goto_b
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1413
    throw v0

    .line 1414
    :cond_1c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1415
    .line 1416
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v1

    .line 1420
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 1421
    .line 1422
    .line 1423
    move-result-object v1

    .line 1424
    if-eqz v1, :cond_1d

    .line 1425
    .line 1426
    const-string v2, "SemWifiApSmartGattClient"

    .line 1427
    .line 1428
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1429
    .line 1430
    const-string v4, " wifiInfo.getNetworkId(): "

    .line 1431
    .line 1432
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1433
    .line 1434
    .line 1435
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 1436
    .line 1437
    .line 1438
    move-result v4

    .line 1439
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1440
    .line 1441
    .line 1442
    const-string v4, ",wifiInfo.getBSSID():"

    .line 1443
    .line 1444
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1445
    .line 1446
    .line 1447
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1448
    .line 1449
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 1450
    .line 1451
    .line 1452
    move-result-object v4

    .line 1453
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 1454
    .line 1455
    .line 1456
    move-result-object v6

    .line 1457
    invoke-virtual {v4, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getBytesOfMACForLog(Ljava/lang/String;)Ljava/lang/String;

    .line 1458
    .line 1459
    .line 1460
    move-result-object v4

    .line 1461
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1462
    .line 1463
    .line 1464
    const-string v4, ",status:"

    .line 1465
    .line 1466
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1467
    .line 1468
    .line 1469
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1470
    .line 1471
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 1472
    .line 1473
    .line 1474
    move-result-object v6

    .line 1475
    invoke-virtual {v4, v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSmartApConnectedStatus(Ljava/lang/String;)I

    .line 1476
    .line 1477
    .line 1478
    move-result v4

    .line 1479
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1480
    .line 1481
    .line 1482
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1483
    .line 1484
    .line 1485
    move-result-object v3

    .line 1486
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    .line 1488
    .line 1489
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 1490
    .line 1491
    .line 1492
    move-result v2

    .line 1493
    if-eq v2, v8, :cond_1e

    .line 1494
    .line 1495
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 1496
    .line 1497
    .line 1498
    move-result-object v2

    .line 1499
    if-eqz v2, :cond_1e

    .line 1500
    .line 1501
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1502
    .line 1503
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    .line 1504
    .line 1505
    .line 1506
    move-result-object v3

    .line 1507
    invoke-virtual {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->getSmartApConnectedStatus(Ljava/lang/String;)I

    .line 1508
    .line 1509
    .line 1510
    move-result v2

    .line 1511
    if-ne v2, v5, :cond_1e

    .line 1512
    .line 1513
    const-string v2, "SemWifiApSmartGattClient"

    .line 1514
    .line 1515
    const-string v3, "Disconnecting Wifi as device is smartly connected and device is loggedout"

    .line 1516
    .line 1517
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    .line 1519
    .line 1520
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1521
    .line 1522
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 1523
    .line 1524
    .line 1525
    move-result-object v2

    .line 1526
    const-string v3, "SemWifiApSmartGattClient:\tDisconnecting Wifi as device is smartly connected and device is loggedout"

    .line 1527
    .line 1528
    invoke-virtual {v2, v3}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1529
    .line 1530
    .line 1531
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1532
    .line 1533
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v2

    .line 1537
    const-string v3, "wifi"

    .line 1538
    .line 1539
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1540
    .line 1541
    .line 1542
    move-result-object v2

    .line 1543
    check-cast v2, Landroid/net/wifi/WifiManager;

    .line 1544
    .line 1545
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    .line 1546
    .line 1547
    .line 1548
    move-result v1

    .line 1549
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 1550
    .line 1551
    .line 1552
    goto :goto_c

    .line 1553
    :cond_1d
    const-string v1, "SemWifiApSmartGattClient"

    .line 1554
    .line 1555
    const-string v2, " wifiInfo is null"

    .line 1556
    .line 1557
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1558
    .line 1559
    .line 1560
    :cond_1e
    :goto_c
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1561
    .line 1562
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 1563
    .line 1564
    monitor-enter v1

    .line 1565
    :try_start_4
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1566
    .line 1567
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->mSmartMHSList:Ljava/util/List;

    .line 1568
    .line 1569
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1570
    .line 1571
    .line 1572
    monitor-exit v1

    .line 1573
    return-void

    .line 1574
    :catchall_1
    move-exception v0

    .line 1575
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1576
    throw v0

    .line 1577
    :cond_1f
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1578
    .line 1579
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mshutdownclient(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 1580
    .line 1581
    .line 1582
    return-void

    .line 1583
    :cond_20
    const-string v1, "SemWifiApSmartGattClient"

    .line 1584
    .line 1585
    const-string v2, "Got message: GENERATE_CONNECT_WIFI"

    .line 1586
    .line 1587
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    .line 1589
    .line 1590
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1591
    .line 1592
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 1593
    .line 1594
    .line 1595
    move-result-object v1

    .line 1596
    const-string v2, "SemWifiApSmartGattClient:\tGot message: GENERATE_CONNECT_WIFI"

    .line 1597
    .line 1598
    invoke-virtual {v1, v2}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1599
    .line 1600
    .line 1601
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1602
    .line 1603
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    .line 1604
    .line 1605
    .line 1606
    move-result-object v1

    .line 1607
    const-string v2, "wifi"

    .line 1608
    .line 1609
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 1610
    .line 1611
    .line 1612
    move-result-object v1

    .line 1613
    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 1614
    .line 1615
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1616
    .line 1617
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1618
    .line 1619
    .line 1620
    move-result-object v2

    .line 1621
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConfiguredNetworks()Ljava/util/List;

    .line 1622
    .line 1623
    .line 1624
    move-result-object v2

    .line 1625
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    .line 1626
    .line 1627
    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1628
    .line 1629
    .line 1630
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1631
    .line 1632
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 1633
    .line 1634
    .line 1635
    move-result v6

    .line 1636
    const/4 v9, 0x2

    .line 1637
    if-ne v6, v9, :cond_21

    .line 1638
    .line 1639
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1640
    .line 1641
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 1642
    .line 1643
    .line 1644
    move-result-object v6

    .line 1645
    const-string v7, "SemWifiApSmartGattClient:\tnot found any profile with same SSID, WPA2/3"

    .line 1646
    .line 1647
    invoke-virtual {v6, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1648
    .line 1649
    .line 1650
    const-string v6, "SemWifiApSmartGattClient"

    .line 1651
    .line 1652
    const-string v7, "not found any profile with same SSID, WPA2/3"

    .line 1653
    .line 1654
    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    .line 1656
    .line 1657
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1658
    .line 1659
    invoke-static {v6, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 1660
    .line 1661
    .line 1662
    :cond_21
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1663
    .line 1664
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 1665
    .line 1666
    .line 1667
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1668
    .line 1669
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 1670
    .line 1671
    .line 1672
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1673
    .line 1674
    .line 1675
    move-result-object v2

    .line 1676
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 1677
    .line 1678
    .line 1679
    move-result v6

    .line 1680
    if-eqz v6, :cond_24

    .line 1681
    .line 1682
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1683
    .line 1684
    .line 1685
    move-result-object v6

    .line 1686
    check-cast v6, Landroid/net/wifi/WifiConfiguration;

    .line 1687
    .line 1688
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1689
    .line 1690
    if-eqz v7, :cond_22

    .line 1691
    .line 1692
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1693
    .line 1694
    invoke-static {v10, v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mremoveDoubleQuotes(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)Ljava/lang/String;

    .line 1695
    .line 1696
    .line 1697
    move-result-object v7

    .line 1698
    iget-object v10, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1699
    .line 1700
    invoke-static {v10}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v10

    .line 1704
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1705
    .line 1706
    .line 1707
    move-result v7

    .line 1708
    if-eqz v7, :cond_22

    .line 1709
    .line 1710
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1711
    .line 1712
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v2

    .line 1716
    const-string v7, "SemWifiApSmartGattClient:\tthere is a same profile :"

    .line 1717
    .line 1718
    invoke-virtual {v2, v7}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1719
    .line 1720
    .line 1721
    const-string v2, "SemWifiApSmartGattClient"

    .line 1722
    .line 1723
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1724
    .line 1725
    const-string v10, "there is a same profile : i.tostring "

    .line 1726
    .line 1727
    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1728
    .line 1729
    .line 1730
    invoke-virtual {v6}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    .line 1731
    .line 1732
    .line 1733
    move-result-object v10

    .line 1734
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1735
    .line 1736
    .line 1737
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1738
    .line 1739
    .line 1740
    move-result-object v7

    .line 1741
    invoke-static {v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    .line 1743
    .line 1744
    iget v2, v6, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 1745
    .line 1746
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1747
    .line 1748
    invoke-virtual {v7, v3}, Ljava/util/BitSet;->get(I)Z

    .line 1749
    .line 1750
    .line 1751
    move-result v7

    .line 1752
    if-eqz v7, :cond_23

    .line 1753
    .line 1754
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1755
    .line 1756
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 1757
    .line 1758
    .line 1759
    move-result v7

    .line 1760
    if-eqz v7, :cond_25

    .line 1761
    .line 1762
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1763
    .line 1764
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 1765
    .line 1766
    .line 1767
    move-result v7

    .line 1768
    if-eq v7, v3, :cond_25

    .line 1769
    .line 1770
    :cond_23
    iget-object v7, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1771
    .line 1772
    invoke-static {v7}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v7

    .line 1776
    const-string v10, "SemWifiApSmartGattClient:\t!WPA profile removed"

    .line 1777
    .line 1778
    invoke-virtual {v7, v10}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1779
    .line 1780
    .line 1781
    const-string v7, "SemWifiApSmartGattClient"

    .line 1782
    .line 1783
    const-string v10, "!WPA profile removed"

    .line 1784
    .line 1785
    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    .line 1787
    .line 1788
    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1789
    .line 1790
    invoke-virtual {v1, v6}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 1791
    .line 1792
    .line 1793
    goto :goto_d

    .line 1794
    :cond_24
    const/4 v2, 0x0

    .line 1795
    :cond_25
    :goto_d
    iput v2, v4, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 1796
    .line 1797
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1798
    .line 1799
    const-string v6, "\""

    .line 1800
    .line 1801
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1802
    .line 1803
    .line 1804
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1805
    .line 1806
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    .line 1807
    .line 1808
    .line 1809
    move-result-object v6

    .line 1810
    const-string v7, "\""

    .line 1811
    .line 1812
    invoke-static {v2, v6, v7}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1813
    .line 1814
    .line 1815
    move-result-object v2

    .line 1816
    iput-object v2, v4, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1817
    .line 1818
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1819
    .line 1820
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    .line 1821
    .line 1822
    .line 1823
    move-result-object v2

    .line 1824
    if-eqz v2, :cond_27

    .line 1825
    .line 1826
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1827
    .line 1828
    const-string v5, "\""

    .line 1829
    .line 1830
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1831
    .line 1832
    .line 1833
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1834
    .line 1835
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmPassword(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    .line 1836
    .line 1837
    .line 1838
    move-result-object v5

    .line 1839
    const-string v6, "\""

    .line 1840
    .line 1841
    invoke-static {v2, v5, v6}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1842
    .line 1843
    .line 1844
    move-result-object v2

    .line 1845
    iput-object v2, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1846
    .line 1847
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1848
    .line 1849
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 1850
    .line 1851
    .line 1852
    move-result v2

    .line 1853
    if-ne v2, v3, :cond_26

    .line 1854
    .line 1855
    const-string v2, "SemWifiApSmartGattClient"

    .line 1856
    .line 1857
    const-string v5, "connect to WPA3 access Point"

    .line 1858
    .line 1859
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1860
    .line 1861
    .line 1862
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1863
    .line 1864
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmLocalLog(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/util/LocalLog;

    .line 1865
    .line 1866
    .line 1867
    move-result-object v2

    .line 1868
    const-string v5, "SemWifiApSmartGattClient:\tconnect to WPA3 access Point"

    .line 1869
    .line 1870
    invoke-virtual {v2, v5}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 1871
    .line 1872
    .line 1873
    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1874
    .line 1875
    const/16 v5, 0x8

    .line 1876
    .line 1877
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 1878
    .line 1879
    .line 1880
    iput-boolean v3, v4, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    .line 1881
    .line 1882
    goto :goto_e

    .line 1883
    :cond_26
    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1884
    .line 1885
    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1886
    .line 1887
    .line 1888
    goto :goto_e

    .line 1889
    :cond_27
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1890
    .line 1891
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWPA3Mode(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 1892
    .line 1893
    .line 1894
    move-result v2

    .line 1895
    if-ne v2, v5, :cond_28

    .line 1896
    .line 1897
    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1898
    .line 1899
    const/16 v5, 0x9

    .line 1900
    .line 1901
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 1902
    .line 1903
    .line 1904
    iput-boolean v3, v4, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    .line 1905
    .line 1906
    goto :goto_e

    .line 1907
    :cond_28
    iget-object v2, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1908
    .line 1909
    const/4 v15, 0x0

    .line 1910
    invoke-virtual {v2, v15}, Ljava/util/BitSet;->set(I)V

    .line 1911
    .line 1912
    .line 1913
    :goto_e
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1914
    .line 1915
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmhideSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 1916
    .line 1917
    .line 1918
    move-result v2

    .line 1919
    if-ne v2, v3, :cond_29

    .line 1920
    .line 1921
    iput-boolean v3, v4, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1922
    .line 1923
    :cond_29
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1924
    .line 1925
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiApSmartUtil(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;

    .line 1926
    .line 1927
    .line 1928
    move-result-object v2

    .line 1929
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartUtil;->getNetworkType()B

    .line 1930
    .line 1931
    .line 1932
    move-result v2

    .line 1933
    if-ne v2, v3, :cond_2b

    .line 1934
    .line 1935
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1936
    .line 1937
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 1938
    .line 1939
    .line 1940
    move-result-object v2

    .line 1941
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 1942
    .line 1943
    .line 1944
    move-result-object v2

    .line 1945
    if-eqz v2, :cond_2a

    .line 1946
    .line 1947
    const-string v5, "SemWifiApSmartGattClient"

    .line 1948
    .line 1949
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1950
    .line 1951
    const-string v7, "checking for Same SSID: "

    .line 1952
    .line 1953
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1954
    .line 1955
    .line 1956
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    .line 1957
    .line 1958
    .line 1959
    move-result-object v2

    .line 1960
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1961
    .line 1962
    .line 1963
    const-string v2, ",mSSID:\""

    .line 1964
    .line 1965
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1966
    .line 1967
    .line 1968
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1969
    .line 1970
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    .line 1971
    .line 1972
    .line 1973
    move-result-object v2

    .line 1974
    const-string v7, "\""

    .line 1975
    .line 1976
    invoke-static {v6, v2, v7}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1977
    .line 1978
    .line 1979
    move-result-object v2

    .line 1980
    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1981
    .line 1982
    .line 1983
    goto :goto_f

    .line 1984
    :cond_2a
    const-string v2, "SemWifiApSmartGattClient"

    .line 1985
    .line 1986
    const-string v5, "wifiInfo is null"

    .line 1987
    .line 1988
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1989
    .line 1990
    .line 1991
    :cond_2b
    :goto_f
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 1992
    .line 1993
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmUserName(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    .line 1994
    .line 1995
    .line 1996
    move-result-object v2

    .line 1997
    if-nez v2, :cond_2c

    .line 1998
    .line 1999
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2000
    .line 2001
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    .line 2002
    .line 2003
    .line 2004
    move-result-object v1

    .line 2005
    const/16 v2, -0x9

    .line 2006
    .line 2007
    invoke-static {v2, v0, v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 2008
    .line 2009
    .line 2010
    const-string v0, "SemWifiApSmartGattClient"

    .line 2011
    .line 2012
    const-string v1, "connecting to mUserName==null ST_MHS_USERNAME_FAILED"

    .line 2013
    .line 2014
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    .line 2016
    .line 2017
    return-void

    .line 2018
    :cond_2c
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2019
    .line 2020
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Landroid/content/Context;

    .line 2021
    .line 2022
    .line 2023
    move-result-object v2

    .line 2024
    const-string v5, "auto_hotspot_connected_user"

    .line 2025
    .line 2026
    iget-object v6, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2027
    .line 2028
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmUserName(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    .line 2029
    .line 2030
    .line 2031
    move-result-object v6

    .line 2032
    invoke-static {v2, v5, v6}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 2033
    .line 2034
    .line 2035
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2036
    .line 2037
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSmartAp_WiFi_MAC(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    .line 2038
    .line 2039
    .line 2040
    move-result-object v5

    .line 2041
    const/4 v9, 0x2

    .line 2042
    invoke-static {v9, v2, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$msetConnectionState(ILcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Ljava/lang/String;)V

    .line 2043
    .line 2044
    .line 2045
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2046
    .line 2047
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmhideSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 2048
    .line 2049
    .line 2050
    move-result v2

    .line 2051
    if-ne v2, v3, :cond_2d

    .line 2052
    .line 2053
    const-string v2, "SemWifiApSmartGattClient"

    .line 2054
    .line 2055
    const-string v5, "connecting to hiddenSSID"

    .line 2056
    .line 2057
    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    .line 2059
    .line 2060
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2061
    .line 2062
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputMHS_CONNECTION_TIMEOUT(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)V

    .line 2063
    .line 2064
    .line 2065
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2066
    .line 2067
    const/4 v15, 0x0

    .line 2068
    invoke-static {v2, v15}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 2069
    .line 2070
    .line 2071
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2072
    .line 2073
    invoke-static {v2, v8}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmMhsFreq(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 2074
    .line 2075
    .line 2076
    new-instance v2, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$3;

    .line 2077
    .line 2078
    invoke-direct {v2, v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler$3;-><init>(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;)V

    .line 2079
    .line 2080
    .line 2081
    invoke-virtual {v1, v4, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 2082
    .line 2083
    .line 2084
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2085
    .line 2086
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSilentRoaming(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)I

    .line 2087
    .line 2088
    .line 2089
    move-result v1

    .line 2090
    if-ne v1, v3, :cond_2f

    .line 2091
    .line 2092
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2093
    .line 2094
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$mgetSemWifiManager(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/wifi/SemWifiManager;

    .line 2095
    .line 2096
    .line 2097
    move-result-object v0

    .line 2098
    iget v1, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 2099
    .line 2100
    invoke-virtual {v4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    .line 2101
    .line 2102
    .line 2103
    move-result-object v2

    .line 2104
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    .line 2105
    .line 2106
    .line 2107
    return-void

    .line 2108
    :cond_2d
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2109
    .line 2110
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmwaitingToConnect(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;Z)V

    .line 2111
    .line 2112
    .line 2113
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2114
    .line 2115
    const/16 v3, 0xa

    .line 2116
    .line 2117
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputtryingToRetry(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;I)V

    .line 2118
    .line 2119
    .line 2120
    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 2121
    .line 2122
    .line 2123
    move-result v2

    .line 2124
    const-string v3, "SemWifiApSmartGattClient"

    .line 2125
    .line 2126
    new-instance v4, Ljava/lang/StringBuilder;

    .line 2127
    .line 2128
    const-string v5, "trying to Connect to: "

    .line 2129
    .line 2130
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2131
    .line 2132
    .line 2133
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2134
    .line 2135
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmSSID(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Ljava/lang/String;

    .line 2136
    .line 2137
    .line 2138
    move-result-object v5

    .line 2139
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2140
    .line 2141
    .line 2142
    const-string v5, ",netId:"

    .line 2143
    .line 2144
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2145
    .line 2146
    .line 2147
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2148
    .line 2149
    .line 2150
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2151
    .line 2152
    .line 2153
    move-result-object v4

    .line 2154
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2155
    .line 2156
    .line 2157
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2158
    .line 2159
    const-wide/16 v4, -0x1

    .line 2160
    .line 2161
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmDelayStartFrom(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;J)V

    .line 2162
    .line 2163
    .line 2164
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2165
    .line 2166
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2167
    .line 2168
    .line 2169
    move-result-object v3

    .line 2170
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getCountryCode()Ljava/lang/String;

    .line 2171
    .line 2172
    .line 2173
    move-result-object v3

    .line 2174
    const-string v4, "JP"

    .line 2175
    .line 2176
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 2177
    .line 2178
    .line 2179
    move-result v3

    .line 2180
    if-eqz v3, :cond_2e

    .line 2181
    .line 2182
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2183
    .line 2184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2185
    .line 2186
    .line 2187
    move-result-wide v4

    .line 2188
    invoke-static {v3, v4, v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fputmDelayStartFrom(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;J)V

    .line 2189
    .line 2190
    .line 2191
    const-string v3, "SemWifiApSmartGattClient"

    .line 2192
    .line 2193
    const-string v4, "disableNetwork netId:"

    .line 2194
    .line 2195
    const-string v5, ", start delay 5000 for Japan from "

    .line 2196
    .line 2197
    invoke-static {v4, v2, v5}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 2198
    .line 2199
    .line 2200
    move-result-object v4

    .line 2201
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2202
    .line 2203
    invoke-static {v5}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmDelayStartFrom(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)J

    .line 2204
    .line 2205
    .line 2206
    move-result-wide v5

    .line 2207
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2208
    .line 2209
    .line 2210
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v4

    .line 2214
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    .line 2216
    .line 2217
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    .line 2218
    .line 2219
    .line 2220
    :cond_2e
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2221
    .line 2222
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 2223
    .line 2224
    .line 2225
    move-result-object v1

    .line 2226
    if-eqz v1, :cond_2f

    .line 2227
    .line 2228
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;->this$0:Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;

    .line 2229
    .line 2230
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;->-$$Nest$fgetmBleWorkHandler(Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient;)Lcom/samsung/android/server/wifi/ap/smarttethering/SemWifiApSmartGattClient$BleWorkHandler;

    .line 2231
    .line 2232
    .line 2233
    move-result-object v0

    .line 2234
    const/16 v1, 0x14

    .line 2235
    .line 2236
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2237
    .line 2238
    .line 2239
    :cond_2f
    :goto_10
    return-void

    .line 2240
    nop

    .line 2241
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 2242
    .line 2243
    .line 2244
    .line 2245
    .line 2246
    .line 2247
    .line 2248
    .line 2249
    .line 2250
    .line 2251
    .line 2252
    .line 2253
    .line 2254
    .line 2255
    .line 2256
    .line 2257
    .line 2258
    .line 2259
    .line 2260
    .line 2261
    .line 2262
    .line 2263
    .line 2264
    .line 2265
    .line 2266
    .line 2267
    .line 2268
    .line 2269
    .line 2270
    .line 2271
    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
