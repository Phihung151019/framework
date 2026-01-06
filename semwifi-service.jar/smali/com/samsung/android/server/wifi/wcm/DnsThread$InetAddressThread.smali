.class final Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;
.super Ljava/lang/Thread;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/DnsThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InetAddressThread"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WifiConnectivityMonitor.InetAddressThread"


# instance fields
.field private final mHostToResolve:Ljava/lang/String;

.field private volatile mResultIp:Ljava/net/InetAddress;

.field private volatile mResultType:I

.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/wifi/wcm/DnsThread;Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 11
    .line 12
    iput-object p2, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mHostToResolve:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getResultIp()Ljava/net/InetAddress;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    .line 2
    .line 3
    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 2
    .line 3
    return p0
.end method

.method public run()V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, "."

    .line 4
    .line 5
    const-string v2, "WifiConnectivityMonitor.InetAddressThread"

    .line 6
    .line 7
    const-string v3, "DNS response arrived from InetThread ["

    .line 8
    .line 9
    const-string v4, "DNS requested, Host : "

    .line 10
    .line 11
    const/4 v5, 0x1

    .line 12
    :try_start_0
    iget-object v6, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 13
    .line 14
    invoke-static {v6}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/Network;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    if-nez v6, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x9

    .line 21
    .line 22
    iput v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 23
    .line 24
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string v0, "already disconnected!"

    .line 31
    .line 32
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    goto/16 :goto_4

    .line 38
    .line 39
    :catch_1
    move-exception v0

    .line 40
    goto/16 :goto_5

    .line 41
    .line 42
    :catch_2
    move-exception v0

    .line 43
    goto/16 :goto_6

    .line 44
    .line 45
    :cond_0
    :goto_0
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_2

    .line 60
    .line 61
    new-instance v6, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget-object v4, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mHostToResolve:Ljava/lang/String;

    .line 67
    .line 68
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object v4, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 79
    .line 80
    invoke-static {v4}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmNetwork(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Landroid/net/Network;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iget-object v6, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mHostToResolve:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v4, v6}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    if-eqz v6, :cond_3

    .line 95
    .line 96
    new-instance v6, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    .line 102
    .line 103
    .line 104
    move-result-wide v7

    .line 105
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v3, "]"

    .line 109
    .line 110
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    .line 119
    .line 120
    :cond_3
    iget-object v3, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 121
    .line 122
    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmAlreadyFinished(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Z

    .line 123
    .line 124
    .line 125
    move-result v3

    .line 126
    if-eqz v3, :cond_4

    .line 127
    .line 128
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 129
    .line 130
    .line 131
    move-result v0

    .line 132
    if-eqz v0, :cond_15

    .line 133
    .line 134
    const-string v0, "already finished"

    .line 135
    .line 136
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    .line 138
    .line 139
    return-void

    .line 140
    :cond_4
    iget-object v3, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 141
    .line 142
    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fputmAlreadyFinished(Lcom/samsung/android/server/wifi/wcm/DnsThread;)V

    .line 143
    .line 144
    .line 145
    array-length v3, v4
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    const/4 v6, 0x0

    .line 147
    const/4 v7, 0x0

    .line 148
    move v8, v6

    .line 149
    :goto_1
    const-string v9, "DNS_CHECK_RESULT_SUCCESS: "

    .line 150
    .line 151
    if-ge v8, v3, :cond_d

    .line 152
    .line 153
    :try_start_1
    aget-object v10, v4, v8

    .line 154
    .line 155
    instance-of v11, v10, Ljava/net/Inet4Address;

    .line 156
    .line 157
    if-eqz v11, :cond_b

    .line 158
    .line 159
    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    .line 160
    .line 161
    .line 162
    move-result-object v11

    .line 163
    aget-byte v11, v11, v6

    .line 164
    .line 165
    and-int/lit16 v11, v11, 0xff

    .line 166
    .line 167
    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    .line 168
    .line 169
    .line 170
    move-result-object v12

    .line 171
    aget-byte v12, v12, v5

    .line 172
    .line 173
    and-int/lit16 v12, v12, 0xff

    .line 174
    .line 175
    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    .line 176
    .line 177
    .line 178
    move-result-object v13

    .line 179
    const/4 v14, 0x2

    .line 180
    aget-byte v13, v13, v14

    .line 181
    .line 182
    and-int/lit16 v13, v13, 0xff

    .line 183
    .line 184
    invoke-virtual {v10}, Ljava/net/InetAddress;->getAddress()[B

    .line 185
    .line 186
    .line 187
    move-result-object v15

    .line 188
    const/16 v16, 0x3

    .line 189
    .line 190
    aget-byte v15, v15, v16

    .line 191
    .line 192
    and-int/lit16 v15, v15, 0xff

    .line 193
    .line 194
    const/16 v14, 0xa

    .line 195
    .line 196
    if-eq v11, v14, :cond_9

    .line 197
    .line 198
    const/16 v14, 0xc0

    .line 199
    .line 200
    if-ne v11, v14, :cond_5

    .line 201
    .line 202
    const/16 v14, 0xa8

    .line 203
    .line 204
    if-eq v12, v14, :cond_9

    .line 205
    .line 206
    :cond_5
    const/16 v14, 0xac

    .line 207
    .line 208
    if-ne v11, v14, :cond_6

    .line 209
    .line 210
    const/16 v14, 0x10

    .line 211
    .line 212
    if-lt v12, v14, :cond_6

    .line 213
    .line 214
    const/16 v14, 0x1f

    .line 215
    .line 216
    if-le v12, v14, :cond_9

    .line 217
    .line 218
    :cond_6
    if-ne v11, v5, :cond_7

    .line 219
    .line 220
    const/16 v14, 0x21

    .line 221
    .line 222
    if-ne v12, v14, :cond_7

    .line 223
    .line 224
    const/16 v14, 0xcb

    .line 225
    .line 226
    if-ne v13, v14, :cond_7

    .line 227
    .line 228
    const/16 v14, 0x27

    .line 229
    .line 230
    if-ne v15, v14, :cond_7

    .line 231
    .line 232
    goto :goto_2

    .line 233
    :cond_7
    iput-object v10, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    .line 234
    .line 235
    iput v6, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 236
    .line 237
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    if-eqz v0, :cond_8

    .line 242
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    .line 244
    .line 245
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-object v3, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    .line 252
    .line 253
    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v3

    .line 257
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v0

    .line 264
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    :cond_8
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 268
    .line 269
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 274
    .line 275
    .line 276
    return-void

    .line 277
    :cond_9
    :goto_2
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 278
    .line 279
    .line 280
    move-result v9

    .line 281
    if-eqz v9, :cond_a

    .line 282
    .line 283
    new-instance v9, Ljava/lang/StringBuilder;

    .line 284
    .line 285
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .line 287
    .line 288
    iget-object v14, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mHostToResolve:Ljava/lang/String;

    .line 289
    .line 290
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    const-string v14, " - Dns Response with private Network IP Address !!! - "

    .line 294
    .line 295
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 311
    .line 312
    .line 313
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v9

    .line 323
    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    .line 325
    .line 326
    :cond_a
    iput-object v10, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    .line 327
    .line 328
    const/4 v9, 0x2

    .line 329
    iput v9, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 330
    .line 331
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 332
    .line 333
    .line 334
    move-result v9

    .line 335
    if-eqz v9, :cond_c

    .line 336
    .line 337
    new-instance v9, Ljava/lang/StringBuilder;

    .line 338
    .line 339
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 340
    .line 341
    .line 342
    const-string v10, "DNS_CHECK_RESULT_PRIVATE_IP: "

    .line 343
    .line 344
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    iget-object v10, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    .line 348
    .line 349
    invoke-virtual {v10}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    .line 350
    .line 351
    .line 352
    move-result-object v10

    .line 353
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v9

    .line 360
    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    .line 362
    .line 363
    goto :goto_3

    .line 364
    :cond_b
    move-object v7, v10

    .line 365
    :cond_c
    :goto_3
    add-int/lit8 v8, v8, 0x1

    .line 366
    .line 367
    goto/16 :goto_1

    .line 368
    .line 369
    :cond_d
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    .line 370
    .line 371
    if-nez v0, :cond_f

    .line 372
    .line 373
    if-eqz v7, :cond_f

    .line 374
    .line 375
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 376
    .line 377
    .line 378
    move-result v0

    .line 379
    if-eqz v0, :cond_e

    .line 380
    .line 381
    const-string v0, "Dns Response with IPv6"

    .line 382
    .line 383
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    .line 385
    .line 386
    :cond_e
    iput-object v7, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    .line 387
    .line 388
    iput v6, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 389
    .line 390
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 391
    .line 392
    .line 393
    move-result v0

    .line 394
    if-eqz v0, :cond_f

    .line 395
    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    iget-object v3, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultIp:Ljava/net/InetAddress;

    .line 405
    .line 406
    invoke-virtual {v3}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v0

    .line 417
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    .line 419
    .line 420
    :cond_f
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 421
    .line 422
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 427
    .line 428
    .line 429
    return-void

    .line 430
    :goto_4
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 431
    .line 432
    .line 433
    move-result v3

    .line 434
    if-eqz v3, :cond_10

    .line 435
    .line 436
    new-instance v3, Ljava/lang/StringBuilder;

    .line 437
    .line 438
    const-string v4, "NullPointerException : "

    .line 439
    .line 440
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v0

    .line 450
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    :cond_10
    const/16 v0, 0x8

    .line 454
    .line 455
    iput v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 456
    .line 457
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 458
    .line 459
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    .line 460
    .line 461
    .line 462
    move-result-object v0

    .line 463
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 464
    .line 465
    .line 466
    goto :goto_8

    .line 467
    :goto_5
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 468
    .line 469
    .line 470
    move-result v3

    .line 471
    if-eqz v3, :cond_11

    .line 472
    .line 473
    new-instance v3, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string v4, "SecurityException : "

    .line 476
    .line 477
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    .line 489
    .line 490
    :cond_11
    const/4 v0, 0x7

    .line 491
    iput v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 492
    .line 493
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 494
    .line 495
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 500
    .line 501
    .line 502
    goto :goto_8

    .line 503
    :goto_6
    invoke-virtual {v0}, Ljava/net/UnknownHostException;->getLocalizedMessage()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v0

    .line 507
    if-eqz v0, :cond_13

    .line 508
    .line 509
    const-string v3, "DNS service refused"

    .line 510
    .line 511
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 512
    .line 513
    .line 514
    move-result v0

    .line 515
    if-eqz v0, :cond_13

    .line 516
    .line 517
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 518
    .line 519
    .line 520
    move-result v0

    .line 521
    if-eqz v0, :cond_12

    .line 522
    .line 523
    const-string v0, "DNS_CHECK_RESULT_NO_INTERNET"

    .line 524
    .line 525
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .line 527
    .line 528
    :cond_12
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 529
    .line 530
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetmDnsThreadCallBack(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;

    .line 531
    .line 532
    .line 533
    move-result-object v0

    .line 534
    const/16 v2, 0x612

    .line 535
    .line 536
    invoke-interface {v0, v2}, Lcom/samsung/android/server/wifi/wcm/DnsThread$IDnsThreadCallBack;->notifyAnalyticsDisconnectReason(S)V

    .line 537
    .line 538
    .line 539
    iput v5, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 540
    .line 541
    goto :goto_7

    .line 542
    :cond_13
    invoke-static {}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$sfgetDBG()Z

    .line 543
    .line 544
    .line 545
    move-result v0

    .line 546
    if-eqz v0, :cond_14

    .line 547
    .line 548
    const-string v0, "DNS_CHECK_RESULT_UNKNOWNHOSTEXCEPTION"

    .line 549
    .line 550
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    .line 552
    .line 553
    :cond_14
    const/4 v0, 0x6

    .line 554
    iput v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->mResultType:I

    .line 555
    .line 556
    :goto_7
    iget-object v0, v1, Lcom/samsung/android/server/wifi/wcm/DnsThread$InetAddressThread;->this$0:Lcom/samsung/android/server/wifi/wcm/DnsThread;

    .line 557
    .line 558
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/DnsThread;->-$$Nest$fgetlatch(Lcom/samsung/android/server/wifi/wcm/DnsThread;)Ljava/util/concurrent/CountDownLatch;

    .line 559
    .line 560
    .line 561
    move-result-object v0

    .line 562
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 563
    .line 564
    .line 565
    :cond_15
    :goto_8
    return-void
.end method
