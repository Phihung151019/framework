.class public Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;
.super Lcom/android/modules/utils/BasicShellCommandHandler;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "SemWifiP2pShellCommand"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    const-class v0, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 15
    .line 16
    return-void
.end method

.method private buildWifiP2pDevice(Ljava/io/PrintWriter;)Landroid/net/wifi/p2p/WifiP2pDevice;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 6
    .line 7
    invoke-direct {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 11
    .line 12
    return-object p1
.end method

.method private checkRootPermission()V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 9
    .line 10
    const-string v1, "Uid "

    .line 11
    .line 12
    const-string v2, " does not have access to sem_wifi_p2p commands"

    .line 13
    .line 14
    invoke-static {v1, p0, v2}, Lcom/samsung/android/server/wifi/SemSwitchBoardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    throw v0
.end method

.method private getNextArgRequiredTrueOrFalse(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v1, "Expected \'"

    .line 24
    .line 25
    const-string v2, "\' or \'"

    .line 26
    .line 27
    const-string v3, "\' as next arg but got \'"

    .line 28
    .line 29
    invoke-static {v1, p1, v2, p2, v3}, Lcom/samsung/android/mcf/continuity/streaming/ContinuityStreamingJSONHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "\'"

    .line 34
    .line 35
    invoke-static {p1, p0, p2}, Lcom/samsung/android/mcf/continuity/common/DLog$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method private handleCommand(Ljava/lang/String;Ljava/io/PrintWriter;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v2, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand$1;

    .line 8
    .line 9
    invoke-direct {v2, p0, v0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand$1;-><init>(Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;Ljava/util/concurrent/CountDownLatch;Ljava/io/PrintWriter;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    const-string v3, "false"

    .line 16
    .line 17
    const-string v4, "true"

    .line 18
    .line 19
    const/4 v5, -0x1

    .line 20
    const-wide/16 v6, 0x3e8

    .line 21
    .line 22
    const/4 v8, 0x0

    .line 23
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 24
    .line 25
    .line 26
    move-result v9

    .line 27
    sparse-switch v9, :sswitch_data_0

    .line 28
    .line 29
    .line 30
    :goto_0
    move v1, v5

    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :sswitch_0
    const-string v1, "get-p2p-feature"

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_0

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/16 v1, 0xb

    .line 43
    .line 44
    goto/16 :goto_1

    .line 45
    .line 46
    :sswitch_1
    const-string v1, "get-sem-wifi-p2p-device"

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    const/16 v1, 0xa

    .line 56
    .line 57
    goto/16 :goto_1

    .line 58
    .line 59
    :sswitch_2
    const-string v1, "start-peer-discovery-on-specific-channel"

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    const/16 v1, 0x9

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :sswitch_3
    const-string v1, "factory-reset"

    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    const/16 v1, 0x8

    .line 82
    .line 83
    goto :goto_1

    .line 84
    :sswitch_4
    const-string v1, "set-ms-mice"

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-nez v1, :cond_4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    const/4 v1, 0x7

    .line 94
    goto :goto_1

    .line 95
    :sswitch_5
    const-string v1, "get-p2p-concurrency"

    .line 96
    .line 97
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-nez v1, :cond_5

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    const/4 v1, 0x6

    .line 105
    goto :goto_1

    .line 106
    :sswitch_6
    const-string v1, "start-peer-discovery-on-social-channels"

    .line 107
    .line 108
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_6

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_6
    const/4 v1, 0x5

    .line 116
    goto :goto_1

    .line 117
    :sswitch_7
    const-string v1, "disconnect-ap-block-auto-join"

    .line 118
    .line 119
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-nez v1, :cond_7

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_7
    const/4 v1, 0x4

    .line 127
    goto :goto_1

    .line 128
    :sswitch_8
    const-string v1, "remove-client"

    .line 129
    .line 130
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-nez v1, :cond_8

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_8
    const/4 v1, 0x3

    .line 138
    goto :goto_1

    .line 139
    :sswitch_9
    const-string v1, "set-screen-sharing"

    .line 140
    .line 141
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-nez v1, :cond_9

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_9
    const/4 v1, 0x2

    .line 149
    goto :goto_1

    .line 150
    :sswitch_a
    const-string v9, "set-prepared-account-pin"

    .line 151
    .line 152
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v9

    .line 156
    if-nez v9, :cond_b

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :sswitch_b
    const-string v1, "get-p2p-factory-mac"

    .line 161
    .line 162
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    move-result v1

    .line 166
    if-nez v1, :cond_a

    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_a
    move v1, v8

    .line 171
    :cond_b
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, p1}, Lcom/android/modules/utils/BasicShellCommandHandler;->handleDefaultCommands(Ljava/lang/String;)I

    .line 175
    .line 176
    .line 177
    move-result p0

    .line 178
    return p0

    .line 179
    :pswitch_0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 180
    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->getP2pFeature()J

    .line 182
    .line 183
    .line 184
    move-result-wide p0

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    .line 186
    .line 187
    const-string v1, "feature: "

    .line 188
    .line 189
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object p0

    .line 199
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    return v8

    .line 203
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->buildWifiP2pDevice(Ljava/io/PrintWriter;)Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 208
    .line 209
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->getSemWifiP2pDevice(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;

    .line 210
    .line 211
    .line 212
    move-result-object p0

    .line 213
    if-eqz p0, :cond_c

    .line 214
    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->toString()Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance p1, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    const-string v0, " hashedDi : "

    .line 225
    .line 226
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pDevice;->getScreenSharingHashedDi()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object p0

    .line 233
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    :cond_c
    return v8

    .line 244
    :pswitch_2
    :try_start_0
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 249
    .line 250
    .line 251
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    if-gtz p1, :cond_d

    .line 253
    .line 254
    const-string p0, "Invalid argument to \'start-peer-discovery-on-specific-channel\' - must be a positive integer."

    .line 255
    .line 256
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 257
    .line 258
    .line 259
    return v5

    .line 260
    :cond_d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 261
    .line 262
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->discoverPeersOnSpecificChannel(ILcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V

    .line 263
    .line 264
    .line 265
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 266
    .line 267
    invoke-virtual {v0, v6, v7, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 268
    .line 269
    .line 270
    return v8

    .line 271
    :catch_0
    const-string p0, "Invalid argument to \'start-peer-discovery-on-specific-channel\' - must be an integer"

    .line 272
    .line 273
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    return v5

    .line 277
    :pswitch_3
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 278
    .line 279
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->factoryReset()V

    .line 280
    .line 281
    .line 282
    return v8

    .line 283
    :pswitch_4
    :try_start_1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object p1

    .line 287
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 288
    .line 289
    .line 290
    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 291
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p2

    .line 295
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 300
    .line 301
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->setMsMiceInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    return v8

    .line 305
    :catch_1
    const-string p0, "Invalid argument to \'set-ms-mice\' - must be an integer"

    .line 306
    .line 307
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    return v5

    .line 311
    :pswitch_5
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 312
    .line 313
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->isP2pSoftApConcurrencySupported()Z

    .line 314
    .line 315
    .line 316
    move-result p0

    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    const-string v0, "P2pSoftApConcurrency: "

    .line 320
    .line 321
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    return v8

    .line 335
    :pswitch_6
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 336
    .line 337
    invoke-virtual {p0, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->discoverPeersOnSocialChannels(Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V

    .line 338
    .line 339
    .line 340
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 341
    .line 342
    invoke-virtual {v0, v6, v7, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 343
    .line 344
    .line 345
    return v8

    .line 346
    :pswitch_7
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->getNextArgRequiredTrueOrFalse(Ljava/lang/String;Ljava/lang/String;)Z

    .line 347
    .line 348
    .line 349
    move-result p1

    .line 350
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 351
    .line 352
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->disconnectApBlockAutojoin(Z)Z

    .line 353
    .line 354
    .line 355
    return v8

    .line 356
    :pswitch_8
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object p1

    .line 360
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 361
    .line 362
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->removeClient(Ljava/lang/String;Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V

    .line 363
    .line 364
    .line 365
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 366
    .line 367
    invoke-virtual {v0, v6, v7, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 368
    .line 369
    .line 370
    return v8

    .line 371
    :pswitch_9
    invoke-direct {p0, v4, v3}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->getNextArgRequiredTrueOrFalse(Ljava/lang/String;Ljava/lang/String;)Z

    .line 372
    .line 373
    .line 374
    move-result p1

    .line 375
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 376
    .line 377
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->setScreenSharing(Z)V

    .line 378
    .line 379
    .line 380
    return v8

    .line 381
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object p1

    .line 385
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object p2

    .line 389
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getNextArgRequired()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 394
    .line 395
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->setPreparedAccountPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/wifi/p2p/SemWifiP2pManager$ActionListener;)V

    .line 396
    .line 397
    .line 398
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 399
    .line 400
    invoke-virtual {v0, v6, v7, p0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 401
    .line 402
    .line 403
    return v8

    .line 404
    :pswitch_b
    iget-object p0, p0, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->mSemWifiP2pManager:Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;

    .line 405
    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/wifi/p2p/SemWifiP2pManager;->getP2pFactoryMacAddress()Landroid/net/MacAddress;

    .line 407
    .line 408
    .line 409
    move-result-object p0

    .line 410
    invoke-virtual {p0}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p0

    .line 414
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    return v8

    .line 418
    nop

    .line 419
    :sswitch_data_0
    .sparse-switch
        -0x59dd5eca -> :sswitch_b
        -0x44409f10 -> :sswitch_a
        -0x2bbe36ba -> :sswitch_9
        -0x206b76cc -> :sswitch_8
        -0xa6c4785 -> :sswitch_7
        -0x72058a1 -> :sswitch_6
        -0x66e4543 -> :sswitch_5
        0x23eec5a -> :sswitch_4
        0x1840f2cc -> :sswitch_3
        0x18f89019 -> :sswitch_2
        0x53aa2164 -> :sswitch_1
        0x71ef8b20 -> :sswitch_0
    .end sparse-switch

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    .line 468
    .line 469
    :pswitch_data_0
    .packed-switch 0x0
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


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->checkRootPermission()V

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const-string v1, ""

    .line 11
    .line 12
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    :cond_0
    const-string p1, "help"

    .line 19
    .line 20
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/server/wifi/p2p/SemWifiP2pShellCommand;->handleCommand(Ljava/lang/String;Ljava/io/PrintWriter;)I

    .line 21
    .line 22
    .line 23
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    return p0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string v1, "Exception: "

    .line 29
    .line 30
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    const/4 p0, -0x1

    .line 44
    return p0
.end method

.method public onHelp()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/modules/utils/BasicShellCommandHandler;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "SEM Wi-Fi P2P (sem_wifi_p2p) commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "    Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  start-peer-discovery-on-social-channels"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "    Start p2p peer discovery on social channels."

    .line 26
    .line 27
    const-string v1, "  start-peer-discovery-on-specific-channel <channel>"

    .line 28
    .line 29
    const-string v2, "    Start p2p peer discovery on specific channel."

    .line 30
    .line 31
    const-string v3, "  set-screen-sharing"

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "    Set Screen Sharing mode."

    .line 37
    .line 38
    const-string v1, "  set-ms-mice"

    .line 39
    .line 40
    const-string v2, "    Set MS MICE info."

    .line 41
    .line 42
    const-string v3, "  remove-client <peerAddress>"

    .line 43
    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "    Remove the p2p client."

    .line 48
    .line 49
    const-string v1, "  disconnect-ap-block-auto-join"

    .line 50
    .line 51
    const-string v2, "  get-sem-wifi-p2p-device <peerAddress>"

    .line 52
    .line 53
    const-string v3, "  get-p2p-factory-mac"

    .line 54
    .line 55
    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/server/wifi/SemWifiShellCommand$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "  get-p2p-feature"

    .line 59
    .line 60
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const-string v0, "  set-prepared-account-pin"

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const-string v0, "  get-p2p-concurrency"

    .line 69
    .line 70
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 74
    .line 75
    .line 76
    return-void
.end method
