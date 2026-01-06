.class public Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field public static final AP_CHANGED_CHANNEL_EVENT:I = 0x6f

.field public static final AP_CSA_FINISHED_EVENT:I = 0x6e

.field public static final AP_STA_ASSOCIATION_EVENT:I = 0x66

.field public static final AP_STA_CONNECTED_EVENT:I = 0x77

.field public static final AP_STA_CONNECTED_TYPE:I = 0x7b

.field public static final AP_STA_DEAUTH_EVENT:I = 0x75

.field public static final AP_STA_DISASSOCIATION_EVENT:I = 0x67

.field public static final AP_STA_DISCONNECTED_EVENT:I = 0x65

.field public static final AP_STA_JOIN_EVENT:I = 0x70

.field public static final AP_STA_NEW_EVENT:I = 0x71

.field public static final AP_STA_NOTALLOW_EVENT:I = 0x72

.field public static final AP_STA_NOTIFY_DISASSOCIATION_EVENT:I = 0x73

.field public static final AP_STA_POSSIBLE_PSK_MISMATCH_EVENT:I = 0x6c

.field public static final AP_STA_RECHECK_ASSOSIATION:I = 0x7c

.field public static final AP_STA_REMOVE_EVENT:I = 0x74

.field public static final AP_TSF_INFO_EVENT:I = 0x7a

.field private static final BASE:I = 0x64

.field public static final CMD_AP_STA_DISCONNECT:I = 0x78

.field public static final CMD_AP_STA_RECONNECT:I = 0x79

.field public static final CTRL_EVENT_DRIVER_STATE_EVENT:I = 0x6d

.field private static final TAG:Ljava/lang/String; = "SemWifiApMonitor"

.field public static final WPS_FAIL_EVENT:I = 0x69

.field public static final WPS_OVERLAP_DETECTED:I = 0x76

.field public static final WPS_PIN_NEEDED_EVENT:I = 0x6b

.field public static final WPS_SUCCESS_EVENT:I = 0x68

.field public static final WPS_TIMEOUT_EVENT:I = 0x6a


