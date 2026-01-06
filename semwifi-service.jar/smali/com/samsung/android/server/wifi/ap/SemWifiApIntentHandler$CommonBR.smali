.class Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommonBR"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;-><init>(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "rcvd:"

    .line 12
    .line 13
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    const-string v0, "com.samsung.intent.action.SETTINGS_NETWORK_RESET"

    .line 21
    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    .line 28
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 29
    .line 30
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monNetworkResetEventRcvd(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 43
    .line 44
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monShutDownIntentRcvd(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    .line 49
    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    const-string v1, "wifi_state"

    .line 55
    .line 56
    const/4 v2, -0x1

    .line 57
    const/4 v3, 0x0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    const/16 p1, 0xb

    .line 61
    .line 62
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    const-string v1, "previous_wifi_state"

    .line 67
    .line 68
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const-string v1, "android.net.wifi.extra.WIFI_AP_FAILURE_REASON"

    .line 73
    .line 74
    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    const-string v3, "android.net.wifi.extra.WIFI_AP_INTERFACE_NAME"

    .line 79
    .line 80
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v4, "android.net.wifi.extra.WIFI_AP_MODE"

    .line 85
    .line 86
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 91
    .line 92
    invoke-static {v4, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$fputmApInterfaceName(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 96
    .line 97
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    new-instance v5, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    const-string v6, "handleWifiApStateChange: currentState="

    .line 104
    .line 105
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$smgetWifiApStateByName(I)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v6

    .line 112
    const-string v7, " "

    .line 113
    .line 114
    const-string v8, " previousState="

    .line 115
    .line 116
    invoke-static {v5, v6, v7, v0, v8}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 117
    .line 118
    .line 119
    const-string v6, " errorCode= "

    .line 120
    .line 121
    const-string v7, " ifaceName="

    .line 122
    .line 123
    invoke-static {v5, p1, v6, v1, v7}, Lcom/samsung/android/server/wifi/SemApeController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    const-string p1, " mode="

    .line 130
    .line 131
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .line 143
    .line 144
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 145
    .line 146
    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monWifiApStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;IIILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string p1, "NEWCO"

    .line 150
    .line 151
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$sfgetCSC_CONFIG_OP_BRANDING()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result p1

    .line 159
    if-eqz p1, :cond_2

    .line 160
    .line 161
    const-string p1, "com.samsung.android.app.mhswrappermtr"

    .line 162
    .line 163
    const-string v0, "com.samsung.android.app.mhswrappermtr.MHSWidget"

    .line 164
    .line 165
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    .line 167
    .line 168
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 169
    .line 170
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)Landroid/content/Context;

    .line 171
    .line 172
    .line 173
    move-result-object p0

    .line 174
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 175
    .line 176
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 177
    .line 178
    .line 179
    return-void

    .line 180
    :cond_2
    const-string p1, "TMO"

    .line 181
    .line 182
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$sfgetCSC_CONFIG_OP_BRANDING()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    move-result p1

    .line 190
    if-eqz p1, :cond_18

    .line 191
    .line 192
    const-string p1, "com.samsung.android.app.mhswrappertmo"

    .line 193
    .line 194
    const-string v0, "com.samsung.android.app.mhswrappertmo.MHSWidget"

    .line 195
    .line 196
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    .line 198
    .line 199
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 200
    .line 201
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)Landroid/content/Context;

    .line 202
    .line 203
    .line 204
    move-result-object p0

    .line 205
    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 206
    .line 207
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 208
    .line 209
    .line 210
    return-void

    .line 211
    :cond_3
    const-string v0, "com.samsung.android.net.wifi.WIFI_AP_STA_STATE_CHANGED"

    .line 212
    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_4

    .line 218
    .line 219
    const-string v0, "STA_COUNT"

    .line 220
    .line 221
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 222
    .line 223
    .line 224
    move-result v7

    .line 225
    const-string v0, "EVENT"

    .line 226
    .line 227
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    const-string v0, "MAC"

    .line 232
    .line 233
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    const-string v0, "DEVICE"

    .line 238
    .line 239
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v9

    .line 243
    const-string v0, "IP"

    .line 244
    .line 245
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v8

    .line 249
    iget-object p2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 250
    .line 251
    invoke-static {p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    new-instance v0, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    const-string v1, "received action: "

    .line 258
    .line 259
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string p1, " clientNum: "

    .line 266
    .line 267
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    const-string p1, " event"

    .line 274
    .line 275
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    const-string p1, " mac"

    .line 282
    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .line 285
    .line 286
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$smshowMacAddress(Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    const-string v1, "name"

    .line 291
    .line 292
    const-string v2, "ip"

    .line 293
    .line 294
    invoke-static {v0, p1, v1, v9, v2}, Lcom/samsung/android/server/wifi/SemUserConnectionSaLogging$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object p1

    .line 304
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .line 306
    .line 307
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 308
    .line 309
    invoke-static/range {v4 .. v9}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monWifiApStaInfoStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    return-void

    .line 313
    :cond_4
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    .line 314
    .line 315
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    if-eqz v0, :cond_5

    .line 320
    .line 321
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 322
    .line 323
    .line 324
    move-result-object p1

    .line 325
    const-string v0, "ss"

    .line 326
    .line 327
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p1

    .line 331
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 332
    .line 333
    .line 334
    move-result-object p2

    .line 335
    const-string v0, "reason"

    .line 336
    .line 337
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 338
    .line 339
    .line 340
    move-result-object p2

    .line 341
    if-eqz p1, :cond_18

    .line 342
    .line 343
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 344
    .line 345
    invoke-static {p0, p1, p2}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monSimChangeStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    .line 347
    .line 348
    return-void

    .line 349
    :cond_5
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 350
    .line 351
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v0

    .line 355
    const/4 v4, 0x1

    .line 356
    if-eqz v0, :cond_9

    .line 357
    .line 358
    const-string p1, "networkInfo"

    .line 359
    .line 360
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    check-cast p1, Landroid/net/NetworkInfo;

    .line 365
    .line 366
    if-eqz p1, :cond_6

    .line 367
    .line 368
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 369
    .line 370
    .line 371
    move-result-object p2

    .line 372
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 373
    .line 374
    if-ne p2, v0, :cond_6

    .line 375
    .line 376
    move p2, v4

    .line 377
    goto :goto_0

    .line 378
    :cond_6
    move p2, v3

    .line 379
    :goto_0
    if-eqz p1, :cond_7

    .line 380
    .line 381
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 386
    .line 387
    if-ne p1, v0, :cond_7

    .line 388
    .line 389
    move p1, v4

    .line 390
    goto :goto_1

    .line 391
    :cond_7
    move p1, v3

    .line 392
    :goto_1
    if-eqz p2, :cond_8

    .line 393
    .line 394
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 395
    .line 396
    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monWifiNetworkStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V

    .line 397
    .line 398
    .line 399
    return-void

    .line 400
    :cond_8
    if-eqz p1, :cond_18

    .line 401
    .line 402
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 403
    .line 404
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monWifiNetworkStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V

    .line 405
    .line 406
    .line 407
    return-void

    .line 408
    :cond_9
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 409
    .line 410
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 411
    .line 412
    .line 413
    move-result v0

    .line 414
    if-eqz v0, :cond_a

    .line 415
    .line 416
    const/4 p1, 0x4

    .line 417
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 418
    .line 419
    .line 420
    move-result p1

    .line 421
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 422
    .line 423
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monWifiStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :cond_a
    const-string v0, "android.intent.action.TIME_SET"

    .line 428
    .line 429
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 430
    .line 431
    .line 432
    move-result v0

    .line 433
    if-eqz v0, :cond_b

    .line 434
    .line 435
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 436
    .line 437
    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monDateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V

    .line 438
    .line 439
    .line 440
    return-void

    .line 441
    :cond_b
    const-string v0, "android.intent.action.DATE_CHANGED"

    .line 442
    .line 443
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 444
    .line 445
    .line 446
    move-result v0

    .line 447
    if-eqz v0, :cond_c

    .line 448
    .line 449
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 450
    .line 451
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monDateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V

    .line 452
    .line 453
    .line 454
    return-void

    .line 455
    :cond_c
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    .line 456
    .line 457
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 458
    .line 459
    .line 460
    move-result v0

    .line 461
    if-eqz v0, :cond_d

    .line 462
    .line 463
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 464
    .line 465
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monAirplaneModeChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 466
    .line 467
    .line 468
    return-void

    .line 469
    :cond_d
    const-string v0, "com.samsung.bluetooth.adapter.action.BLE_STATE_CHANGED"

    .line 470
    .line 471
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 472
    .line 473
    .line 474
    move-result v0

    .line 475
    if-eqz v0, :cond_e

    .line 476
    .line 477
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 478
    .line 479
    const/high16 v0, -0x80000000

    .line 480
    .line 481
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 482
    .line 483
    .line 484
    move-result p1

    .line 485
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 486
    .line 487
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monSemBleStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;I)V

    .line 488
    .line 489
    .line 490
    return-void

    .line 491
    :cond_e
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 492
    .line 493
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 494
    .line 495
    .line 496
    move-result v0

    .line 497
    if-nez v0, :cond_19

    .line 498
    .line 499
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 500
    .line 501
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    move-result v0

    .line 505
    if-nez v0, :cond_19

    .line 506
    .line 507
    const-string v0, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 508
    .line 509
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 510
    .line 511
    .line 512
    move-result v0

    .line 513
    if-nez v0, :cond_19

    .line 514
    .line 515
    const-string v0, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 516
    .line 517
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    if-eqz v0, :cond_f

    .line 522
    .line 523
    goto/16 :goto_2

    .line 524
    .line 525
    :cond_f
    const-string v0, "android.intent.action.BATTERY_LEVEL_CHANGED"

    .line 526
    .line 527
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 528
    .line 529
    .line 530
    move-result v0

    .line 531
    if-eqz v0, :cond_10

    .line 532
    .line 533
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 534
    .line 535
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)Landroid/content/Context;

    .line 536
    .line 537
    .line 538
    move-result-object p1

    .line 539
    new-instance p2, Landroid/content/IntentFilter;

    .line 540
    .line 541
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 542
    .line 543
    invoke-direct {p2, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 544
    .line 545
    .line 546
    const/4 v0, 0x2

    .line 547
    const/4 v1, 0x0

    .line 548
    invoke-virtual {p1, v1, p2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 549
    .line 550
    .line 551
    move-result-object p1

    .line 552
    if-eqz p1, :cond_18

    .line 553
    .line 554
    const-string p2, "level"

    .line 555
    .line 556
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 557
    .line 558
    .line 559
    move-result p2

    .line 560
    const-string v0, "scale"

    .line 561
    .line 562
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 563
    .line 564
    .line 565
    move-result p1

    .line 566
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 567
    .line 568
    invoke-static {p0, p2, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monBatteryStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;II)V

    .line 569
    .line 570
    .line 571
    return-void

    .line 572
    :cond_10
    const-string v0, "com.samsung.android.nearbyscanning"

    .line 573
    .line 574
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 575
    .line 576
    .line 577
    move-result v0

    .line 578
    if-eqz v0, :cond_11

    .line 579
    .line 580
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 581
    .line 582
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->isNearByScanningEnabled()Z

    .line 583
    .line 584
    .line 585
    move-result p1

    .line 586
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 587
    .line 588
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monNearbyScanningStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V

    .line 589
    .line 590
    .line 591
    return-void

    .line 592
    :cond_11
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    .line 593
    .line 594
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    if-eqz v0, :cond_12

    .line 599
    .line 600
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 601
    .line 602
    invoke-static {p0, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monUsbCableStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V

    .line 603
    .line 604
    .line 605
    return-void

    .line 606
    :cond_12
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 607
    .line 608
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 609
    .line 610
    .line 611
    move-result v0

    .line 612
    if-eqz v0, :cond_13

    .line 613
    .line 614
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 615
    .line 616
    invoke-static {p0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monUsbCableStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V

    .line 617
    .line 618
    .line 619
    return-void

    .line 620
    :cond_13
    const-string v0, "com.samsung.android.server.wifi.softap.smarttethering.ssid_changed"

    .line 621
    .line 622
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    if-eqz v0, :cond_14

    .line 627
    .line 628
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 629
    .line 630
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monSmartTetheringSsidRecieved(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 631
    .line 632
    .line 633
    return-void

    .line 634
    :cond_14
    const-string v0, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    .line 635
    .line 636
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 637
    .line 638
    .line 639
    move-result v0

    .line 640
    if-eqz v0, :cond_15

    .line 641
    .line 642
    const-string p1, "android.telephony.extra.PHONE_IN_ECM_STATE"

    .line 643
    .line 644
    invoke-virtual {p2, p1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 645
    .line 646
    .line 647
    move-result p1

    .line 648
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 649
    .line 650
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monEmergencyModeChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V

    .line 651
    .line 652
    .line 653
    return-void

    .line 654
    :cond_15
    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 655
    .line 656
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 657
    .line 658
    .line 659
    move-result p2

    .line 660
    if-eqz p2, :cond_16

    .line 661
    .line 662
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 663
    .line 664
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monDefaultDataSubscriptionChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 665
    .line 666
    .line 667
    return-void

    .line 668
    :cond_16
    const-string p2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 669
    .line 670
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 671
    .line 672
    .line 673
    move-result p2

    .line 674
    if-eqz p2, :cond_17

    .line 675
    .line 676
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 677
    .line 678
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monConnectivityAction(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 679
    .line 680
    .line 681
    return-void

    .line 682
    :cond_17
    const-string p2, "com.android.settings.DEVICE_NAME_CHANGED"

    .line 683
    .line 684
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 685
    .line 686
    .line 687
    move-result p1

    .line 688
    if-eqz p1, :cond_18

    .line 689
    .line 690
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 691
    .line 692
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monDeviceNameChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)V

    .line 693
    .line 694
    .line 695
    :cond_18
    return-void

    .line 696
    :cond_19
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 697
    .line 698
    invoke-static {p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$mgetPowerManager(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;)Landroid/os/PowerManager;

    .line 699
    .line 700
    .line 701
    move-result-object p1

    .line 702
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 703
    .line 704
    .line 705
    move-result p1

    .line 706
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler$CommonBR;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;

    .line 707
    .line 708
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;->-$$Nest$monScreenStateChanged(Lcom/samsung/android/server/wifi/ap/SemWifiApIntentHandler;Z)V

    .line 709
    .line 710
    .line 711
    return-void
.end method
