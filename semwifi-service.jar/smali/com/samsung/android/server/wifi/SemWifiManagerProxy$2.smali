.class Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiManagerProxy;-><init>(Landroid/content/Context;Landroid/os/HandlerExecutor;Lcom/samsung/android/server/wifi/SemWifiThreadRunner;Landroid/net/wifi/WifiManager;Lcom/samsung/android/server/wifi/util/FeatureUtil;Lcom/samsung/android/server/wifi/util/ScanPool;Lcom/samsung/android/server/wifi/SemWifiInjector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "android.intent.action.SCREEN_ON"

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const-string v3, "received action: "

    .line 13
    .line 14
    const-string v4, "SemWifiManagerProxy"

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 19
    .line 20
    invoke-static {p1, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monScreenStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 24
    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_11

    .line 30
    .line 31
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    const/4 v5, 0x0

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 49
    .line 50
    invoke-static {p1, v5}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monScreenStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V

    .line 51
    .line 52
    .line 53
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 56
    .line 57
    .line 58
    move-result p0

    .line 59
    if-eqz p0, :cond_11

    .line 60
    .line 61
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 70
    .line 71
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v1

    .line 75
    const-string v6, " state: "

    .line 76
    .line 77
    if-eqz v1, :cond_2

    .line 78
    .line 79
    const-string p1, "wifi_state"

    .line 80
    .line 81
    const/4 v1, 0x4

    .line 82
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const-string v2, "previous_wifi_state"

    .line 87
    .line 88
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 93
    .line 94
    invoke-static {v1, p1, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monWifiStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;II)V

    .line 95
    .line 96
    .line 97
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 98
    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    if-eqz p0, :cond_11

    .line 104
    .line 105
    invoke-static {v3, v0, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiStateByName(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p0

    .line 120
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 125
    .line 126
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    const-string v7, "networkInfo"

    .line 131
    .line 132
    if-eqz v1, :cond_3

    .line 133
    .line 134
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    check-cast p1, Landroid/net/NetworkInfo;

    .line 139
    .line 140
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 141
    .line 142
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monNetworkStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Landroid/net/NetworkInfo;)V

    .line 143
    .line 144
    .line 145
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 146
    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 148
    .line 149
    .line 150
    move-result p0

    .line 151
    if-eqz p0, :cond_11

    .line 152
    .line 153
    invoke-static {v3, v0, v6}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {p1}, Landroid/net/NetworkInfo$State;->name()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p0

    .line 172
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    .line 174
    .line 175
    return-void

    .line 176
    :cond_3
    const-string v1, "android.net.wifi.RSSI_CHANGED"

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_4

    .line 183
    .line 184
    const-string p1, "newRssi"

    .line 185
    .line 186
    const/16 v1, -0x7f

    .line 187
    .line 188
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 193
    .line 194
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monRssiChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    .line 195
    .line 196
    .line 197
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 198
    .line 199
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 200
    .line 201
    .line 202
    move-result p0

    .line 203
    if-eqz p0, :cond_11

    .line 204
    .line 205
    const-string p0, " rssi: "

    .line 206
    .line 207
    invoke-static {p1, v3, v0, p0}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_4
    const-string v1, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 216
    .line 217
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-eqz v1, :cond_5

    .line 222
    .line 223
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 224
    .line 225
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monLinkConfiguredChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 226
    .line 227
    .line 228
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 229
    .line 230
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 231
    .line 232
    .line 233
    move-result p0

    .line 234
    if-eqz p0, :cond_11

    .line 235
    .line 236
    invoke-static {v3, v0}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    return-void

    .line 244
    :cond_5
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    .line 245
    .line 246
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    move-result v1

    .line 250
    if-eqz v1, :cond_6

    .line 251
    .line 252
    const-string p1, "resultsUpdated"

    .line 253
    .line 254
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 255
    .line 256
    .line 257
    move-result p1

    .line 258
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 259
    .line 260
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monScanResult(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V

    .line 261
    .line 262
    .line 263
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 264
    .line 265
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isVerboseLoggingEnabled()Z

    .line 266
    .line 267
    .line 268
    move-result p0

    .line 269
    if-eqz p0, :cond_11

    .line 270
    .line 271
    const-string p0, "received scan result. succeed: "

    .line 272
    .line 273
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p0

    .line 277
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    return-void

    .line 281
    :cond_6
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    .line 282
    .line 283
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 284
    .line 285
    .line 286
    move-result v1

    .line 287
    if-eqz v1, :cond_8

    .line 288
    .line 289
    invoke-virtual {p2, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    check-cast p1, Landroid/net/NetworkInfo;

    .line 294
    .line 295
    if-eqz p1, :cond_7

    .line 296
    .line 297
    const-string v0, "p2pGroupInfo"

    .line 298
    .line 299
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 300
    .line 301
    .line 302
    move-result-object p2

    .line 303
    check-cast p2, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 304
    .line 305
    if-eqz p2, :cond_7

    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    .line 308
    .line 309
    .line 310
    move-result v5

    .line 311
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    .line 312
    .line 313
    .line 314
    move-result p1

    .line 315
    invoke-virtual {p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getFrequency()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    invoke-virtual {p2}, Landroid/net/wifi/p2p/WifiP2pGroup;->getInterface()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p2

    .line 323
    goto :goto_0

    .line 324
    :cond_7
    const-string p2, ""

    .line 325
    .line 326
    move p1, v5

    .line 327
    move v0, p1

    .line 328
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 329
    .line 330
    invoke-static {p0, v5, p1, v0, p2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monP2pConnectionStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;ZZILjava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :cond_8
    const-string v1, "android.net.wifi.aware.action.WIFI_AWARE_RESOURCE_CHANGED"

    .line 335
    .line 336
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    if-eqz v1, :cond_b

    .line 341
    .line 342
    const-string v0, "wifiaware"

    .line 343
    .line 344
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 345
    .line 346
    .line 347
    move-result-object p1

    .line 348
    check-cast p1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 349
    .line 350
    invoke-virtual {p1}, Landroid/net/wifi/aware/WifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    .line 351
    .line 352
    .line 353
    move-result-object p1

    .line 354
    if-eqz p1, :cond_9

    .line 355
    .line 356
    invoke-virtual {p1}, Landroid/net/wifi/aware/Characteristics;->getNumberOfSupportedDataPaths()I

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    const-string v0, "android.net.wifi.aware.extra.AWARE_RESOURCES"

    .line 361
    .line 362
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 363
    .line 364
    .line 365
    move-result-object p2

    .line 366
    check-cast p2, Landroid/net/wifi/aware/AwareResources;

    .line 367
    .line 368
    invoke-virtual {p2}, Landroid/net/wifi/aware/AwareResources;->getAvailableDataPathsCount()I

    .line 369
    .line 370
    .line 371
    move-result p2

    .line 372
    sub-int/2addr p1, p2

    .line 373
    goto :goto_1

    .line 374
    :cond_9
    move p1, v5

    .line 375
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 376
    .line 377
    if-lez p1, :cond_a

    .line 378
    .line 379
    goto :goto_2

    .line 380
    :cond_a
    move v2, v5

    .line 381
    :goto_2
    invoke-static {p0, v2}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monWifiAwareConnectionStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V

    .line 382
    .line 383
    .line 384
    return-void

    .line 385
    :cond_b
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 386
    .line 387
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 388
    .line 389
    .line 390
    move-result p1

    .line 391
    if-eqz p1, :cond_c

    .line 392
    .line 393
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 394
    .line 395
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monBootCompleted(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 396
    .line 397
    .line 398
    return-void

    .line 399
    :cond_c
    const-string p1, "android.location.MODE_CHANGED"

    .line 400
    .line 401
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    move-result p1

    .line 405
    if-eqz p1, :cond_d

    .line 406
    .line 407
    const-string p1, "android.location.extra.LOCATION_ENABLED"

    .line 408
    .line 409
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 410
    .line 411
    .line 412
    move-result p1

    .line 413
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 414
    .line 415
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monLocationModeChaged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Z)V

    .line 416
    .line 417
    .line 418
    return-void

    .line 419
    :cond_d
    const-string p1, "android.location.PROVIDERS_CHANGED"

    .line 420
    .line 421
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 422
    .line 423
    .line 424
    move-result p1

    .line 425
    if-eqz p1, :cond_e

    .line 426
    .line 427
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 428
    .line 429
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monLocationProviderChaged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 430
    .line 431
    .line 432
    return-void

    .line 433
    :cond_e
    const-string p1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    .line 434
    .line 435
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    move-result p1

    .line 439
    if-nez p1, :cond_12

    .line 440
    .line 441
    const-string p1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    .line 442
    .line 443
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result p1

    .line 447
    if-eqz p1, :cond_f

    .line 448
    .line 449
    goto :goto_3

    .line 450
    :cond_f
    const-string p1, "com.samsung.carrier.action.CARRIER_CHANGED"

    .line 451
    .line 452
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 453
    .line 454
    .line 455
    move-result p1

    .line 456
    if-eqz p1, :cond_11

    .line 457
    .line 458
    const-string p1, "com.samsung.carrier.extra.CARRIER_STATE"

    .line 459
    .line 460
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    const-string p2, "LOADED"

    .line 465
    .line 466
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 467
    .line 468
    .line 469
    move-result p2

    .line 470
    if-nez p2, :cond_10

    .line 471
    .line 472
    const-string p2, "UPDATED"

    .line 473
    .line 474
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 475
    .line 476
    .line 477
    move-result p2

    .line 478
    if-eqz p2, :cond_11

    .line 479
    .line 480
    :cond_10
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 481
    .line 482
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monCarrierConfigChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    :cond_11
    return-void

    .line 486
    :cond_12
    :goto_3
    const-string p1, "android.telephony.extra.SIM_STATE"

    .line 487
    .line 488
    invoke-virtual {p2, p1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 489
    .line 490
    .line 491
    move-result p1

    .line 492
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiManagerProxy$2;->this$0:Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 493
    .line 494
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->-$$Nest$monSimStateChanged(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;I)V

    .line 495
    .line 496
    .line 497
    return-void
.end method
