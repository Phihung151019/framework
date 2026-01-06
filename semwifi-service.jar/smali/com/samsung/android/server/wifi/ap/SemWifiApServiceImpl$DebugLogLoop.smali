.class Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DebugLogLoop"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    const-string v0, "\n"

    .line 2
    .line 3
    const-string v1, "SemWifiApServiceImpl"

    .line 4
    .line 5
    const-string v2, "createNewFile exception: "

    .line 6
    .line 7
    const-string v3, "/data/log/wifi/net_dev_"

    .line 8
    .line 9
    const-string v4, "DebugLogLoop run() currentTime:"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 13
    .line 14
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mcheckAndDeleteOldLog(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 15
    .line 16
    .line 17
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 18
    .line 19
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$mgetTimeToStringSec(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    new-instance v7, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v7, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v4, " isHotspotLogRunning:"

    .line 32
    .line 33
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-object v4, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 37
    .line 38
    invoke-static {v4}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    new-instance v4, Ljava/io/File;

    .line 53
    .line 54
    new-instance v7, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v3, ".txt"

    .line 63
    .line 64
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 75
    .line 76
    .line 77
    move-result v3
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    if-nez v3, :cond_2

    .line 79
    .line 80
    :try_start_1
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 81
    .line 82
    .line 83
    move-result v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    const-string v7, "net_dev_"

    .line 85
    .line 86
    if-nez v3, :cond_0

    .line 87
    .line 88
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v8, ".txt file is not created"

    .line 97
    .line 98
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    goto/16 :goto_e

    .line 111
    .line 112
    :catch_0
    move-exception v0

    .line 113
    goto/16 :goto_b

    .line 114
    .line 115
    :catch_1
    move-exception v0

    .line 116
    goto/16 :goto_c

    .line 117
    .line 118
    :catch_2
    move-exception v3

    .line 119
    goto :goto_1

    .line 120
    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-eqz v3, :cond_1

    .line 125
    .line 126
    new-instance v3, Ljava/io/FileWriter;

    .line 127
    .line 128
    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    .line 130
    .line 131
    :try_start_3
    const-string v5, "1"

    .line 132
    .line 133
    invoke-virtual {v3, v5}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/io/FileWriter;->flush()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 140
    .line 141
    .line 142
    move-object v5, v3

    .line 143
    goto :goto_2

    .line 144
    :catchall_1
    move-exception v0

    .line 145
    move-object v5, v3

    .line 146
    goto/16 :goto_e

    .line 147
    .line 148
    :catch_3
    move-exception v0

    .line 149
    move-object v5, v3

    .line 150
    goto/16 :goto_b

    .line 151
    .line 152
    :catch_4
    move-exception v0

    .line 153
    move-object v5, v3

    .line 154
    goto/16 :goto_c

    .line 155
    .line 156
    :catch_5
    move-exception v5

    .line 157
    move-object v10, v5

    .line 158
    move-object v5, v3

    .line 159
    move-object v3, v10

    .line 160
    goto :goto_1

    .line 161
    :cond_1
    :try_start_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    const-string v6, ".txt file is not exist"

    .line 170
    .line 171
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    .line 180
    .line 181
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 182
    .line 183
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 184
    .line 185
    .line 186
    return-void

    .line 187
    :goto_1
    :try_start_5
    new-instance v6, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    .line 201
    .line 202
    :cond_2
    :goto_2
    const-wide/16 v2, -0x1

    .line 203
    .line 204
    :goto_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {v6}, Ljava/lang/Thread;->isInterrupted()Z

    .line 209
    .line 210
    .line 211
    move-result v6

    .line 212
    if-nez v6, :cond_7

    .line 213
    .line 214
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 215
    .line 216
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Z

    .line 217
    .line 218
    .line 219
    move-result v6

    .line 220
    if-eqz v6, :cond_7

    .line 221
    .line 222
    iget-object v6, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 223
    .line 224
    invoke-static {v6}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fgetmWifiManagerProxy(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)Lcom/samsung/android/server/wifi/SemWifiManagerProxy;

    .line 225
    .line 226
    .line 227
    move-result-object v6

    .line 228
    invoke-virtual {v6}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->isWifiApEnabled()Z

    .line 229
    .line 230
    .line 231
    move-result v6
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 232
    if-eqz v6, :cond_7

    .line 233
    .line 234
    const-wide/32 v6, 0x1100000

    .line 235
    .line 236
    .line 237
    cmp-long v2, v2, v6

    .line 238
    .line 239
    if-gez v2, :cond_7

    .line 240
    .line 241
    :try_start_6
    const-string v2, "date"

    .line 242
    .line 243
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 248
    .line 249
    .line 250
    move-result-object v2
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 251
    const/4 v3, 0x1

    .line 252
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 253
    .line 254
    .line 255
    new-instance v6, Ljava/lang/StringBuffer;

    .line 256
    .line 257
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 258
    .line 259
    .line 260
    new-instance v7, Ljava/io/BufferedReader;

    .line 261
    .line 262
    new-instance v8, Ljava/io/InputStreamReader;

    .line 263
    .line 264
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 269
    .line 270
    invoke-direct {v8, v2, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 271
    .line 272
    .line 273
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 274
    .line 275
    .line 276
    :goto_4
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    if-eqz v2, :cond_3

    .line 281
    .line 282
    new-instance v8, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .line 292
    .line 293
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 294
    .line 295
    .line 296
    move-result-object v2

    .line 297
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    .line 299
    .line 300
    goto :goto_4

    .line 301
    :catch_6
    move-exception v2

    .line 302
    goto/16 :goto_9

    .line 303
    .line 304
    :catch_7
    move-exception v2

    .line 305
    goto :goto_5

    .line 306
    :cond_3
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 307
    .line 308
    .line 309
    move-result v2

    .line 310
    if-eqz v2, :cond_4

    .line 311
    .line 312
    new-instance v2, Ljava/io/FileWriter;

    .line 313
    .line 314
    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 315
    .line 316
    invoke-direct {v2, v4, v7, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Ljava/nio/charset/Charset;Z)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 317
    .line 318
    .line 319
    :try_start_8
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v5

    .line 323
    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_a
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 330
    .line 331
    .line 332
    move-object v5, v2

    .line 333
    goto :goto_6

    .line 334
    :catchall_2
    move-exception v0

    .line 335
    move-object v5, v2

    .line 336
    goto/16 :goto_e

    .line 337
    .line 338
    :catch_8
    move-exception v0

    .line 339
    move-object v5, v2

    .line 340
    goto/16 :goto_b

    .line 341
    .line 342
    :catch_9
    move-exception v3

    .line 343
    move-object v5, v2

    .line 344
    move-object v2, v3

    .line 345
    goto/16 :goto_9

    .line 346
    .line 347
    :catch_a
    move-exception v5

    .line 348
    move-object v10, v5

    .line 349
    move-object v5, v2

    .line 350
    move-object v2, v10

    .line 351
    :goto_5
    :try_start_9
    const-string v6, "dumpP1 InterruptedException"

    .line 352
    .line 353
    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    .line 355
    .line 356
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 357
    .line 358
    .line 359
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 360
    .line 361
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 362
    .line 363
    .line 364
    :cond_4
    :goto_6
    const-string v2, "cat /proc/net/dev"

    .line 365
    .line 366
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 367
    .line 368
    .line 369
    move-result-object v6

    .line 370
    invoke-virtual {v6, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 371
    .line 372
    .line 373
    move-result-object v2
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 374
    :try_start_a
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    .line 375
    .line 376
    .line 377
    new-instance v6, Ljava/lang/StringBuffer;

    .line 378
    .line 379
    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 380
    .line 381
    .line 382
    new-instance v7, Ljava/io/BufferedReader;

    .line 383
    .line 384
    new-instance v8, Ljava/io/InputStreamReader;

    .line 385
    .line 386
    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 387
    .line 388
    .line 389
    move-result-object v2

    .line 390
    invoke-direct {v8, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 391
    .line 392
    .line 393
    invoke-direct {v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 394
    .line 395
    .line 396
    :goto_7
    invoke-virtual {v7}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 397
    .line 398
    .line 399
    move-result-object v2

    .line 400
    if-eqz v2, :cond_5

    .line 401
    .line 402
    new-instance v8, Ljava/lang/StringBuilder;

    .line 403
    .line 404
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    .line 412
    .line 413
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 418
    .line 419
    .line 420
    goto :goto_7

    .line 421
    :catch_b
    move-exception v2

    .line 422
    goto :goto_8

    .line 423
    :cond_5
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    if-eqz v2, :cond_6

    .line 428
    .line 429
    new-instance v2, Ljava/io/FileWriter;

    .line 430
    .line 431
    invoke-direct {v2, v4, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 432
    .line 433
    .line 434
    :try_start_b
    new-instance v3, Ljava/lang/StringBuilder;

    .line 435
    .line 436
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v5

    .line 443
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v3

    .line 453
    invoke-virtual {v2, v3}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 457
    .line 458
    .line 459
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_c
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 460
    .line 461
    .line 462
    move-object v5, v2

    .line 463
    goto :goto_a

    .line 464
    :catch_c
    move-exception v3

    .line 465
    move-object v5, v2

    .line 466
    move-object v2, v3

    .line 467
    :goto_8
    :try_start_c
    const-string v3, "dumpP2 InterruptedException"

    .line 468
    .line 469
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    .line 471
    .line 472
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 473
    .line 474
    .line 475
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 476
    .line 477
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 478
    .line 479
    .line 480
    goto :goto_a

    .line 481
    :goto_9
    :try_start_d
    const-string v3, "IOException"

    .line 482
    .line 483
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    .line 485
    .line 486
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 487
    .line 488
    .line 489
    iget-object v2, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 490
    .line 491
    invoke-static {v2}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 492
    .line 493
    .line 494
    :cond_6
    :goto_a
    invoke-virtual {v4}, Ljava/io/File;->length()J

    .line 495
    .line 496
    .line 497
    move-result-wide v2

    .line 498
    new-instance v6, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .line 502
    .line 503
    const-string v7, "Hotspot debug log file size: "

    .line 504
    .line 505
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    const-string v7, " bytes"

    .line 512
    .line 513
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    .line 515
    .line 516
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object v6

    .line 520
    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    .line 522
    .line 523
    const-wide/16 v6, 0x384

    .line 524
    .line 525
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 526
    .line 527
    .line 528
    goto/16 :goto_3

    .line 529
    .line 530
    :cond_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 531
    .line 532
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 533
    .line 534
    .line 535
    if-eqz v5, :cond_8

    .line 536
    .line 537
    :try_start_e
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_d

    .line 538
    .line 539
    .line 540
    goto :goto_d

    .line 541
    :catch_d
    move-exception p0

    .line 542
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 543
    .line 544
    .line 545
    goto :goto_d

    .line 546
    :goto_b
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .line 550
    .line 551
    const-string v3, "DebugLogLoop Exception:"

    .line 552
    .line 553
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 557
    .line 558
    .line 559
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    .line 565
    .line 566
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 567
    .line 568
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 569
    .line 570
    .line 571
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 572
    .line 573
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 574
    .line 575
    .line 576
    if-eqz v5, :cond_8

    .line 577
    .line 578
    :try_start_10
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 579
    .line 580
    .line 581
    goto :goto_d

    .line 582
    :goto_c
    :try_start_11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 583
    .line 584
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 585
    .line 586
    .line 587
    const-string v3, "DebugLogLoop InterruptedException:"

    .line 588
    .line 589
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    .line 591
    .line 592
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 593
    .line 594
    .line 595
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 596
    .line 597
    .line 598
    move-result-object v0

    .line 599
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    .line 601
    .line 602
    iget-object v0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 603
    .line 604
    invoke-static {v0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 605
    .line 606
    .line 607
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 608
    .line 609
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 610
    .line 611
    .line 612
    if-eqz v5, :cond_8

    .line 613
    .line 614
    :try_start_12
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 615
    .line 616
    .line 617
    :cond_8
    :goto_d
    return-void

    .line 618
    :goto_e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl$DebugLogLoop;->this$0:Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;

    .line 619
    .line 620
    invoke-static {p0}, Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;->-$$Nest$fputisHotspotLogRunning(Lcom/samsung/android/server/wifi/ap/SemWifiApServiceImpl;)V

    .line 621
    .line 622
    .line 623
    if-eqz v5, :cond_9

    .line 624
    .line 625
    :try_start_13
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_e

    .line 626
    .line 627
    .line 628
    goto :goto_f

    .line 629
    :catch_e
    move-exception p0

    .line 630
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 631
    .line 632
    .line 633
    :cond_9
    :goto_f
    throw v0
.end method
