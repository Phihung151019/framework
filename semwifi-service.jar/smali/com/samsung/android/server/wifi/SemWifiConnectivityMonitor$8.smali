.class Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

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
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 14
    .line 15
    const p1, 0x21002

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 31
    .line 32
    const-string p1, "wifi_state"

    .line 33
    .line 34
    const/4 v0, 0x4

    .line 35
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const p2, 0x21005

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    const v1, 0x21006

    .line 53
    .line 54
    .line 55
    if-nez v0, :cond_11

    .line 56
    .line 57
    const-string v0, "com.android.intent.action.DATAUSAGE_REACH_TO_LIMIT"

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-nez v0, :cond_11

    .line 64
    .line 65
    const-string v0, "android.intent.action.ACTION_DATA_SELECTION_POPUP_PRESSED"

    .line 66
    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmIsShowDataSelectPopupOnBootup(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-eqz v0, :cond_2

    .line 80
    .line 81
    goto/16 :goto_2

    .line 82
    .line 83
    :cond_2
    const-string v0, "android.intent.action.SERVICE_STATE"

    .line 84
    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    const-string v2, "WifiConnectivityMonitor"

    .line 90
    .line 91
    if-eqz v0, :cond_3

    .line 92
    .line 93
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 94
    .line 95
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTelephonyManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/telephony/TelephonyManager;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    if-eqz v0, :cond_3

    .line 100
    .line 101
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 102
    .line 103
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmTelephonyManager(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/telephony/TelephonyManager;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-eqz p1, :cond_10

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 114
    .line 115
    .line 116
    move-result p2

    .line 117
    if-nez p2, :cond_10

    .line 118
    .line 119
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 120
    .line 121
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmCountryIso(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object p2

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-nez p2, :cond_10

    .line 130
    .line 131
    const-string p2, "Network country change is detected - "

    .line 132
    .line 133
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 141
    .line 142
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$mupdateCountryIso(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 143
    .line 144
    .line 145
    return-void

    .line 146
    :cond_3
    const-string v0, "android.intent.action.USER_BACKGROUND"

    .line 147
    .line 148
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    const/4 v3, 0x0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    const-string p1, "OWNER is background"

    .line 156
    .line 157
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 161
    .line 162
    invoke-static {p1, v3}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmUserOwner(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 163
    .line 164
    .line 165
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 166
    .line 167
    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_4
    const-string v0, "android.intent.action.USER_FOREGROUND"

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v0

    .line 177
    const/4 v4, 0x1

    .line 178
    if-eqz v0, :cond_5

    .line 179
    .line 180
    const-string p1, "OWNER is foreground"

    .line 181
    .line 182
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 186
    .line 187
    invoke-static {p1, v4}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmUserOwner(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 188
    .line 189
    .line 190
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 191
    .line 192
    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 193
    .line 194
    .line 195
    return-void

    .line 196
    :cond_5
    const-string v0, "com.samsung.ims.action.IMS_REGISTRATION"

    .line 197
    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_6

    .line 203
    .line 204
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 205
    .line 206
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmImsRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 211
    .line 212
    const-string v4, "VOWIFI"

    .line 213
    .line 214
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 215
    .line 216
    .line 217
    move-result p2

    .line 218
    invoke-static {v0, p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmImsRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;Z)V

    .line 219
    .line 220
    .line 221
    new-instance p2, Ljava/lang/StringBuilder;

    .line 222
    .line 223
    const-string v0, "IMS_REGISTRATION - "

    .line 224
    .line 225
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 229
    .line 230
    invoke-static {v0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmImsRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .line 243
    .line 244
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 245
    .line 246
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmImsRegistered(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 247
    .line 248
    .line 249
    move-result p2

    .line 250
    if-eq p1, p2, :cond_10

    .line 251
    .line 252
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 253
    .line 254
    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :cond_6
    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 259
    .line 260
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    if-eqz v0, :cond_7

    .line 265
    .line 266
    const-string p1, "android.net.wifi.extra.LINK_PROPERTIES"

    .line 267
    .line 268
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 269
    .line 270
    .line 271
    move-result-object p1

    .line 272
    check-cast p1, Landroid/net/LinkProperties;

    .line 273
    .line 274
    if-eqz p1, :cond_10

    .line 275
    .line 276
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 277
    .line 278
    const p2, 0x21136

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, p2, v3, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    return-void

    .line 285
    :cond_7
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 286
    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    move-result v0

    .line 291
    if-eqz v0, :cond_8

    .line 292
    .line 293
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 294
    .line 295
    const p2, 0x2103e

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, p2, v3, v3}, Lcom/android/internal/util/StateMachine;->obtainMessage(III)Landroid/os/Message;

    .line 299
    .line 300
    .line 301
    move-result-object p2

    .line 302
    invoke-virtual {p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    .line 303
    .line 304
    .line 305
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 306
    .line 307
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmNetworkStatsAnalyzer(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;

    .line 308
    .line 309
    .line 310
    move-result-object p1

    .line 311
    iget-object p2, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 312
    .line 313
    invoke-static {p2}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$misConnectedState(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 314
    .line 315
    .line 316
    move-result p2

    .line 317
    invoke-virtual {p1, p2, v3}, Lcom/samsung/android/server/wifi/wcm/NetworkStatsAnalyzer;->setScanStartedOrDone(ZZ)V

    .line 318
    .line 319
    .line 320
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 321
    .line 322
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmEleScanFlag(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :cond_8
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 327
    .line 328
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 329
    .line 330
    .line 331
    move-result v0

    .line 332
    if-eqz v0, :cond_9

    .line 333
    .line 334
    const-string p1, "AIRPLANE_MODE_CHANGED"

    .line 335
    .line 336
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 340
    .line 341
    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 342
    .line 343
    .line 344
    return-void

    .line 345
    :cond_9
    const-string v0, "com.samsung.android.WLAN_ADVANCED_DEBUG"

    .line 346
    .line 347
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-eqz v0, :cond_f

    .line 352
    .line 353
    const-string p1, "mode"

    .line 354
    .line 355
    const/4 v0, -0x1

    .line 356
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 357
    .line 358
    .line 359
    move-result p1

    .line 360
    const/16 p2, 0x20

    .line 361
    .line 362
    if-ne p1, p2, :cond_10

    .line 363
    .line 364
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 365
    .line 366
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fputmEleDebug(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 367
    .line 368
    .line 369
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 370
    .line 371
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 372
    .line 373
    .line 374
    move-result-object p1

    .line 375
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiEnabled()Z

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    if-nez p1, :cond_a

    .line 380
    .line 381
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 382
    .line 383
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 384
    .line 385
    .line 386
    move-result-object p1

    .line 387
    const-string p2, "Please turn on Wi-Fi"

    .line 388
    .line 389
    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 390
    .line 391
    .line 392
    move-result-object p1

    .line 393
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 394
    .line 395
    .line 396
    goto :goto_0

    .line 397
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 398
    .line 399
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->isSupportEleDetection()Z

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    if-nez p1, :cond_b

    .line 404
    .line 405
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 406
    .line 407
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 408
    .line 409
    .line 410
    move-result-object p1

    .line 411
    const-string p2, "Ele Detection is not supported. Ele doesn\'t work!"

    .line 412
    .line 413
    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 414
    .line 415
    .line 416
    move-result-object p1

    .line 417
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 418
    .line 419
    .line 420
    :cond_b
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 421
    .line 422
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmEleDebug(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Z

    .line 423
    .line 424
    .line 425
    move-result p1

    .line 426
    if-eqz p1, :cond_e

    .line 427
    .line 428
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 429
    .line 430
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 431
    .line 432
    .line 433
    move-result-object p1

    .line 434
    if-nez p1, :cond_c

    .line 435
    .line 436
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 437
    .line 438
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 439
    .line 440
    .line 441
    move-result-object p1

    .line 442
    const-string p2, "My Group for EntryRssiControl is [C]"

    .line 443
    .line 444
    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 445
    .line 446
    .line 447
    move-result-object p1

    .line 448
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 449
    .line 450
    .line 451
    goto :goto_1

    .line 452
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 453
    .line 454
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 455
    .line 456
    .line 457
    move-result p1

    .line 458
    if-nez p1, :cond_d

    .line 459
    .line 460
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 461
    .line 462
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 463
    .line 464
    .line 465
    move-result-object p1

    .line 466
    const-string p2, "My Group for EntryRssiControl is [A]"

    .line 467
    .line 468
    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 469
    .line 470
    .line 471
    move-result-object p1

    .line 472
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 473
    .line 474
    .line 475
    goto :goto_1

    .line 476
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 477
    .line 478
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmAbTestValue(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)I

    .line 479
    .line 480
    .line 481
    move-result p1

    .line 482
    if-ne p1, v4, :cond_e

    .line 483
    .line 484
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 485
    .line 486
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Landroid/content/Context;

    .line 487
    .line 488
    .line 489
    move-result-object p1

    .line 490
    const-string p2, "My Group for EntryRssiControl is [B]"

    .line 491
    .line 492
    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 493
    .line 494
    .line 495
    move-result-object p1

    .line 496
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 497
    .line 498
    .line 499
    :cond_e
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 500
    .line 501
    invoke-static {p1}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 502
    .line 503
    .line 504
    move-result-object p1

    .line 505
    if-eqz p1, :cond_10

    .line 506
    .line 507
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 508
    .line 509
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$fgetmRssiThresholdNetSelector(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;

    .line 510
    .line 511
    .line 512
    move-result-object p0

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/wcm/RssiThresholdNetSelector;->notifyWlanAdvDebugSet()V

    .line 514
    .line 515
    .line 516
    return-void

    .line 517
    :cond_f
    const-string v0, "com.samsung.carrier.action.CARRIER_CHANGED"

    .line 518
    .line 519
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 520
    .line 521
    .line 522
    move-result p1

    .line 523
    if-eqz p1, :cond_10

    .line 524
    .line 525
    const-string p1, "com.samsung.carrier.extra.CARRIER_STATE"

    .line 526
    .line 527
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object p1

    .line 531
    const-string p2, "ABSENT"

    .line 532
    .line 533
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result p1

    .line 537
    if-nez p1, :cond_10

    .line 538
    .line 539
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 540
    .line 541
    invoke-static {p0}, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;->-$$Nest$msetDefaultSwitchToMobileData(Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;)V

    .line 542
    .line 543
    .line 544
    :cond_10
    return-void

    .line 545
    :cond_11
    :goto_2
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor$8;->this$0:Lcom/samsung/android/server/wifi/SemWifiConnectivityMonitor;

    .line 546
    .line 547
    invoke-virtual {p0, v1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 548
    .line 549
    .line 550
    return-void
.end method
