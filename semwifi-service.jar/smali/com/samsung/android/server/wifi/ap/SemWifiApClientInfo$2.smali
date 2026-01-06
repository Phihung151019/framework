.class Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;
.super Landroid/os/Handler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;-><init>(Landroid/content/Context;Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Landroid/os/Looper;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

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
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, " mConnectedTime:"

    .line 6
    .line 7
    const-string v3, "Channel switch status:"

    .line 8
    .line 9
    const-string v4, "AP_STA_DISCONNECTED_EVENT - disconnected_device : "

    .line 10
    .line 11
    const-string v5, "mhs client cnt:"

    .line 12
    .line 13
    const-string v6, "roaming dhcpack mac:"

    .line 14
    .line 15
    const-string v7, "sta_assoc "

    .line 16
    .line 17
    const-string v8, "AP_STA_ASSOCIATION_EVENT "

    .line 18
    .line 19
    const-string v9, "AP_STA_DISASSOCIATION_EVENT"

    .line 20
    .line 21
    const-string v10, "Channel switched from 2.4GHz to 5GHz: "

    .line 22
    .line 23
    const-string v11, "AP_CSA_FINISHED_EVENT : "

    .line 24
    .line 25
    const-string v12, "AP_STA_REMOVE_EVENT"

    .line 26
    .line 27
    const-string v13, "AP_STA_DEAUTH_EVENT"

    .line 28
    .line 29
    const-string v14, "CMD_AP_STA_DISCONNECT.Reset val"

    .line 30
    .line 31
    const-string v15, "CMD_AP_STA_DISCONNECT.Current val"

    .line 32
    .line 33
    move-object/from16 v16, v3

    .line 34
    .line 35
    const-string v3, "Channel switch flag reset status:"

    .line 36
    .line 37
    move-object/from16 v17, v4

    .line 38
    .line 39
    const-string v4, "Old client list"

    .line 40
    .line 41
    move-object/from16 v18, v5

    .line 42
    .line 43
    const-string v5, "CMD_AP_STA_RECONNECT.Current val"

    .line 44
    .line 45
    move-object/from16 v19, v6

    .line 46
    .line 47
    const-string v6, "AP_TSF_INFO_EVENT tsf = "

    .line 48
    .line 49
    move-object/from16 v20, v2

    .line 50
    .line 51
    const-string v2, "AP_TSF_INFO_EVENT invalid values, tsf = "

    .line 52
    .line 53
    move-object/from16 v21, v7

    .line 54
    .line 55
    new-instance v7, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    move-object/from16 v22, v8

    .line 58
    .line 59
    const-string v8, "handleMessage"

    .line 60
    .line 61
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    iget v8, v1, Landroid/os/Message;->what:I

    .line 65
    .line 66
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    const-string v8, "SemWifiApClientInfo"

    .line 74
    .line 75
    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :try_start_0
    iget v7, v1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    .line 80
    move-object/from16 v23, v9

    .line 81
    .line 82
    move-object/from16 v24, v10

    .line 83
    .line 84
    const-string v9, "sta_assoc"

    .line 85
    .line 86
    const-string v10, ""

    .line 87
    .line 88
    move/from16 v27, v7

    .line 89
    .line 90
    const-string v7, "sta_dhcpack"

    .line 91
    .line 92
    move-object/from16 v28, v11

    .line 93
    .line 94
    const-string v11, "mStr1 is null"

    .line 95
    .line 96
    move-object/from16 v29, v7

    .line 97
    .line 98
    const-string v7, "NUM_STA"

    .line 99
    .line 100
    move-object/from16 v30, v9

    .line 101
    .line 102
    const-string v9, " "

    .line 103
    .line 104
    const-wide/16 v31, 0x0

    .line 105
    .line 106
    move-object/from16 v33, v12

    .line 107
    .line 108
    const/16 v34, 0x1

    .line 109
    .line 110
    const/4 v12, 0x0

    .line 111
    packed-switch v27, :pswitch_data_0

    .line 112
    .line 113
    .line 114
    :pswitch_0
    :try_start_1
    const-string v0, "Not Impplemented"

    .line 115
    .line 116
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    .line 118
    .line 119
    goto/16 :goto_5

    .line 120
    .line 121
    :catch_0
    move-exception v0

    .line 122
    goto/16 :goto_4

    .line 123
    .line 124
    :pswitch_1
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 125
    .line 126
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 127
    .line 128
    check-cast v1, Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 135
    .line 136
    .line 137
    :try_start_2
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 138
    .line 139
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    aget-object v1, v1, v12

    .line 144
    .line 145
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 146
    .line 147
    .line 148
    move-result-wide v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 149
    :try_start_3
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 150
    .line 151
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    aget-object v1, v1, v34

    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 158
    .line 159
    .line 160
    move-result-wide v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 161
    goto :goto_0

    .line 162
    :catch_1
    move-wide/from16 v3, v31

    .line 163
    .line 164
    :catch_2
    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 170
    .line 171
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    aget-object v2, v2, v12

    .line 176
    .line 177
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v2, " utc = "

    .line 181
    .line 182
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 186
    .line 187
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    aget-object v2, v2, v34

    .line 192
    .line 193
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    move-wide/from16 v1, v31

    .line 204
    .line 205
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    const-string v6, " utc="

    .line 214
    .line 215
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    cmp-long v5, v3, v31

    .line 229
    .line 230
    if-lez v5, :cond_e

    .line 231
    .line 232
    cmp-long v5, v1, v31

    .line 233
    .line 234
    if-lez v5, :cond_e

    .line 235
    .line 236
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 237
    .line 238
    invoke-static {v5, v3, v4, v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$msendTsfInfoResults(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;JJ)V

    .line 239
    .line 240
    .line 241
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetmIsLOHSmode()Z

    .line 242
    .line 243
    .line 244
    move-result v1

    .line 245
    if-eqz v1, :cond_e

    .line 246
    .line 247
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 248
    .line 249
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    invoke-virtual {v0, v12}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->enableHotspotTsfInfo(Z)V

    .line 254
    .line 255
    .line 256
    goto/16 :goto_5

    .line 257
    .line 258
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 259
    .line 260
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 264
    .line 265
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    .line 266
    .line 267
    .line 268
    move-result v2

    .line 269
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    .line 278
    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .line 283
    .line 284
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 285
    .line 286
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmClients(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)I

    .line 287
    .line 288
    .line 289
    move-result v2

    .line 290
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v2, "New client list"

    .line 294
    .line 295
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 299
    .line 300
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    invoke-virtual {v2, v7}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 319
    .line 320
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 321
    .line 322
    .line 323
    move-result-object v1

    .line 324
    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v1

    .line 328
    if-eqz v1, :cond_0

    .line 329
    .line 330
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 331
    .line 332
    .line 333
    move-result v2

    .line 334
    if-nez v2, :cond_0

    .line 335
    .line 336
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 337
    .line 338
    .line 339
    move-result v1

    .line 340
    goto :goto_1

    .line 341
    :cond_0
    move v1, v12

    .line 342
    :goto_1
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 343
    .line 344
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    .line 345
    .line 346
    .line 347
    move-result v2

    .line 348
    if-eqz v2, :cond_e

    .line 349
    .line 350
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 351
    .line 352
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmClients(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)I

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    if-le v2, v1, :cond_e

    .line 357
    .line 358
    const-string v1, "Reconnect didn\'t happen in 10 sec"

    .line 359
    .line 360
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 364
    .line 365
    invoke-static {v1, v12}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Z)V

    .line 366
    .line 367
    .line 368
    const-string v1, "Sending Broadcast com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

    .line 369
    .line 370
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    .line 372
    .line 373
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 374
    .line 375
    new-instance v2, Landroid/content/Intent;

    .line 376
    .line 377
    const-string v4, "com.samsung.actoin.24GHZ_AP_STA_DISCONNECTED"

    .line 378
    .line 379
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    .line 381
    .line 382
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Landroid/content/Intent;)V

    .line 383
    .line 384
    .line 385
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 386
    .line 387
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 392
    .line 393
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetintent(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Intent;

    .line 394
    .line 395
    .line 396
    move-result-object v2

    .line 397
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 398
    .line 399
    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    .line 401
    .line 402
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 406
    .line 407
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    .line 408
    .line 409
    .line 410
    move-result v0

    .line 411
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 415
    .line 416
    .line 417
    move-result-object v0

    .line 418
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    .line 420
    .line 421
    goto/16 :goto_5

    .line 422
    .line 423
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 424
    .line 425
    invoke-direct {v1, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 429
    .line 430
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    .line 431
    .line 432
    .line 433
    move-result v2

    .line 434
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v1

    .line 441
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .line 443
    .line 444
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 445
    .line 446
    invoke-static {v1, v12}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Z)V

    .line 447
    .line 448
    .line 449
    new-instance v1, Ljava/lang/StringBuilder;

    .line 450
    .line 451
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 455
    .line 456
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    .line 457
    .line 458
    .line 459
    move-result v0

    .line 460
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 461
    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 464
    .line 465
    .line 466
    move-result-object v0

    .line 467
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    .line 469
    .line 470
    goto/16 :goto_5

    .line 471
    .line 472
    :pswitch_4
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 473
    .line 474
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 475
    .line 476
    check-cast v3, Ljava/lang/String;

    .line 477
    .line 478
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 479
    .line 480
    .line 481
    move-result-object v3

    .line 482
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;[Ljava/lang/String;)V

    .line 483
    .line 484
    .line 485
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 486
    .line 487
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v2

    .line 491
    aget-object v2, v2, v12

    .line 492
    .line 493
    new-instance v3, Ljava/lang/StringBuilder;

    .line 494
    .line 495
    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 496
    .line 497
    .line 498
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 499
    .line 500
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 501
    .line 502
    check-cast v1, Ljava/lang/String;

    .line 503
    .line 504
    invoke-static {v4, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object v1

    .line 515
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    .line 517
    .line 518
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 519
    .line 520
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    array-length v1, v1

    .line 525
    const/4 v3, 0x2

    .line 526
    if-lt v1, v3, :cond_1

    .line 527
    .line 528
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 529
    .line 530
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 531
    .line 532
    .line 533
    move-result-object v1

    .line 534
    aget-object v1, v1, v34

    .line 535
    .line 536
    if-eqz v1, :cond_1

    .line 537
    .line 538
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 539
    .line 540
    const-string v1, "sta_deauth"

    .line 541
    .line 542
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v3

    .line 546
    aget-object v3, v3, v34

    .line 547
    .line 548
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 549
    .line 550
    .line 551
    move-result v3

    .line 552
    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 553
    .line 554
    .line 555
    goto/16 :goto_5

    .line 556
    .line 557
    :cond_1
    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    .line 559
    .line 560
    goto/16 :goto_5

    .line 561
    .line 562
    :pswitch_5
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 563
    .line 564
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 565
    .line 566
    check-cast v3, Ljava/lang/String;

    .line 567
    .line 568
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;[Ljava/lang/String;)V

    .line 573
    .line 574
    .line 575
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 576
    .line 577
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    aget-object v2, v2, v12

    .line 582
    .line 583
    new-instance v3, Ljava/lang/StringBuilder;

    .line 584
    .line 585
    move-object/from16 v4, v33

    .line 586
    .line 587
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    .line 589
    .line 590
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 591
    .line 592
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 593
    .line 594
    check-cast v1, Ljava/lang/String;

    .line 595
    .line 596
    invoke-static {v4, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 601
    .line 602
    .line 603
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v1

    .line 607
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .line 609
    .line 610
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 611
    .line 612
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 613
    .line 614
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 615
    .line 616
    .line 617
    move-result v1

    .line 618
    if-eqz v1, :cond_e

    .line 619
    .line 620
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 621
    .line 622
    iget-object v1, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 623
    .line 624
    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    check-cast v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    .line 629
    .line 630
    iget-object v3, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 631
    .line 632
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 633
    .line 634
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 635
    .line 636
    .line 637
    move-result-object v3

    .line 638
    array-length v3, v3

    .line 639
    const/4 v4, 0x2

    .line 640
    if-lt v3, v4, :cond_2

    .line 641
    .line 642
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 643
    .line 644
    invoke-static {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 645
    .line 646
    .line 647
    move-result-object v3

    .line 648
    aget-object v3, v3, v34

    .line 649
    .line 650
    if-eqz v3, :cond_2

    .line 651
    .line 652
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 653
    .line 654
    const-string v3, "sta_remove"

    .line 655
    .line 656
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 657
    .line 658
    .line 659
    move-result-object v4

    .line 660
    aget-object v4, v4, v34

    .line 661
    .line 662
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 663
    .line 664
    .line 665
    move-result v4

    .line 666
    invoke-static {v0, v2, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 667
    .line 668
    .line 669
    goto :goto_2

    .line 670
    :cond_2
    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    .line 672
    .line 673
    :goto_2
    iget-boolean v0, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    .line 674
    .line 675
    if-eqz v0, :cond_e

    .line 676
    .line 677
    iput-boolean v12, v1, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    .line 678
    .line 679
    goto/16 :goto_5

    .line 680
    .line 681
    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 682
    .line 683
    check-cast v1, Ljava/lang/String;

    .line 684
    .line 685
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 686
    .line 687
    const-string v2, "sta_notidisassoc"

    .line 688
    .line 689
    const/4 v3, -0x1

    .line 690
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 691
    .line 692
    .line 693
    goto/16 :goto_5

    .line 694
    .line 695
    :pswitch_7
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 696
    .line 697
    check-cast v1, Ljava/lang/String;

    .line 698
    .line 699
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 700
    .line 701
    const-string v2, "sta_notallow"

    .line 702
    .line 703
    const/4 v3, -0x1

    .line 704
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 705
    .line 706
    .line 707
    goto/16 :goto_5

    .line 708
    .line 709
    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 710
    .line 711
    check-cast v1, Ljava/lang/String;

    .line 712
    .line 713
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 714
    .line 715
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 716
    .line 717
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    .line 719
    .line 720
    move-result-object v2

    .line 721
    check-cast v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    .line 722
    .line 723
    if-eqz v2, :cond_4

    .line 724
    .line 725
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->getState()Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v3

    .line 729
    move-object/from16 v4, v30

    .line 730
    .line 731
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 732
    .line 733
    .line 734
    move-result v3

    .line 735
    if-nez v3, :cond_3

    .line 736
    .line 737
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->getState()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v2

    .line 741
    move-object/from16 v3, v29

    .line 742
    .line 743
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    if-eqz v2, :cond_4

    .line 748
    .line 749
    :cond_3
    const-string v0, "Got sta_new, but already in associated state, ignoring"

    .line 750
    .line 751
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    .line 753
    .line 754
    goto/16 :goto_5

    .line 755
    .line 756
    :cond_4
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 757
    .line 758
    const-string v3, "sta_new"

    .line 759
    .line 760
    const/4 v4, -0x1

    .line 761
    invoke-static {v2, v1, v3, v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 762
    .line 763
    .line 764
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    .line 765
    .line 766
    .line 767
    move-result v1

    .line 768
    if-eqz v1, :cond_5

    .line 769
    .line 770
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 771
    .line 772
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowClientsInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)V

    .line 773
    .line 774
    .line 775
    :cond_5
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 776
    .line 777
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    .line 778
    .line 779
    .line 780
    move-result v1

    .line 781
    if-eqz v1, :cond_e

    .line 782
    .line 783
    const-string v1, "Resetting the mChannelSwitch"

    .line 784
    .line 785
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    .line 787
    .line 788
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 789
    .line 790
    invoke-static {v0, v12}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Z)V

    .line 791
    .line 792
    .line 793
    goto/16 :goto_5

    .line 794
    .line 795
    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 796
    .line 797
    check-cast v1, Ljava/lang/String;

    .line 798
    .line 799
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 800
    .line 801
    .line 802
    move-result v2

    .line 803
    if-nez v2, :cond_6

    .line 804
    .line 805
    const-string v2, "freq=(\\d+)"

    .line 806
    .line 807
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 808
    .line 809
    .line 810
    move-result-object v2

    .line 811
    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 812
    .line 813
    .line 814
    move-result-object v1

    .line 815
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    .line 816
    .line 817
    .line 818
    move-result v2

    .line 819
    if-eqz v2, :cond_6

    .line 820
    .line 821
    move/from16 v2, v34

    .line 822
    .line 823
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    .line 824
    .line 825
    .line 826
    move-result-object v10

    .line 827
    :cond_6
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 828
    .line 829
    new-instance v2, Ljava/lang/StringBuilder;

    .line 830
    .line 831
    move-object/from16 v3, v28

    .line 832
    .line 833
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 834
    .line 835
    .line 836
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v2

    .line 843
    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->addMHSDumpCSALog(Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    invoke-static {}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getInstance()Lcom/samsung/android/server/wifi/SemWifiInjector;

    .line 847
    .line 848
    .line 849
    move-result-object v1

    .line 850
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiInjector;->getWifiApChipInfo()Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;

    .line 851
    .line 852
    .line 853
    move-result-object v1

    .line 854
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApChipInfo;->supportWifiSharingLite()Z

    .line 855
    .line 856
    .line 857
    move-result v1

    .line 858
    if-eqz v1, :cond_e

    .line 859
    .line 860
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 861
    .line 862
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmHostapdHal(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemHostapdHal;

    .line 863
    .line 864
    .line 865
    move-result-object v1

    .line 866
    invoke-virtual {v1, v7}, Lcom/samsung/android/server/wifi/ap/SemHostapdHal;->sendHostapdCommand(Ljava/lang/String;)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v1

    .line 870
    if-eqz v10, :cond_e

    .line 871
    .line 872
    const-string v2, "5"

    .line 873
    .line 874
    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 875
    .line 876
    .line 877
    move-result v2

    .line 878
    if-eqz v2, :cond_e

    .line 879
    .line 880
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 881
    .line 882
    .line 883
    move-result v2

    .line 884
    if-nez v2, :cond_e

    .line 885
    .line 886
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 887
    .line 888
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 889
    .line 890
    .line 891
    move-result v1

    .line 892
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmClients(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;I)V

    .line 893
    .line 894
    .line 895
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 896
    .line 897
    const/4 v2, 0x1

    .line 898
    invoke-static {v1, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Z)V

    .line 899
    .line 900
    .line 901
    new-instance v1, Ljava/lang/StringBuilder;

    .line 902
    .line 903
    move-object/from16 v2, v24

    .line 904
    .line 905
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 906
    .line 907
    .line 908
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    .line 910
    .line 911
    const-string v2, " Switch flag set to:"

    .line 912
    .line 913
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 917
    .line 918
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    .line 919
    .line 920
    .line 921
    move-result v2

    .line 922
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 923
    .line 924
    .line 925
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 926
    .line 927
    .line 928
    move-result-object v1

    .line 929
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    .line 931
    .line 932
    const/16 v1, 0x78

    .line 933
    .line 934
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 935
    .line 936
    .line 937
    move-result-object v1

    .line 938
    const-wide/32 v2, 0xea60

    .line 939
    .line 940
    .line 941
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 942
    .line 943
    .line 944
    goto/16 :goto_5

    .line 945
    .line 946
    :pswitch_a
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 947
    .line 948
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->getWifiApState()I

    .line 953
    .line 954
    .line 955
    move-result v1

    .line 956
    const/16 v2, 0xd

    .line 957
    .line 958
    const/4 v3, 0x0

    .line 959
    if-eq v1, v2, :cond_8

    .line 960
    .line 961
    const/16 v2, 0xc

    .line 962
    .line 963
    if-ne v1, v2, :cond_7

    .line 964
    .line 965
    goto :goto_3

    .line 966
    :cond_7
    const/16 v2, 0xe

    .line 967
    .line 968
    if-ne v1, v2, :cond_e

    .line 969
    .line 970
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 971
    .line 972
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 973
    .line 974
    .line 975
    move-result-object v0

    .line 976
    const/4 v2, 0x1

    .line 977
    invoke-virtual {v0, v3, v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->setWifiApEnabled(Landroid/net/wifi/SoftApConfiguration;Z)Z

    .line 978
    .line 979
    .line 980
    goto/16 :goto_5

    .line 981
    .line 982
    :cond_8
    :goto_3
    const-string v1, "WIFI_AP_DRIVER_STATE_HANGED, disabling"

    .line 983
    .line 984
    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    .line 986
    .line 987
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 988
    .line 989
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmWifiApServiceImpl(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 990
    .line 991
    .line 992
    move-result-object v0

    .line 993
    invoke-virtual {v0, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->resetSoftAp(Landroid/os/Message;)V

    .line 994
    .line 995
    .line 996
    goto/16 :goto_5

    .line 997
    .line 998
    :pswitch_b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 999
    .line 1000
    check-cast v1, Ljava/lang/String;

    .line 1001
    .line 1002
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1003
    .line 1004
    const-string v2, "sta_mismatch"

    .line 1005
    .line 1006
    const/4 v3, -0x1

    .line 1007
    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1008
    .line 1009
    .line 1010
    goto/16 :goto_5

    .line 1011
    .line 1012
    :pswitch_c
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1013
    .line 1014
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1015
    .line 1016
    check-cast v3, Ljava/lang/String;

    .line 1017
    .line 1018
    invoke-virtual {v3, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 1019
    .line 1020
    .line 1021
    move-result-object v3

    .line 1022
    invoke-static {v2, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fputmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;[Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1026
    .line 1027
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v2

    .line 1031
    aget-object v2, v2, v12

    .line 1032
    .line 1033
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1034
    .line 1035
    move-object/from16 v4, v23

    .line 1036
    .line 1037
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1038
    .line 1039
    .line 1040
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1041
    .line 1042
    check-cast v1, Ljava/lang/String;

    .line 1043
    .line 1044
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    .line 1046
    .line 1047
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1048
    .line 1049
    .line 1050
    move-result-object v1

    .line 1051
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    .line 1053
    .line 1054
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1055
    .line 1056
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 1057
    .line 1058
    .line 1059
    move-result-object v1

    .line 1060
    array-length v1, v1

    .line 1061
    const/4 v3, 0x2

    .line 1062
    if-lt v1, v3, :cond_9

    .line 1063
    .line 1064
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1065
    .line 1066
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v1

    .line 1070
    const/16 v34, 0x1

    .line 1071
    .line 1072
    aget-object v1, v1, v34

    .line 1073
    .line 1074
    if-eqz v1, :cond_9

    .line 1075
    .line 1076
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1077
    .line 1078
    const-string v1, "sta_disassoc"

    .line 1079
    .line 1080
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmStr(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)[Ljava/lang/String;

    .line 1081
    .line 1082
    .line 1083
    move-result-object v3

    .line 1084
    aget-object v3, v3, v34

    .line 1085
    .line 1086
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 1087
    .line 1088
    .line 1089
    move-result v3

    .line 1090
    invoke-static {v0, v2, v1, v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1091
    .line 1092
    .line 1093
    goto/16 :goto_5

    .line 1094
    .line 1095
    :cond_9
    invoke-static {v8, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    .line 1097
    .line 1098
    goto/16 :goto_5

    .line 1099
    .line 1100
    :pswitch_d
    move-object/from16 v3, v29

    .line 1101
    .line 1102
    move-object/from16 v4, v30

    .line 1103
    .line 1104
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1105
    .line 1106
    check-cast v1, Ljava/lang/String;

    .line 1107
    .line 1108
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1109
    .line 1110
    move-object/from16 v5, v22

    .line 1111
    .line 1112
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1113
    .line 1114
    .line 1115
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1116
    .line 1117
    invoke-static {v5, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1118
    .line 1119
    .line 1120
    move-result-object v5

    .line 1121
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    .line 1123
    .line 1124
    const-string v5, " remaining_cnt: "

    .line 1125
    .line 1126
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1127
    .line 1128
    .line 1129
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1130
    .line 1131
    invoke-virtual {v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->getConnectedDeviceLength()I

    .line 1132
    .line 1133
    .line 1134
    move-result v5

    .line 1135
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1136
    .line 1137
    .line 1138
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1139
    .line 1140
    .line 1141
    move-result-object v2

    .line 1142
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    .line 1144
    .line 1145
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1146
    .line 1147
    const/4 v5, -0x1

    .line 1148
    invoke-static {v2, v1, v4, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1149
    .line 1150
    .line 1151
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1152
    .line 1153
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 1154
    .line 1155
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 1156
    .line 1157
    .line 1158
    move-result v2

    .line 1159
    if-eqz v2, :cond_e

    .line 1160
    .line 1161
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1162
    .line 1163
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 1164
    .line 1165
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    .line 1167
    .line 1168
    move-result-object v2

    .line 1169
    check-cast v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    .line 1170
    .line 1171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1172
    .line 1173
    .line 1174
    move-result-wide v4

    .line 1175
    iget-wide v6, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRemovedTime:J

    .line 1176
    .line 1177
    sub-long v6, v4, v6

    .line 1178
    .line 1179
    iget-object v9, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1180
    .line 1181
    new-instance v10, Ljava/lang/StringBuilder;

    .line 1182
    .line 1183
    move-object/from16 v11, v21

    .line 1184
    .line 1185
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1186
    .line 1187
    .line 1188
    iget-object v11, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1189
    .line 1190
    invoke-static {v11, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1191
    .line 1192
    .line 1193
    move-result-object v11

    .line 1194
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1195
    .line 1196
    .line 1197
    const-string v11, " gap:"

    .line 1198
    .line 1199
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1203
    .line 1204
    .line 1205
    move-object/from16 v11, v20

    .line 1206
    .line 1207
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1208
    .line 1209
    .line 1210
    iget-wide v12, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    .line 1211
    .line 1212
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1213
    .line 1214
    .line 1215
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1216
    .line 1217
    .line 1218
    move-result-object v10

    .line 1219
    invoke-virtual {v9, v10}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1220
    .line 1221
    .line 1222
    iget-object v9, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 1223
    .line 1224
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1225
    .line 1226
    .line 1227
    move-result v9

    .line 1228
    if-nez v9, :cond_a

    .line 1229
    .line 1230
    iget-wide v9, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    .line 1231
    .line 1232
    cmp-long v9, v9, v31

    .line 1233
    .line 1234
    if-eqz v9, :cond_e

    .line 1235
    .line 1236
    iget-wide v9, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mRemovedTime:J

    .line 1237
    .line 1238
    sub-long/2addr v4, v9

    .line 1239
    const-wide/32 v25, 0xea60

    .line 1240
    .line 1241
    .line 1242
    cmp-long v4, v4, v25

    .line 1243
    .line 1244
    if-gez v4, :cond_e

    .line 1245
    .line 1246
    :cond_a
    iget-object v4, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1247
    .line 1248
    const/4 v5, -0x1

    .line 1249
    invoke-static {v4, v1, v3, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1250
    .line 1251
    .line 1252
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1253
    .line 1254
    new-instance v4, Ljava/lang/StringBuilder;

    .line 1255
    .line 1256
    move-object/from16 v5, v19

    .line 1257
    .line 1258
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1259
    .line 1260
    .line 1261
    iget-object v5, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1262
    .line 1263
    invoke-static {v5, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1264
    .line 1265
    .line 1266
    move-result-object v1

    .line 1267
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1268
    .line 1269
    .line 1270
    const-string v1, " ip:"

    .line 1271
    .line 1272
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1273
    .line 1274
    .line 1275
    iget-object v1, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mIp:Ljava/lang/String;

    .line 1276
    .line 1277
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    .line 1279
    .line 1280
    const-string v1, " name:"

    .line 1281
    .line 1282
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    .line 1284
    .line 1285
    iget-object v1, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mDeviceName:Ljava/lang/String;

    .line 1286
    .line 1287
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1288
    .line 1289
    .line 1290
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1291
    .line 1292
    .line 1293
    iget-wide v9, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mConnectedTime:J

    .line 1294
    .line 1295
    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1296
    .line 1297
    .line 1298
    const-string v1, " gap :"

    .line 1299
    .line 1300
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1304
    .line 1305
    .line 1306
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1307
    .line 1308
    .line 1309
    move-result-object v1

    .line 1310
    invoke-virtual {v3, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->addMHSDumpLog(Ljava/lang/String;)V

    .line 1311
    .line 1312
    .line 1313
    const/4 v1, 0x1

    .line 1314
    iput-boolean v1, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->isInUIList:Z

    .line 1315
    .line 1316
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1317
    .line 1318
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mgetClientCntDhcpack(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)I

    .line 1319
    .line 1320
    .line 1321
    move-result v1

    .line 1322
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1323
    .line 1324
    move-object/from16 v3, v18

    .line 1325
    .line 1326
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1327
    .line 1328
    .line 1329
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1330
    .line 1331
    iget-object v3, v3, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 1332
    .line 1333
    invoke-virtual {v3}, Ljava/util/Hashtable;->size()I

    .line 1334
    .line 1335
    .line 1336
    move-result v3

    .line 1337
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1338
    .line 1339
    .line 1340
    const-string v3, " d:"

    .line 1341
    .line 1342
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1343
    .line 1344
    .line 1345
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1346
    .line 1347
    .line 1348
    const-string v1, " h:"

    .line 1349
    .line 1350
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1351
    .line 1352
    .line 1353
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1354
    .line 1355
    invoke-virtual {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->getConnectedDeviceLength()I

    .line 1356
    .line 1357
    .line 1358
    move-result v1

    .line 1359
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1360
    .line 1361
    .line 1362
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1363
    .line 1364
    .line 1365
    move-result-object v1

    .line 1366
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    .line 1368
    .line 1369
    invoke-static {}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$sfgetMHSDBG()Z

    .line 1370
    .line 1371
    .line 1372
    move-result v1

    .line 1373
    if-eqz v1, :cond_e

    .line 1374
    .line 1375
    iget-object v0, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1376
    .line 1377
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowClientsInfo(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)V

    .line 1378
    .line 1379
    .line 1380
    goto/16 :goto_5

    .line 1381
    .line 1382
    :pswitch_e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1383
    .line 1384
    check-cast v1, Ljava/lang/String;

    .line 1385
    .line 1386
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1387
    .line 1388
    move-object/from16 v3, v17

    .line 1389
    .line 1390
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1391
    .line 1392
    .line 1393
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1394
    .line 1395
    invoke-static {v3, v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mshowMacAddress(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 1396
    .line 1397
    .line 1398
    move-result-object v3

    .line 1399
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1400
    .line 1401
    .line 1402
    const-string v3, " remaining_cnt :"

    .line 1403
    .line 1404
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1405
    .line 1406
    .line 1407
    iget-object v3, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1408
    .line 1409
    invoke-virtual {v3}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->getConnectedDeviceLength()I

    .line 1410
    .line 1411
    .line 1412
    move-result v3

    .line 1413
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1414
    .line 1415
    .line 1416
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1417
    .line 1418
    .line 1419
    move-result-object v2

    .line 1420
    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    .line 1422
    .line 1423
    invoke-static {}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->isSupported()Z

    .line 1424
    .line 1425
    .line 1426
    move-result v2

    .line 1427
    if-eqz v2, :cond_b

    .line 1428
    .line 1429
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1430
    .line 1431
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmContext(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Landroid/content/Context;

    .line 1432
    .line 1433
    .line 1434
    move-result-object v2

    .line 1435
    new-array v3, v12, [Ljava/lang/Object;

    .line 1436
    .line 1437
    const/16 v4, 0x16b

    .line 1438
    .line 1439
    invoke-static {v2, v4, v3}, Lcom/samsung/android/server/wifi/util/KnoxUtils;->auditLogEvent(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1440
    .line 1441
    .line 1442
    :cond_b
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1443
    .line 1444
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 1445
    .line 1446
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    .line 1447
    .line 1448
    .line 1449
    move-result v2

    .line 1450
    if-eqz v2, :cond_c

    .line 1451
    .line 1452
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1453
    .line 1454
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->mMHSClients:Ljava/util/Hashtable;

    .line 1455
    .line 1456
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1457
    .line 1458
    .line 1459
    move-result-object v2

    .line 1460
    check-cast v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;

    .line 1461
    .line 1462
    iget-object v2, v2, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$ClientInfo;->mState:Ljava/lang/String;

    .line 1463
    .line 1464
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1465
    .line 1466
    const-string v3, "sta_disconn"

    .line 1467
    .line 1468
    const/4 v5, -0x1

    .line 1469
    invoke-static {v2, v1, v3, v5}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$mMHSClientSetState(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1470
    .line 1471
    .line 1472
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1473
    .line 1474
    move-object/from16 v2, v16

    .line 1475
    .line 1476
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1477
    .line 1478
    .line 1479
    iget-object v2, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1480
    .line 1481
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    .line 1482
    .line 1483
    .line 1484
    move-result v2

    .line 1485
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1486
    .line 1487
    .line 1488
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v1

    .line 1492
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    .line 1494
    .line 1495
    iget-object v1, v0, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo$2;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;

    .line 1496
    .line 1497
    invoke-static {v1}, Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;->-$$Nest$fgetmChannelSwitch(Lcom/samsung/android/server/wifi/ap/SemWifiApClientInfo;)Z

    .line 1498
    .line 1499
    .line 1500
    move-result v1

    .line 1501
    if-eqz v1, :cond_e

    .line 1502
    .line 1503
    const-string v1, "Wait for 10 sec for reconnection of client. Sending CMD_AP_STA_RECONNECT"

    .line 1504
    .line 1505
    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    .line 1507
    .line 1508
    const/16 v1, 0x79

    .line 1509
    .line 1510
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 1511
    .line 1512
    .line 1513
    move-result-object v1

    .line 1514
    const-wide/16 v2, 0x2710

    .line 1515
    .line 1516
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1517
    .line 1518
    .line 1519
    goto :goto_5

    .line 1520
    :goto_4
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    .line 1521
    .line 1522
    .line 1523
    move-result-object v1

    .line 1524
    const-string v2, "Exception occurs = "

    .line 1525
    .line 1526
    if-eqz v1, :cond_d

    .line 1527
    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1529
    .line 1530
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1531
    .line 1532
    .line 1533
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    .line 1534
    .line 1535
    .line 1536
    move-result-object v0

    .line 1537
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 1538
    .line 1539
    .line 1540
    move-result-object v0

    .line 1541
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1542
    .line 1543
    .line 1544
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1545
    .line 1546
    .line 1547
    move-result-object v0

    .line 1548
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    .line 1550
    .line 1551
    goto :goto_5

    .line 1552
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1553
    .line 1554
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1555
    .line 1556
    .line 1557
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getStackTrace()[Ljava/lang/StackTraceElement;

    .line 1558
    .line 1559
    .line 1560
    move-result-object v0

    .line 1561
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1562
    .line 1563
    .line 1564
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1565
    .line 1566
    .line 1567
    move-result-object v0

    .line 1568
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    .line 1570
    .line 1571
    :cond_e
    :goto_5
    :pswitch_f
    return-void

    .line 1572
    nop

    .line 1573
    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_f
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
