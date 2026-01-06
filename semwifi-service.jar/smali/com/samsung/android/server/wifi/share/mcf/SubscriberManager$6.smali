.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;
.super Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;I)V
    .locals 9

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const-string p0, "WifiProfileShare.McfSub"

    .line 4
    .line 5
    const-string p1, "-ME--- onDeviceDiscovered(pass), mcfDevice is null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContentsJson()Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    const-string p0, "WifiProfileShare.McfSub"

    .line 22
    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string p2, " json is null"

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->NONE:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 45
    .line 46
    const-string v2, "state"

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    :try_start_0
    const-string v2, "state"

    .line 55
    .line 56
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    check-cast v2, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v2}, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    .line 63
    .line 64
    .line 65
    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    goto :goto_0

    .line 67
    :catch_0
    const-string v2, "WifiProfileShare.McfSub"

    .line 68
    .line 69
    const-string v3, "-ME--- can not get state"

    .line 70
    .line 71
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    .line 73
    .line 74
    :cond_2
    :goto_0
    const-string v2, "WifiProfileShare.McfSub"

    .line 75
    .line 76
    const-string v3, " received(pass) message state: "

    .line 77
    .line 78
    invoke-static {p2, v3}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string v4, ", postAdv:"

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 95
    .line 96
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmIsPostAdvertiseStarted(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    sget-object v2, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$7;->$SwitchMap$com$samsung$android$server$wifi$share$mcf$AdvertiseState:[I

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    aget v2, v2, v3

    .line 117
    .line 118
    const/4 v3, 0x1

    .line 119
    if-eq v2, v3, :cond_15

    .line 120
    .line 121
    const/4 v4, 0x2

    .line 122
    if-eq v2, v4, :cond_13

    .line 123
    .line 124
    const/4 v5, 0x3

    .line 125
    if-eq v2, v5, :cond_3

    .line 126
    .line 127
    const-string p0, "WifiProfileShare.McfSub"

    .line 128
    .line 129
    const-string p1, " unhandled state: "

    .line 130
    .line 131
    invoke-static {p2, p1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    goto/16 :goto_8

    .line 150
    .line 151
    :cond_3
    const-string v1, "configKey"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v1

    .line 157
    if-eqz v1, :cond_16

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->isInContact()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_4

    .line 164
    .line 165
    const-string p0, "WifiProfileShare.McfSub"

    .line 166
    .line 167
    const-string p1, " not exist in my contact list"

    .line 168
    .line 169
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    .line 175
    .line 176
    return-void

    .line 177
    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->isInContact()I

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-ne v1, v4, :cond_5

    .line 182
    .line 183
    const-string p0, "WifiProfileShare.McfSub"

    .line 184
    .line 185
    const-string p1, " is my device. please check samsung account"

    .line 186
    .line 187
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object p1

    .line 191
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    return-void

    .line 195
    :cond_5
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 196
    .line 197
    invoke-static {v1, p2, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$misAlreadyConfirmed(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Ljava/lang/String;Lorg/json/JSONObject;)Z

    .line 198
    .line 199
    .line 200
    move-result v1

    .line 201
    if-eqz v1, :cond_6

    .line 202
    .line 203
    const-string p0, "WifiProfileShare.McfSub"

    .line 204
    .line 205
    const-string p1, " already confirmed before"

    .line 206
    .line 207
    invoke-static {p2, p1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    return-void

    .line 215
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    .line 216
    .line 217
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .line 219
    .line 220
    :try_start_1
    const-string v2, "configKey"

    .line 221
    .line 222
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v2

    .line 230
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    const-string v2, "configKey_hotspot"

    .line 234
    .line 235
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    if-eqz v2, :cond_7

    .line 240
    .line 241
    const-string v2, "configKey_hotspot"

    .line 242
    .line 243
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 252
    .line 253
    .line 254
    goto :goto_1

    .line 255
    :catch_1
    const-string v0, "WifiProfileShare.McfSub"

    .line 256
    .line 257
    new-instance v2, Ljava/lang/StringBuilder;

    .line 258
    .line 259
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 260
    .line 261
    .line 262
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    .line 264
    .line 265
    const-string v4, " json:configKey parsing error"

    .line 266
    .line 267
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    .line 269
    .line 270
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    :cond_7
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    if-nez v0, :cond_12

    .line 282
    .line 283
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 284
    .line 285
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmPasswordData(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 286
    .line 287
    .line 288
    move-result-object v0

    .line 289
    if-nez v0, :cond_8

    .line 290
    .line 291
    goto/16 :goto_7

    .line 292
    .line 293
    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    const/4 v2, 0x0

    .line 298
    move v4, v2

    .line 299
    move v6, v4

    .line 300
    :cond_9
    :goto_2
    if-ge v6, v0, :cond_a

    .line 301
    .line 302
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    add-int/lit8 v6, v6, 0x1

    .line 307
    .line 308
    check-cast v7, Ljava/lang/String;

    .line 309
    .line 310
    iget-object v8, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 311
    .line 312
    invoke-static {v8}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmPasswordData(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 313
    .line 314
    .line 315
    move-result-object v8

    .line 316
    invoke-virtual {v8}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v8

    .line 320
    invoke-static {v7, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    if-eqz v7, :cond_9

    .line 325
    .line 326
    add-int/lit8 v4, v4, 0x1

    .line 327
    .line 328
    goto :goto_2

    .line 329
    :cond_a
    if-nez v4, :cond_b

    .line 330
    .line 331
    const-string p0, "WifiProfileShare.McfSub"

    .line 332
    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    const-string p2, " not matched configKey req:"

    .line 342
    .line 343
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object p1

    .line 353
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    return-void

    .line 357
    :cond_b
    const-string v0, "WifiProfileShare.McfSub"

    .line 358
    .line 359
    const-string v1, " hello my friend! authentication completed.authType:"

    .line 360
    .line 361
    invoke-static {p2, v1}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getAdditionalAuthType()I

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v1

    .line 376
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    .line 378
    .line 379
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 380
    .line 381
    invoke-static {v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    monitor-enter v0

    .line 386
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 387
    .line 388
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;

    .line 389
    .line 390
    .line 391
    move-result-object v1

    .line 392
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 393
    .line 394
    .line 395
    move-result v1

    .line 396
    if-lt v1, v5, :cond_d

    .line 397
    .line 398
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 399
    .line 400
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;

    .line 401
    .line 402
    .line 403
    move-result-object v1

    .line 404
    invoke-interface {v1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v1

    .line 408
    if-eqz v1, :cond_c

    .line 409
    .line 410
    goto :goto_3

    .line 411
    :cond_c
    const-string p1, "WifiProfileShare.McfSub"

    .line 412
    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    .line 420
    .line 421
    const-string p2, " skip to add, keep device list is full"

    .line 422
    .line 423
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 427
    .line 428
    .line 429
    move-result-object p2

    .line 430
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    .line 432
    .line 433
    goto/16 :goto_5

    .line 434
    .line 435
    :catchall_0
    move-exception p0

    .line 436
    goto/16 :goto_6

    .line 437
    .line 438
    :cond_d
    :goto_3
    new-instance v1, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6$1;

    .line 439
    .line 440
    invoke-direct {v1, p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6$1;-><init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;)V

    .line 441
    .line 442
    .line 443
    new-instance v4, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;

    .line 444
    .line 445
    invoke-direct {v4, p1, v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$KeepGattDeviceInfo;-><init>(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;)V

    .line 446
    .line 447
    .line 448
    iget-object v6, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 449
    .line 450
    invoke-static {v6}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;

    .line 451
    .line 452
    .line 453
    move-result-object v6

    .line 454
    invoke-interface {v6, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 458
    .line 459
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmMcfSubscriber(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/mcf/McfSubscriber;

    .line 460
    .line 461
    .line 462
    move-result-object v4

    .line 463
    invoke-interface {v4, p1, v3, v1}, Lcom/samsung/android/mcf/McfSubscriber;->keepDiscoveredDevice(Lcom/samsung/android/mcf/McfDevice;ZLcom/samsung/android/mcf/discovery/KeepDeviceCallback;)Z

    .line 464
    .line 465
    .line 466
    const-string p1, "WifiProfileShare.McfSub"

    .line 467
    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    .line 469
    .line 470
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    const-string v4, " add to keep device list, size: "

    .line 477
    .line 478
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    iget-object v4, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 482
    .line 483
    invoke-static {v4}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;

    .line 484
    .line 485
    .line 486
    move-result-object v4

    .line 487
    invoke-interface {v4}, Ljava/util/Map;->size()I

    .line 488
    .line 489
    .line 490
    move-result v4

    .line 491
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 492
    .line 493
    .line 494
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    invoke-static {p1, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    .line 500
    .line 501
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 502
    .line 503
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    .line 504
    .line 505
    .line 506
    move-result-object p1

    .line 507
    if-eqz p1, :cond_f

    .line 508
    .line 509
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 510
    .line 511
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 516
    .line 517
    invoke-static {v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;

    .line 518
    .line 519
    .line 520
    move-result-object v1

    .line 521
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 522
    .line 523
    .line 524
    move-result v1

    .line 525
    if-lez v1, :cond_e

    .line 526
    .line 527
    goto :goto_4

    .line 528
    :cond_e
    move v3, v2

    .line 529
    :goto_4
    invoke-interface {p1, v3}, Lcom/samsung/android/server/wifi/share/mcf/ISubscriberCallback;->onFoundDevicesForPassword(Z)V

    .line 530
    .line 531
    .line 532
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 533
    .line 534
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmIsPostAdvertiseStarted(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z

    .line 535
    .line 536
    .line 537
    move-result p1

    .line 538
    if-eqz p1, :cond_10

    .line 539
    .line 540
    const-string p1, "WifiProfileShare.McfSub"

    .line 541
    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    .line 543
    .line 544
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    const-string p2, " request password"

    .line 551
    .line 552
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    .line 554
    .line 555
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object p2

    .line 559
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 563
    .line 564
    invoke-virtual {p1, v2}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->postStartScanForPassword(Z)V

    .line 565
    .line 566
    .line 567
    :cond_10
    :goto_5
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 568
    .line 569
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmIsPasswordAdvertiseTriggered(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z

    .line 570
    .line 571
    .line 572
    move-result p1

    .line 573
    if-eqz p1, :cond_11

    .line 574
    .line 575
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 576
    .line 577
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmKeepGattDeviceList(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Ljava/util/Map;

    .line 578
    .line 579
    .line 580
    move-result-object p1

    .line 581
    invoke-interface {p1}, Ljava/util/Map;->size()I

    .line 582
    .line 583
    .line 584
    move-result p1

    .line 585
    if-lt p1, v5, :cond_11

    .line 586
    .line 587
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 588
    .line 589
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mstopAdvertise(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    .line 590
    .line 591
    .line 592
    :cond_11
    monitor-exit v0

    .line 593
    goto :goto_8

    .line 594
    :goto_6
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 595
    throw p0

    .line 596
    :cond_12
    :goto_7
    const-string p0, "WifiProfileShare.McfSub"

    .line 597
    .line 598
    new-instance p1, Ljava/lang/StringBuilder;

    .line 599
    .line 600
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 601
    .line 602
    .line 603
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    .line 605
    .line 606
    const-string p2, " config key is null"

    .line 607
    .line 608
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object p1

    .line 615
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    return-void

    .line 619
    :cond_13
    const-string v1, "WifiProfileShare.McfSub"

    .line 620
    .line 621
    new-instance v2, Ljava/lang/StringBuilder;

    .line 622
    .line 623
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    .line 625
    .line 626
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    .line 628
    .line 629
    const-string v3, " rejected"

    .line 630
    .line 631
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 632
    .line 633
    .line 634
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v2

    .line 638
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    .line 640
    .line 641
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 642
    .line 643
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mremoveKeepDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V

    .line 644
    .line 645
    .line 646
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 647
    .line 648
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmIsPasswordAdvertiseTriggered(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Z

    .line 649
    .line 650
    .line 651
    move-result p1

    .line 652
    if-nez p1, :cond_14

    .line 653
    .line 654
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 655
    .line 656
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fgetmPasswordData(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 657
    .line 658
    .line 659
    move-result-object v1

    .line 660
    invoke-static {p1, v1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mstartAdvertise(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    .line 661
    .line 662
    .line 663
    :cond_14
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 664
    .line 665
    invoke-static {p0, p2, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$maddConfirmHistory(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 666
    .line 667
    .line 668
    goto :goto_8

    .line 669
    :cond_15
    const-string v1, "WifiProfileShare.McfSub"

    .line 670
    .line 671
    new-instance v2, Ljava/lang/StringBuilder;

    .line 672
    .line 673
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    const-string v3, " delivered password data"

    .line 680
    .line 681
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    .line 683
    .line 684
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 685
    .line 686
    .line 687
    move-result-object v2

    .line 688
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    .line 690
    .line 691
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 692
    .line 693
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$fputmReceivedPasswordMcfDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V

    .line 694
    .line 695
    .line 696
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 697
    .line 698
    invoke-static {v1, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mcallbackToClientForPassword(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V

    .line 699
    .line 700
    .line 701
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 702
    .line 703
    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mstopScan(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V

    .line 704
    .line 705
    .line 706
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 707
    .line 708
    invoke-static {p0, p2, v0}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$maddConfirmHistory(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 709
    .line 710
    .line 711
    :cond_16
    :goto_8
    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/mcf/McfDevice;I)V
    .locals 2

    .line 1
    const-string p2, "WifiProfileShare.McfSub"

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    const-string p0, "-ME--- mPasswordDiscoverCallback::onDeviceRemoved mcf device is null"

    .line 6
    .line 7
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, " onDeviceRemoved"

    .line 16
    .line 17
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/SemClientModeImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    .line 25
    .line 26
    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mremoveKeepDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method