# instance fields
.field private MHSDBG:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/samsung/android/wifi/SemWifiManager;->MHSDBG:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->MHSDBG:Z

    .line 7
    .line 8
    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, p0}, Landroid/os/Message;->setTarget(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method public hostapdCallbackEvent(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->MHSDBG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "hostapdCallbackEvent,tstr="

    .line 6
    .line 7
    invoke-static {v0, p1}, Lcom/samsung/android/server/wifi/SemApeServiceImplV1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "SemWifiApMonitor"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    const-string v0, " "

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v1, Ljava/util/StringJoiner;

    .line 23
    .line 24
    invoke-direct {v1, v0}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x1

    .line 28
    :goto_0
    array-length v2, p1

    .line 29
    if-ge v0, v2, :cond_1

    .line 30
    .line 31
    aget-object v2, p1, v0

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 34
    .line 35
    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    const/4 v1, 0x0

    .line 44
    aget-object v2, p1, v1

    .line 45
    .line 46
    const-string v3, "AP_STA_CONNECTED_TYPE"

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_2

    .line 53
    .line 54
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->updateGuestClientInfo(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    aget-object v2, p1, v1

    .line 66
    .line 67
    const-string v3, "WPS-OVERLAP-DETECTED"

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    const/4 v3, 0x0

    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    const/16 v2, 0x76

    .line 77
    .line 78
    invoke-static {v3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 83
    .line 84
    .line 85
    :cond_3
    aget-object v2, p1, v1

    .line 86
    .line 87
    const-string v4, "WPS-FAIL"

    .line 88
    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_4

    .line 94
    .line 95
    const/16 v2, 0x69

    .line 96
    .line 97
    invoke-static {v3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 102
    .line 103
    .line 104
    :cond_4
    aget-object v2, p1, v1

    .line 105
    .line 106
    const-string v4, "WPS-SUCCESS"

    .line 107
    .line 108
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_5

    .line 113
    .line 114
    const/16 v2, 0x68

    .line 115
    .line 116
    invoke-static {v3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 121
    .line 122
    .line 123
    :cond_5
    aget-object v2, p1, v1

    .line 124
    .line 125
    const-string v4, "WPS-TIMEOUT"

    .line 126
    .line 127
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-eqz v2, :cond_6

    .line 132
    .line 133
    const/16 v2, 0x6a

    .line 134
    .line 135
    invoke-static {v3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 140
    .line 141
    .line 142
    :cond_6
    aget-object v2, p1, v1

    .line 143
    .line 144
    const-string v4, "WPS-PIN-NEEDED"

    .line 145
    .line 146
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    move-result v2

    .line 150
    if-eqz v2, :cond_7

    .line 151
    .line 152
    const/16 v2, 0x6b

    .line 153
    .line 154
    invoke-static {v3, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    invoke-direct {p0, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 159
    .line 160
    .line 161
    :cond_7
    aget-object v2, p1, v1

    .line 162
    .line 163
    const-string v4, "AP_STA_CONNECTED"

    .line 164
    .line 165
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    if-eqz v2, :cond_8

    .line 170
    .line 171
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApLockManager()Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApLockManager;->newStaJoin(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    const/16 p1, 0x66

    .line 183
    .line 184
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 189
    .line 190
    .line 191
    return-void

    .line 192
    :cond_8
    aget-object v2, p1, v1

    .line 193
    .line 194
    const-string v4, "AP-STA-REMOVE"

    .line 195
    .line 196
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    move-result v2

    .line 200
    if-eqz v2, :cond_9

    .line 201
    .line 202
    const/16 p1, 0x74

    .line 203
    .line 204
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 205
    .line 206
    .line 207
    move-result-object p1

    .line 208
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 209
    .line 210
    .line 211
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 212
    .line 213
    .line 214
    move-result-object p0

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 216
    .line 217
    .line 218
    move-result-object p0

    .line 219
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->removeGuestClientToDB(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_9
    aget-object v2, p1, v1

    .line 224
    .line 225
    const-string v4, "AP-STA-DEAUTH"

    .line 226
    .line 227
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_a

    .line 232
    .line 233
    const/16 p1, 0x75

    .line 234
    .line 235
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 236
    .line 237
    .line 238
    move-result-object p1

    .line 239
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :cond_a
    aget-object v2, p1, v1

    .line 244
    .line 245
    const-string v4, "AP-STA-DISASSOC"

    .line 246
    .line 247
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_b

    .line 252
    .line 253
    const/16 p1, 0x67

    .line 254
    .line 255
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 260
    .line 261
    .line 262
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 267
    .line 268
    .line 269
    move-result-object p0

    .line 270
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->removeGuestClientToDB(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    return-void

    .line 274
    :cond_b
    aget-object v2, p1, v1

    .line 275
    .line 276
    const-string v4, "CTRL-EVENT-DRIVER-STATE"

    .line 277
    .line 278
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-eqz v2, :cond_c

    .line 283
    .line 284
    const/16 p1, 0x6d

    .line 285
    .line 286
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 287
    .line 288
    .line 289
    move-result-object p1

    .line 290
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 291
    .line 292
    .line 293
    return-void

    .line 294
    :cond_c
    aget-object v2, p1, v1

    .line 295
    .line 296
    const-string v4, "AP-STA-POSSIBLE-PSK-MISMATCH"

    .line 297
    .line 298
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 299
    .line 300
    .line 301
    move-result v2

    .line 302
    if-eqz v2, :cond_d

    .line 303
    .line 304
    const/16 p1, 0x6c

    .line 305
    .line 306
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 307
    .line 308
    .line 309
    move-result-object p1

    .line 310
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 311
    .line 312
    .line 313
    return-void

    .line 314
    :cond_d
    aget-object v2, p1, v1

    .line 315
    .line 316
    const-string v4, "AP-CSA-FINISHED"

    .line 317
    .line 318
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-eqz v2, :cond_e

    .line 323
    .line 324
    const/16 p1, 0x6e

    .line 325
    .line 326
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 327
    .line 328
    .line 329
    move-result-object p1

    .line 330
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :cond_e
    aget-object v2, p1, v1

    .line 335
    .line 336
    const-string v4, "AP-STA-NOTAllOW"

    .line 337
    .line 338
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v2

    .line 342
    if-eqz v2, :cond_f

    .line 343
    .line 344
    const/16 p1, 0x72

    .line 345
    .line 346
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 347
    .line 348
    .line 349
    move-result-object p1

    .line 350
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 351
    .line 352
    .line 353
    return-void

    .line 354
    :cond_f
    aget-object v2, p1, v1

    .line 355
    .line 356
    const-string v4, "AP-STA-NOTIF-DISASSOC"

    .line 357
    .line 358
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 359
    .line 360
    .line 361
    move-result v2

    .line 362
    if-eqz v2, :cond_10

    .line 363
    .line 364
    const/16 p1, 0x65

    .line 365
    .line 366
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 367
    .line 368
    .line 369
    move-result-object p1

    .line 370
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 371
    .line 372
    .line 373
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 374
    .line 375
    .line 376
    move-result-object p0

    .line 377
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getSoftApManager()Lcom/samsung/android/server/wifi/ap/SemSoftApManager;

    .line 378
    .line 379
    .line 380
    move-result-object p0

    .line 381
    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/ap/SemSoftApManager;->removeGuestClientToDB(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 385
    .line 386
    .line 387
    move-result-object p0

    .line 388
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getFrameworkFacade()Lcom/samsung/android/server/wifi/SemFrameworkFacade;

    .line 389
    .line 390
    .line 391
    move-result-object p0

    .line 392
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/SemFrameworkFacade;->isAdvancedAutohotspotSupported()Z

    .line 393
    .line 394
    .line 395
    return-void

    .line 396
    :cond_10
    aget-object v2, p1, v1

    .line 397
    .line 398
    const-string v4, "AP-STA-NEW"

    .line 399
    .line 400
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 401
    .line 402
    .line 403
    move-result v2

    .line 404
    if-eqz v2, :cond_11

    .line 405
    .line 406
    const/16 p1, 0x71

    .line 407
    .line 408
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 413
    .line 414
    .line 415
    return-void

    .line 416
    :cond_11
    aget-object p1, p1, v1

    .line 417
    .line 418
    const-string v1, "AP_TSF_INFO"

    .line 419
    .line 420
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    move-result p1

    .line 424
    if-eqz p1, :cond_12

    .line 425
    .line 426
    const/16 p1, 0x7a

    .line 427
    .line 428
    invoke-static {v3, p1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    .line 429
    .line 430
    .line 431
    move-result-object p1

    .line 432
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->sendMessage(Landroid/os/Message;)V

    .line 433
    .line 434
    .line 435
    :cond_12
    return-void
.end method

.method public declared-synchronized registerHandler(Landroid/os/Handler;)V
    .locals 3

    .line 1
    const-string v0, "registerHandler"

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->MHSDBG:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const-string v1, "SemWifiApMonitor"

    .line 9
    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p1

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApMonitor;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    monitor-exit p0

    .line 31
    return-void

    .line 32
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p1
.end method
