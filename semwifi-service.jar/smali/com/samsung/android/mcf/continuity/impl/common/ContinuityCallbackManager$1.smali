.class final Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager$1;
.super Lcom/samsung/android/mcf/continuity/interfaces/IContinuitySdkCallback$Stub;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string p1, "com.samsung.android.mcf.continuity.interfaces.IContinuitySdkCallback"

    .line 7
    .line 8
    invoke-virtual {p0, p0, p1}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onCallback(Landroid/os/Message;)V
    .locals 18

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    const-string v2, "onCallback"

    .line 4
    .line 5
    const-string v3, "ContinuityCallbackManager"

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    const-string v0, "null message"

    .line 10
    .line 11
    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget v4, v1, Landroid/os/Message;->what:I

    .line 16
    .line 17
    const-string v5, "KEY_RESOURCE_ID"

    .line 18
    .line 19
    const-string v6, "KEY_MESSAGE_DATA"

    .line 20
    .line 21
    const-string v7, "KEY_COMMAND_TYPE"

    .line 22
    .line 23
    const-string v10, "null sessionStatusListenerWrapper"

    .line 24
    .line 25
    const-string v11, "KEY_NETWORK_TYPE"

    .line 26
    .line 27
    const-string v12, "invalid resourceId"

    .line 28
    .line 29
    const-string v13, "null responseCallback"

    .line 30
    .line 31
    const-string v14, "null asrListenerWrapper"

    .line 32
    .line 33
    const-string v15, "null searchCallback"

    .line 34
    .line 35
    const-string v8, "null deviceStateListener"

    .line 36
    .line 37
    const-string v9, "null btMac"

    .line 38
    .line 39
    const-string v0, "null parameters"

    .line 40
    .line 41
    packed-switch v4, :pswitch_data_0

    .line 42
    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    const-string v1, "invalid callbackId = "

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :pswitch_0
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getMessageId(Landroid/os/Message;)B

    .line 67
    .line 68
    .line 69
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 70
    .line 71
    instance-of v5, v4, Landroid/os/Bundle;

    .line 72
    .line 73
    if-nez v5, :cond_1

    .line 74
    .line 75
    const/4 v4, -0x1

    .line 76
    const/4 v5, -0x1

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    check-cast v4, Landroid/os/Bundle;

    .line 79
    .line 80
    const/4 v5, -0x1

    .line 81
    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 82
    .line 83
    .line 84
    move-result v17

    .line 85
    move/from16 v4, v17

    .line 86
    .line 87
    :goto_0
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getStatus(Landroid/os/Message;)I

    .line 88
    .line 89
    .line 90
    const-string v1, "handleCommandSent"

    .line 91
    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    if-ne v4, v5, :cond_2

    .line 95
    .line 96
    goto :goto_1

    .line 97
    :cond_2
    const-string v0, "null sendCommandCallbackWrapper"

    .line 98
    .line 99
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    return-void

    .line 103
    :cond_3
    :goto_1
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :pswitch_1
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 112
    .line 113
    instance-of v5, v4, Landroid/os/Bundle;

    .line 114
    .line 115
    if-nez v5, :cond_4

    .line 116
    .line 117
    const/4 v8, 0x0

    .line 118
    goto :goto_2

    .line 119
    :cond_4
    check-cast v4, Landroid/os/Bundle;

    .line 120
    .line 121
    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    :goto_2
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getMessageId(Landroid/os/Message;)B

    .line 126
    .line 127
    .line 128
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    .line 130
    instance-of v4, v1, Landroid/os/Bundle;

    .line 131
    .line 132
    if-nez v4, :cond_5

    .line 133
    .line 134
    const/4 v1, -0x1

    .line 135
    const/4 v5, -0x1

    .line 136
    goto :goto_3

    .line 137
    :cond_5
    check-cast v1, Landroid/os/Bundle;

    .line 138
    .line 139
    const/4 v5, -0x1

    .line 140
    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result v17

    .line 144
    move/from16 v1, v17

    .line 145
    .line 146
    :goto_3
    const-string v4, "handleCommandReceived"

    .line 147
    .line 148
    if-eqz v2, :cond_7

    .line 149
    .line 150
    if-eqz v8, :cond_7

    .line 151
    .line 152
    if-ne v1, v5, :cond_6

    .line 153
    .line 154
    goto :goto_4

    .line 155
    :cond_6
    const-string v0, "null commandListenerWrapper"

    .line 156
    .line 157
    invoke-static {v3, v4, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return-void

    .line 161
    :cond_7
    :goto_4
    invoke-static {v3, v4, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :pswitch_2
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 170
    .line 171
    instance-of v4, v1, Landroid/os/Bundle;

    .line 172
    .line 173
    const/16 v5, 0x641

    .line 174
    .line 175
    if-nez v4, :cond_8

    .line 176
    .line 177
    move v1, v5

    .line 178
    goto :goto_5

    .line 179
    :cond_8
    check-cast v1, Landroid/os/Bundle;

    .line 180
    .line 181
    const-string v4, "KEY_ASR_STATUS"

    .line 182
    .line 183
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    :goto_5
    const-string v4, "handleAsrStatusChanged"

    .line 188
    .line 189
    if-eqz v2, :cond_a

    .line 190
    .line 191
    if-ne v1, v5, :cond_9

    .line 192
    .line 193
    goto :goto_6

    .line 194
    :cond_9
    invoke-static {v3, v4, v14}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_a
    :goto_6
    invoke-static {v3, v4, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    return-void

    .line 202
    :pswitch_3
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    .line 208
    instance-of v4, v1, Landroid/os/Bundle;

    .line 209
    .line 210
    if-nez v4, :cond_b

    .line 211
    .line 212
    const/4 v8, 0x0

    .line 213
    goto :goto_7

    .line 214
    :cond_b
    check-cast v1, Landroid/os/Bundle;

    .line 215
    .line 216
    const-string v4, "KEY_ASR_RESULT"

    .line 217
    .line 218
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v8

    .line 222
    :goto_7
    const-string v1, "handleAsrResult"

    .line 223
    .line 224
    if-eqz v2, :cond_d

    .line 225
    .line 226
    if-nez v8, :cond_c

    .line 227
    .line 228
    goto :goto_8

    .line 229
    :cond_c
    invoke-static {v3, v1, v14}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    return-void

    .line 233
    :cond_d
    :goto_8
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    return-void

    .line 237
    :pswitch_4
    const-string v0, "handleResponseStopped"

    .line 238
    .line 239
    invoke-static {v3, v0, v13}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    return-void

    .line 243
    :pswitch_5
    const-string v0, "handleResponseStarted"

    .line 244
    .line 245
    invoke-static {v3, v0, v13}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void

    .line 249
    :pswitch_6
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getEvent(Landroid/os/Message;)I

    .line 250
    .line 251
    .line 252
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 253
    .line 254
    instance-of v1, v0, Landroid/os/Bundle;

    .line 255
    .line 256
    if-nez v1, :cond_e

    .line 257
    .line 258
    goto :goto_9

    .line 259
    :cond_e
    check-cast v0, Landroid/os/Bundle;

    .line 260
    .line 261
    const-string v1, "KEY_CONTINUITY_SEARCH_PACKET_BUNDLE"

    .line 262
    .line 263
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    instance-of v1, v0, Landroid/os/Bundle;

    .line 268
    .line 269
    if-nez v1, :cond_f

    .line 270
    .line 271
    goto :goto_9

    .line 272
    :cond_f
    check-cast v0, Landroid/os/Bundle;

    .line 273
    .line 274
    const-string v1, "KEY_SEARCH_ID"

    .line 275
    .line 276
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    if-nez v1, :cond_10

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_10
    const-string v1, "KEY_ADVERTISEMENT_DATA"

    .line 284
    .line 285
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 286
    .line 287
    .line 288
    const-string v1, "KEY_PROXIMITY_CONFIG_DATA"

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 291
    .line 292
    .line 293
    const-string v1, "KEY_ADDITIONAL_INFO"

    .line 294
    .line 295
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByte(Ljava/lang/String;)B

    .line 296
    .line 297
    .line 298
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 299
    .line 300
    .line 301
    :goto_9
    const-string v0, "null listenCallback"

    .line 302
    .line 303
    const-string v1, "handleListened"

    .line 304
    .line 305
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    return-void

    .line 309
    :pswitch_7
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getEvent(Landroid/os/Message;)I

    .line 310
    .line 311
    .line 312
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    const-string v2, "handleSearched"

    .line 317
    .line 318
    if-nez v1, :cond_11

    .line 319
    .line 320
    invoke-static {v3, v2, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    .line 322
    .line 323
    return-void

    .line 324
    :cond_11
    invoke-static {v3, v2, v15}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    .line 326
    .line 327
    return-void

    .line 328
    :pswitch_8
    const-string v0, "handleSearchStopped"

    .line 329
    .line 330
    invoke-static {v3, v0, v15}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :pswitch_9
    const-string v0, "handleSearchStarted"

    .line 335
    .line 336
    invoke-static {v3, v0, v15}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .line 338
    .line 339
    return-void

    .line 340
    :pswitch_a
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v2

    .line 344
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 345
    .line 346
    instance-of v5, v4, Landroid/os/Bundle;

    .line 347
    .line 348
    if-nez v5, :cond_12

    .line 349
    .line 350
    const/4 v5, -0x1

    .line 351
    goto :goto_a

    .line 352
    :cond_12
    check-cast v4, Landroid/os/Bundle;

    .line 353
    .line 354
    const/4 v5, -0x1

    .line 355
    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 356
    .line 357
    .line 358
    :goto_a
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 359
    .line 360
    instance-of v7, v4, Landroid/os/Bundle;

    .line 361
    .line 362
    if-nez v7, :cond_13

    .line 363
    .line 364
    goto :goto_b

    .line 365
    :cond_13
    check-cast v4, Landroid/os/Bundle;

    .line 366
    .line 367
    const-string v7, "KEY_COMMAND_ID"

    .line 368
    .line 369
    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 370
    .line 371
    .line 372
    :goto_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 373
    .line 374
    instance-of v4, v1, Landroid/os/Bundle;

    .line 375
    .line 376
    if-nez v4, :cond_14

    .line 377
    .line 378
    const/4 v8, 0x0

    .line 379
    goto :goto_c

    .line 380
    :cond_14
    check-cast v1, Landroid/os/Bundle;

    .line 381
    .line 382
    invoke-virtual {v1, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 383
    .line 384
    .line 385
    move-result-object v8

    .line 386
    :goto_c
    const-string v1, "handleMyDeviceHandlerMessageReceived"

    .line 387
    .line 388
    if-eqz v2, :cond_16

    .line 389
    .line 390
    if-nez v8, :cond_15

    .line 391
    .line 392
    goto :goto_d

    .line 393
    :cond_15
    const-string v0, "null handlerMessageListener"

    .line 394
    .line 395
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    return-void

    .line 399
    :cond_16
    :goto_d
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    return-void

    .line 403
    :pswitch_b
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 404
    .line 405
    instance-of v1, v0, Landroid/os/Bundle;

    .line 406
    .line 407
    if-nez v1, :cond_17

    .line 408
    .line 409
    const/4 v0, -0x1

    .line 410
    const/4 v1, -0x1

    .line 411
    goto :goto_e

    .line 412
    :cond_17
    check-cast v0, Landroid/os/Bundle;

    .line 413
    .line 414
    const/4 v1, -0x1

    .line 415
    invoke-virtual {v0, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 416
    .line 417
    .line 418
    move-result v17

    .line 419
    move/from16 v0, v17

    .line 420
    .line 421
    :goto_e
    const-string v2, "handleLocalResourceUpdated"

    .line 422
    .line 423
    if-ne v0, v1, :cond_18

    .line 424
    .line 425
    invoke-static {v3, v2, v12}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    return-void

    .line 429
    :cond_18
    invoke-static {v3, v2, v8}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    return-void

    .line 433
    :pswitch_c
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 438
    .line 439
    instance-of v2, v1, Landroid/os/Bundle;

    .line 440
    .line 441
    if-nez v2, :cond_19

    .line 442
    .line 443
    const/4 v1, -0x1

    .line 444
    const/4 v2, -0x1

    .line 445
    goto :goto_f

    .line 446
    :cond_19
    check-cast v1, Landroid/os/Bundle;

    .line 447
    .line 448
    const/4 v2, -0x1

    .line 449
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 450
    .line 451
    .line 452
    move-result v17

    .line 453
    move/from16 v1, v17

    .line 454
    .line 455
    :goto_f
    const-string v4, "handleRemoteResourceUpdated"

    .line 456
    .line 457
    if-nez v0, :cond_1a

    .line 458
    .line 459
    invoke-static {v3, v4, v9}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    .line 461
    .line 462
    return-void

    .line 463
    :cond_1a
    if-ne v1, v2, :cond_1b

    .line 464
    .line 465
    invoke-static {v3, v4, v12}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    return-void

    .line 469
    :cond_1b
    invoke-static {v3, v4, v8}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    return-void

    .line 473
    :pswitch_d
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 474
    .line 475
    instance-of v1, v0, Landroid/os/Bundle;

    .line 476
    .line 477
    if-nez v1, :cond_1c

    .line 478
    .line 479
    :goto_10
    const/16 v16, 0x0

    .line 480
    .line 481
    goto :goto_11

    .line 482
    :cond_1c
    check-cast v0, Landroid/os/Bundle;

    .line 483
    .line 484
    const-string v1, "KEY_THIS_ACTION_STATES"

    .line 485
    .line 486
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 487
    .line 488
    .line 489
    move-result-object v0

    .line 490
    if-nez v0, :cond_1d

    .line 491
    .line 492
    goto :goto_10

    .line 493
    :cond_1d
    invoke-virtual {v0}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    .line 494
    .line 495
    .line 496
    move-result-object v0

    .line 497
    new-instance v1, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback$$ExternalSyntheticLambda0;

    .line 498
    .line 499
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 500
    .line 501
    .line 502
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 503
    .line 504
    .line 505
    move-result-object v0

    .line 506
    new-instance v1, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback$$ExternalSyntheticLambda2;

    .line 507
    .line 508
    const/4 v2, 0x1

    .line 509
    invoke-direct {v1, v2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback$$ExternalSyntheticLambda2;-><init>(I)V

    .line 510
    .line 511
    .line 512
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 513
    .line 514
    .line 515
    move-result-object v0

    .line 516
    new-instance v1, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback$$ExternalSyntheticLambda2;

    .line 517
    .line 518
    const/4 v2, 0x0

    .line 519
    invoke-direct {v1, v2}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback$$ExternalSyntheticLambda2;-><init>(I)V

    .line 520
    .line 521
    .line 522
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    .line 523
    .line 524
    .line 525
    move-result-object v0

    .line 526
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 527
    .line 528
    .line 529
    move-result-object v1

    .line 530
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    check-cast v0, Ljava/util/List;

    .line 535
    .line 536
    move-object/from16 v16, v0

    .line 537
    .line 538
    :goto_11
    const-string v0, "handleThisActionStatesUpdated"

    .line 539
    .line 540
    if-nez v16, :cond_1e

    .line 541
    .line 542
    const-string v1, "null thisActionStates"

    .line 543
    .line 544
    invoke-static {v3, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    return-void

    .line 548
    :cond_1e
    invoke-static {v3, v0, v8}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    .line 550
    .line 551
    return-void

    .line 552
    :pswitch_e
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 553
    .line 554
    instance-of v1, v0, Landroid/os/Bundle;

    .line 555
    .line 556
    if-nez v1, :cond_1f

    .line 557
    .line 558
    const/16 v16, 0x0

    .line 559
    .line 560
    goto :goto_12

    .line 561
    :cond_1f
    check-cast v0, Landroid/os/Bundle;

    .line 562
    .line 563
    const-string v1, "KEY_THIS_APP_DATA"

    .line 564
    .line 565
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 566
    .line 567
    .line 568
    move-result-object v0

    .line 569
    move-object/from16 v16, v0

    .line 570
    .line 571
    :goto_12
    const-string v0, "handleThisAppDataUpdated"

    .line 572
    .line 573
    if-nez v16, :cond_20

    .line 574
    .line 575
    const-string v1, "null thisAppData"

    .line 576
    .line 577
    invoke-static {v3, v0, v1}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    return-void

    .line 581
    :cond_20
    invoke-static {v3, v0, v8}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    return-void

    .line 585
    :pswitch_f
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 586
    .line 587
    .line 588
    move-result-object v0

    .line 589
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 590
    .line 591
    instance-of v4, v2, Landroid/os/Bundle;

    .line 592
    .line 593
    if-nez v4, :cond_21

    .line 594
    .line 595
    goto :goto_13

    .line 596
    :cond_21
    check-cast v2, Landroid/os/Bundle;

    .line 597
    .line 598
    const-string v4, "KEY_ACTION_ID"

    .line 599
    .line 600
    const/4 v5, -0x1

    .line 601
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 602
    .line 603
    .line 604
    :goto_13
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 605
    .line 606
    instance-of v4, v2, Landroid/os/Bundle;

    .line 607
    .line 608
    if-nez v4, :cond_22

    .line 609
    .line 610
    goto :goto_14

    .line 611
    :cond_22
    check-cast v2, Landroid/os/Bundle;

    .line 612
    .line 613
    const-string v4, "KEY_ACTION_VALUE"

    .line 614
    .line 615
    const/4 v5, 0x0

    .line 616
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 617
    .line 618
    .line 619
    :goto_14
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 620
    .line 621
    instance-of v4, v2, Landroid/os/Bundle;

    .line 622
    .line 623
    if-nez v4, :cond_23

    .line 624
    .line 625
    const/4 v5, -0x1

    .line 626
    goto :goto_15

    .line 627
    :cond_23
    check-cast v2, Landroid/os/Bundle;

    .line 628
    .line 629
    const-string v4, "KEY_ACTION_STATUS"

    .line 630
    .line 631
    const/4 v5, -0x1

    .line 632
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 633
    .line 634
    .line 635
    :goto_15
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 636
    .line 637
    instance-of v2, v1, Landroid/os/Bundle;

    .line 638
    .line 639
    if-nez v2, :cond_24

    .line 640
    .line 641
    goto :goto_16

    .line 642
    :cond_24
    check-cast v1, Landroid/os/Bundle;

    .line 643
    .line 644
    const-string v2, "KEY_ACTION_REASON"

    .line 645
    .line 646
    invoke-virtual {v1, v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 647
    .line 648
    .line 649
    :goto_16
    const-string v1, "handleInvokeActionResult"

    .line 650
    .line 651
    if-nez v0, :cond_25

    .line 652
    .line 653
    invoke-static {v3, v1, v9}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    return-void

    .line 657
    :cond_25
    const-string v0, "null actionCallbackWrapper"

    .line 658
    .line 659
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    .line 661
    .line 662
    return-void

    .line 663
    :pswitch_10
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v0

    .line 667
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 668
    .line 669
    instance-of v4, v2, Landroid/os/Bundle;

    .line 670
    .line 671
    if-nez v4, :cond_26

    .line 672
    .line 673
    goto :goto_17

    .line 674
    :cond_26
    check-cast v2, Landroid/os/Bundle;

    .line 675
    .line 676
    const-string v4, "KEY_SETUP_STATUS"

    .line 677
    .line 678
    const/16 v5, 0x83

    .line 679
    .line 680
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 681
    .line 682
    .line 683
    :goto_17
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 684
    .line 685
    instance-of v2, v1, Landroid/os/Bundle;

    .line 686
    .line 687
    if-nez v2, :cond_27

    .line 688
    .line 689
    goto :goto_18

    .line 690
    :cond_27
    check-cast v1, Landroid/os/Bundle;

    .line 691
    .line 692
    const-string v2, "KEY_RPA"

    .line 693
    .line 694
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 695
    .line 696
    .line 697
    :goto_18
    const-string v1, "handleSetupStatusChanged"

    .line 698
    .line 699
    if-nez v0, :cond_28

    .line 700
    .line 701
    invoke-static {v3, v1, v9}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .line 703
    .line 704
    return-void

    .line 705
    :cond_28
    const-string v0, "null setupStatusListenerWrapper"

    .line 706
    .line 707
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    return-void

    .line 711
    :pswitch_11
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 716
    .line 717
    instance-of v4, v2, Landroid/os/Bundle;

    .line 718
    .line 719
    if-nez v4, :cond_29

    .line 720
    .line 721
    goto :goto_19

    .line 722
    :cond_29
    check-cast v2, Landroid/os/Bundle;

    .line 723
    .line 724
    const-string v4, "KEY_PRE_CONNECTION_STATUS"

    .line 725
    .line 726
    const/16 v5, 0x79

    .line 727
    .line 728
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 729
    .line 730
    .line 731
    :goto_19
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 732
    .line 733
    instance-of v2, v1, Landroid/os/Bundle;

    .line 734
    .line 735
    if-nez v2, :cond_2a

    .line 736
    .line 737
    goto :goto_1a

    .line 738
    :cond_2a
    check-cast v1, Landroid/os/Bundle;

    .line 739
    .line 740
    const/16 v2, 0xa

    .line 741
    .line 742
    invoke-virtual {v1, v11, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 743
    .line 744
    .line 745
    :goto_1a
    const-string v1, "handlePreConnectionStatusChanged"

    .line 746
    .line 747
    if-nez v0, :cond_2b

    .line 748
    .line 749
    invoke-static {v3, v1, v9}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .line 751
    .line 752
    return-void

    .line 753
    :cond_2b
    const-string v0, "null preConnectionStatusListenerWrapper"

    .line 754
    .line 755
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .line 757
    .line 758
    return-void

    .line 759
    :pswitch_12
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v0

    .line 763
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getStatus(Landroid/os/Message;)I

    .line 764
    .line 765
    .line 766
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 767
    .line 768
    instance-of v4, v2, Landroid/os/Bundle;

    .line 769
    .line 770
    const-wide/16 v5, 0x0

    .line 771
    .line 772
    if-nez v4, :cond_2c

    .line 773
    .line 774
    goto :goto_1b

    .line 775
    :cond_2c
    check-cast v2, Landroid/os/Bundle;

    .line 776
    .line 777
    const-string v4, "KEY_APP_VERSION_CODE"

    .line 778
    .line 779
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 780
    .line 781
    .line 782
    :goto_1b
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 783
    .line 784
    instance-of v4, v2, Landroid/os/Bundle;

    .line 785
    .line 786
    if-nez v4, :cond_2d

    .line 787
    .line 788
    goto :goto_1c

    .line 789
    :cond_2d
    check-cast v2, Landroid/os/Bundle;

    .line 790
    .line 791
    const-string v4, "KEY_CORE_VERSION_CODE"

    .line 792
    .line 793
    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 794
    .line 795
    .line 796
    :goto_1c
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 797
    .line 798
    instance-of v2, v1, Landroid/os/Bundle;

    .line 799
    .line 800
    if-nez v2, :cond_2e

    .line 801
    .line 802
    goto :goto_1d

    .line 803
    :cond_2e
    check-cast v1, Landroid/os/Bundle;

    .line 804
    .line 805
    const-string v2, "KEY_SEP_VERSION_CODE"

    .line 806
    .line 807
    invoke-virtual {v1, v2, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    .line 808
    .line 809
    .line 810
    :goto_1d
    const-string v1, "handleVersion"

    .line 811
    .line 812
    if-nez v0, :cond_2f

    .line 813
    .line 814
    invoke-static {v3, v1, v9}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .line 816
    .line 817
    return-void

    .line 818
    :cond_2f
    const-string v0, "null versionCallbackWrapper"

    .line 819
    .line 820
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    .line 822
    .line 823
    return-void

    .line 824
    :pswitch_13
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 825
    .line 826
    instance-of v1, v0, Landroid/os/Bundle;

    .line 827
    .line 828
    if-nez v1, :cond_30

    .line 829
    .line 830
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 831
    .line 832
    goto :goto_1f

    .line 833
    :cond_30
    check-cast v0, Landroid/os/Bundle;

    .line 834
    .line 835
    const-string v1, "KEY_CONTINUITY_WIFI_INFO_BUNDLE_ARRAY_LIST"

    .line 836
    .line 837
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 838
    .line 839
    .line 840
    move-result-object v0

    .line 841
    if-nez v0, :cond_31

    .line 842
    .line 843
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 844
    .line 845
    goto :goto_1f

    .line 846
    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    .line 847
    .line 848
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 849
    .line 850
    .line 851
    move-result v2

    .line 852
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 856
    .line 857
    .line 858
    move-result v2

    .line 859
    const/4 v4, 0x0

    .line 860
    :goto_1e
    if-ge v4, v2, :cond_33

    .line 861
    .line 862
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 863
    .line 864
    .line 865
    move-result-object v5

    .line 866
    add-int/lit8 v4, v4, 0x1

    .line 867
    .line 868
    check-cast v5, Landroid/os/Parcelable;

    .line 869
    .line 870
    instance-of v6, v5, Landroid/os/Bundle;

    .line 871
    .line 872
    if-eqz v6, :cond_32

    .line 873
    .line 874
    check-cast v5, Landroid/os/Bundle;

    .line 875
    .line 876
    const-string v6, "KEY_WIFI_INFO_TYPE"

    .line 877
    .line 878
    const/4 v7, 0x0

    .line 879
    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 880
    .line 881
    .line 882
    move-result v6

    .line 883
    const-string v7, "KEY_WIFI_INFO_STATUS"

    .line 884
    .line 885
    const/16 v8, 0x6f

    .line 886
    .line 887
    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 888
    .line 889
    .line 890
    move-result v7

    .line 891
    const-string v8, "KEY_WIFI_INFO_FREQUENCY"

    .line 892
    .line 893
    const/4 v9, -0x1

    .line 894
    invoke-virtual {v5, v8, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 895
    .line 896
    .line 897
    move-result v5

    .line 898
    new-instance v8, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;

    .line 899
    .line 900
    invoke-direct {v8, v6, v7}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;-><init>(II)V

    .line 901
    .line 902
    .line 903
    invoke-virtual {v8, v5}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->setFrequency(I)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v8}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper$Builder;->build()Lcom/samsung/android/mcf/continuity/interfaces/ContinuityWifiInfoWrapper;

    .line 907
    .line 908
    .line 909
    move-result-object v5

    .line 910
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 911
    .line 912
    .line 913
    goto :goto_1e

    .line 914
    :cond_32
    const/4 v9, -0x1

    .line 915
    goto :goto_1e

    .line 916
    :cond_33
    move-object v0, v1

    .line 917
    :goto_1f
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 918
    .line 919
    .line 920
    move-result v0

    .line 921
    const-string v1, "handleWifiInfoUpdated"

    .line 922
    .line 923
    if-eqz v0, :cond_34

    .line 924
    .line 925
    const-string v0, "empty list"

    .line 926
    .line 927
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    .line 929
    .line 930
    return-void

    .line 931
    :cond_34
    invoke-static {v3, v1, v10}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    .line 933
    .line 934
    return-void

    .line 935
    :pswitch_14
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 936
    .line 937
    .line 938
    move-result-object v0

    .line 939
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getStatus(Landroid/os/Message;)I

    .line 940
    .line 941
    .line 942
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 943
    .line 944
    instance-of v2, v1, Landroid/os/Bundle;

    .line 945
    .line 946
    if-nez v2, :cond_35

    .line 947
    .line 948
    goto :goto_20

    .line 949
    :cond_35
    check-cast v1, Landroid/os/Bundle;

    .line 950
    .line 951
    const-string v2, "KEY_AP_STATUS"

    .line 952
    .line 953
    const/16 v4, 0x65

    .line 954
    .line 955
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 956
    .line 957
    .line 958
    :goto_20
    const-string v1, "handleApStatus"

    .line 959
    .line 960
    if-nez v0, :cond_36

    .line 961
    .line 962
    invoke-static {v3, v1, v9}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    .line 964
    .line 965
    return-void

    .line 966
    :cond_36
    const-string v0, "null apStatusCallbackWrapper"

    .line 967
    .line 968
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    .line 970
    .line 971
    return-void

    .line 972
    :pswitch_15
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;

    .line 973
    .line 974
    .line 975
    move-result-object v2

    .line 976
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 977
    .line 978
    instance-of v4, v1, Landroid/os/Bundle;

    .line 979
    .line 980
    if-nez v4, :cond_37

    .line 981
    .line 982
    goto :goto_21

    .line 983
    :cond_37
    check-cast v1, Landroid/os/Bundle;

    .line 984
    .line 985
    const-string v4, "KEY_NETWORK_POLICY_BUNDLE"

    .line 986
    .line 987
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 988
    .line 989
    .line 990
    move-result-object v1

    .line 991
    instance-of v4, v1, Landroid/os/Bundle;

    .line 992
    .line 993
    if-nez v4, :cond_38

    .line 994
    .line 995
    :goto_21
    const/4 v8, 0x0

    .line 996
    goto :goto_23

    .line 997
    :cond_38
    check-cast v1, Landroid/os/Bundle;

    .line 998
    .line 999
    invoke-virtual {v1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1000
    .line 1001
    .line 1002
    move-result v4

    .line 1003
    const-string v5, "KEY_NETWORK_TOPOLOGY"

    .line 1004
    .line 1005
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 1006
    .line 1007
    .line 1008
    move-result v5

    .line 1009
    const-string v6, "KEY_DESIRED_AVAILABLE_WIFI_INTERFACE"

    .line 1010
    .line 1011
    const/4 v7, 0x0

    .line 1012
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1013
    .line 1014
    .line 1015
    move-result v6

    .line 1016
    const-string v7, "KEY_DESIRED_AVAILABLE_WIFI_INTERFACE_LIST"

    .line 1017
    .line 1018
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    .line 1019
    .line 1020
    .line 1021
    move-result v8

    .line 1022
    if-eqz v8, :cond_39

    .line 1023
    .line 1024
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 1025
    .line 1026
    .line 1027
    move-result-object v6

    .line 1028
    goto :goto_22

    .line 1029
    :cond_39
    sget-object v7, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityInterfaceConst;->WIFI_INTERFACE_ALL_LIST:Ljava/util/List;

    .line 1030
    .line 1031
    invoke-interface {v7}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 1032
    .line 1033
    .line 1034
    move-result-object v7

    .line 1035
    new-instance v8, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory$$ExternalSyntheticLambda0;

    .line 1036
    .line 1037
    invoke-direct {v8, v6}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityBundleFactory$$ExternalSyntheticLambda0;-><init>(I)V

    .line 1038
    .line 1039
    .line 1040
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v6

    .line 1044
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 1045
    .line 1046
    .line 1047
    move-result-object v7

    .line 1048
    invoke-interface {v6, v7}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v6

    .line 1052
    check-cast v6, Ljava/util/List;

    .line 1053
    .line 1054
    :goto_22
    const-string v7, "KEY_DESIRED_CONNECTED_WIFI_INTERFACE"

    .line 1055
    .line 1056
    const/4 v8, 0x0

    .line 1057
    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1058
    .line 1059
    .line 1060
    move-result v7

    .line 1061
    const-string v9, "KEY_REQUIRED_WIFI_NETWORK"

    .line 1062
    .line 1063
    invoke-virtual {v1, v9, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1064
    .line 1065
    .line 1066
    move-result v9

    .line 1067
    const-string v10, "KEY_IS_WIFI_INTERFACE_CONNECTED"

    .line 1068
    .line 1069
    const/4 v11, 0x1

    .line 1070
    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1071
    .line 1072
    .line 1073
    move-result v10

    .line 1074
    const-string v11, "KEY_WIFI_AP_SSID"

    .line 1075
    .line 1076
    const/4 v12, 0x0

    .line 1077
    invoke-virtual {v1, v11, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v11

    .line 1081
    const-string v12, "KEY_IS_ENABLE_WIFI_REQUESTED"

    .line 1082
    .line 1083
    invoke-virtual {v1, v12, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    .line 1084
    .line 1085
    .line 1086
    const-string v12, "KEY_NEED_TO_DISCONNECT_INTERFACE"

    .line 1087
    .line 1088
    invoke-virtual {v1, v12, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1089
    .line 1090
    .line 1091
    const-string v8, "KEY_EXPECTED_MCC_RESULT"

    .line 1092
    .line 1093
    const/16 v12, 0x4b0

    .line 1094
    .line 1095
    invoke-virtual {v1, v8, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1096
    .line 1097
    .line 1098
    move v8, v9

    .line 1099
    move v9, v10

    .line 1100
    move-object v10, v11

    .line 1101
    invoke-static/range {v4 .. v10}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;->createInstance(IILjava/util/List;IIZLjava/lang/String;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityNetworkPolicyWrapper;

    .line 1102
    .line 1103
    .line 1104
    move-result-object v8

    .line 1105
    :goto_23
    const-string v1, "handleSessionPeerConnectionRequested"

    .line 1106
    .line 1107
    if-eqz v2, :cond_3b

    .line 1108
    .line 1109
    if-nez v8, :cond_3a

    .line 1110
    .line 1111
    goto :goto_24

    .line 1112
    :cond_3a
    const-string v0, "null peerConnectionRequestListenerWrapper"

    .line 1113
    .line 1114
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    .line 1116
    .line 1117
    return-void

    .line 1118
    :cond_3b
    :goto_24
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    .line 1120
    .line 1121
    return-void

    .line 1122
    :pswitch_16
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1123
    .line 1124
    instance-of v4, v2, Landroid/os/Bundle;

    .line 1125
    .line 1126
    if-nez v4, :cond_3c

    .line 1127
    .line 1128
    goto :goto_25

    .line 1129
    :cond_3c
    check-cast v2, Landroid/os/Bundle;

    .line 1130
    .line 1131
    const-string v4, "KEY_PEER_STATUS"

    .line 1132
    .line 1133
    const/16 v5, 0x15

    .line 1134
    .line 1135
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1136
    .line 1137
    .line 1138
    :goto_25
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v2

    .line 1142
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1143
    .line 1144
    instance-of v5, v4, Landroid/os/Bundle;

    .line 1145
    .line 1146
    if-nez v5, :cond_3d

    .line 1147
    .line 1148
    goto :goto_26

    .line 1149
    :cond_3d
    check-cast v4, Landroid/os/Bundle;

    .line 1150
    .line 1151
    const-string v5, "KEY_FAIL_REASON"

    .line 1152
    .line 1153
    const/16 v6, 0x3e8

    .line 1154
    .line 1155
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1156
    .line 1157
    .line 1158
    :goto_26
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1159
    .line 1160
    instance-of v5, v4, Landroid/os/Bundle;

    .line 1161
    .line 1162
    if-nez v5, :cond_3e

    .line 1163
    .line 1164
    goto :goto_27

    .line 1165
    :cond_3e
    check-cast v4, Landroid/os/Bundle;

    .line 1166
    .line 1167
    const-string v5, "KEY_NETWORK_ROLE"

    .line 1168
    .line 1169
    const/16 v6, 0x26

    .line 1170
    .line 1171
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1172
    .line 1173
    .line 1174
    :goto_27
    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1175
    .line 1176
    instance-of v5, v4, Landroid/os/Bundle;

    .line 1177
    .line 1178
    if-nez v5, :cond_3f

    .line 1179
    .line 1180
    goto :goto_28

    .line 1181
    :cond_3f
    check-cast v4, Landroid/os/Bundle;

    .line 1182
    .line 1183
    const-string v5, "KEY_SELECTED_WIFI_INTERFACE"

    .line 1184
    .line 1185
    const/4 v7, 0x0

    .line 1186
    invoke-virtual {v4, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1187
    .line 1188
    .line 1189
    :goto_28
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1190
    .line 1191
    instance-of v4, v1, Landroid/os/Bundle;

    .line 1192
    .line 1193
    if-nez v4, :cond_40

    .line 1194
    .line 1195
    goto :goto_29

    .line 1196
    :cond_40
    check-cast v1, Landroid/os/Bundle;

    .line 1197
    .line 1198
    const-string v4, "KEY_SELECTED_LOCAL_IP"

    .line 1199
    .line 1200
    const-string v5, ""

    .line 1201
    .line 1202
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1203
    .line 1204
    .line 1205
    :goto_29
    const-string v1, "handleSessionPeerStatusChanged"

    .line 1206
    .line 1207
    if-nez v2, :cond_41

    .line 1208
    .line 1209
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    return-void

    .line 1213
    :cond_41
    const-string v0, "null peerStatusListenerWrapper"

    .line 1214
    .line 1215
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1216
    .line 1217
    .line 1218
    return-void

    .line 1219
    :pswitch_17
    iget-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1220
    .line 1221
    instance-of v1, v0, Landroid/os/Bundle;

    .line 1222
    .line 1223
    if-nez v1, :cond_42

    .line 1224
    .line 1225
    goto :goto_2a

    .line 1226
    :cond_42
    check-cast v0, Landroid/os/Bundle;

    .line 1227
    .line 1228
    const-string v1, "KEY_SESSION_STATUS"

    .line 1229
    .line 1230
    const/16 v2, 0xb

    .line 1231
    .line 1232
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 1233
    .line 1234
    .line 1235
    :goto_2a
    const-string v0, "handleSessionStatusChanged"

    .line 1236
    .line 1237
    invoke-static {v3, v0, v10}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1238
    .line 1239
    .line 1240
    return-void

    .line 1241
    :pswitch_18
    move-object/from16 v0, p0

    .line 1242
    .line 1243
    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 1244
    .line 1245
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getEvent(Landroid/os/Message;)I

    .line 1246
    .line 1247
    .line 1248
    move-result v2

    .line 1249
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getContinuityDeviceWrapper(Landroid/os/Message;)Lcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;

    .line 1250
    .line 1251
    .line 1252
    move-result-object v1

    .line 1253
    invoke-static {v0, v2, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->access$000(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;ILcom/samsung/android/mcf/continuity/interfaces/ContinuityDeviceWrapper;)V

    .line 1254
    .line 1255
    .line 1256
    return-void

    .line 1257
    :pswitch_19
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v2

    .line 1261
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getMessageId(Landroid/os/Message;)B

    .line 1262
    .line 1263
    .line 1264
    move-result v4

    .line 1265
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getStatus(Landroid/os/Message;)I

    .line 1266
    .line 1267
    .line 1268
    const-string v1, "handleMessageSent"

    .line 1269
    .line 1270
    if-nez v2, :cond_43

    .line 1271
    .line 1272
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    .line 1274
    .line 1275
    return-void

    .line 1276
    :cond_43
    if-nez v4, :cond_44

    .line 1277
    .line 1278
    const-string v0, "SendMessageCallback for simple message is not supported"

    .line 1279
    .line 1280
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1281
    .line 1282
    .line 1283
    return-void

    .line 1284
    :cond_44
    const-string v0, "null sendMessageCallbackWrapper"

    .line 1285
    .line 1286
    invoke-static {v3, v1, v0}, Lcom/samsung/android/mcf/continuity/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    .line 1288
    .line 1289
    return-void

    .line 1290
    :pswitch_1a
    move-object/from16 v0, p0

    .line 1291
    .line 1292
    const/4 v12, 0x0

    .line 1293
    iget-object v0, v0, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager$1;->this$0:Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;

    .line 1294
    .line 1295
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getBtMac(Landroid/os/Message;)Ljava/lang/String;

    .line 1296
    .line 1297
    .line 1298
    move-result-object v2

    .line 1299
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1300
    .line 1301
    instance-of v4, v3, Landroid/os/Bundle;

    .line 1302
    .line 1303
    if-nez v4, :cond_45

    .line 1304
    .line 1305
    move-object v8, v12

    .line 1306
    goto :goto_2b

    .line 1307
    :cond_45
    check-cast v3, Landroid/os/Bundle;

    .line 1308
    .line 1309
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    .line 1310
    .line 1311
    .line 1312
    move-result-object v8

    .line 1313
    :goto_2b
    invoke-static {v1}, Lcom/samsung/android/mcf/continuity/interfaces/ContinuityCallback;->getMessageId(Landroid/os/Message;)B

    .line 1314
    .line 1315
    .line 1316
    move-result v1

    .line 1317
    invoke-static {v0, v2, v8, v1}, Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;->access$100(Lcom/samsung/android/mcf/continuity/impl/common/ContinuityCallbackManager;Ljava/lang/String;[BB)V

    .line 1318
    .line 1319
    .line 1320
    return-void

    .line 1321
    :pswitch_data_0
    .packed-switch 0xfa0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
