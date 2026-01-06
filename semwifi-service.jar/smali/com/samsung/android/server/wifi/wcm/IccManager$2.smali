.class Lcom/samsung/android/server/wifi/wcm/IccManager$2;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/wcm/IccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/wcm/IccManager;)V
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
    iput-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    .line 1
    const-string p1, "%s/%d"

    .line 2
    .line 3
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 4
    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputInfKeyGroupList(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputinfResult(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 24
    .line 25
    new-instance v1, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputinfResult2(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 34
    .line 35
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputinfResultDB(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 44
    .line 45
    new-instance v1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputinfConfidence(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/util/List;)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 54
    .line 55
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 56
    .line 57
    const-string v2, "MM-dd HH:mm:ss.SSS"

    .line 58
    .line 59
    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    new-instance v2, Ljava/util/Date;

    .line 63
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 65
    .line 66
    .line 67
    move-result-wide v3

    .line 68
    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputinfreqTime(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :try_start_0
    invoke-static {p2}, Lcom/samsung/android/wifi/intelligence/icc/IIccInfService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wifi/intelligence/icc/IIccInfService;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 83
    .line 84
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/app/ActivityManager;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    .line 90
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 91
    .line 92
    const/4 v1, -0x1

    .line 93
    invoke-static {v0, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmInfServicePid(Lcom/samsung/android/server/wifi/wcm/IccManager;I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmActivityManager(Lcom/samsung/android/server/wifi/wcm/IccManager;)Landroid/app/ActivityManager;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_1

    .line 115
    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 121
    .line 122
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 123
    .line 124
    const-string v3, "com.samsung.android.wifi.intelligence:iccInfService"

    .line 125
    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_0

    .line 131
    .line 132
    iget-object v2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 133
    .line 134
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 135
    .line 136
    invoke-static {v2, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fputmInfServicePid(Lcom/samsung/android/server/wifi/wcm/IccManager;I)V

    .line 137
    .line 138
    .line 139
    goto :goto_0

    .line 140
    :catch_0
    move-exception p1

    .line 141
    goto/16 :goto_4

    .line 142
    .line 143
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 144
    .line 145
    const-string v1, "inference service connected. pid: %d"

    .line 146
    .line 147
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmInfServicePid(Lcom/samsung/android/server/wifi/wcm/IccManager;)I

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v2

    .line 155
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .line 170
    .line 171
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 172
    .line 173
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmInferenceList(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/List;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-eqz v2, :cond_2

    .line 186
    .line 187
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v2

    .line 191
    check-cast v2, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;

    .line 192
    .line 193
    iget-object v3, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 194
    .line 195
    invoke-static {v3}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetInfKeyGroupList(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/List;

    .line 196
    .line 197
    .line 198
    move-result-object v3

    .line 199
    iget-object v4, v2, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->key:Ljava/lang/String;

    .line 200
    .line 201
    iget-object v5, v2, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->groupId:Ljava/lang/Integer;

    .line 202
    .line 203
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v4

    .line 207
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v4

    .line 211
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    iget-object v3, v2, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->key:Ljava/lang/String;

    .line 215
    .line 216
    iget-object v2, v2, Lcom/samsung/android/server/wifi/wcm/IccManager$DataElement;->groupId:Ljava/lang/Integer;

    .line 217
    .line 218
    filled-new-array {v3, v2}, [Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 223
    .line 224
    .line 225
    move-result-object v2

    .line 226
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    goto :goto_1

    .line 230
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .line 234
    .line 235
    iget-object v1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 236
    .line 237
    invoke-static {v1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmLastScanResults(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/List;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 242
    .line 243
    .line 244
    move-result-object v1

    .line 245
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 246
    .line 247
    .line 248
    move-result v2

    .line 249
    if-eqz v2, :cond_3

    .line 250
    .line 251
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    check-cast v2, Landroid/net/wifi/ScanResult;

    .line 256
    .line 257
    const-string v3, "%d|%d"

    .line 258
    .line 259
    iget-object v4, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 260
    .line 261
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    move-result-object v4

    .line 265
    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 270
    .line 271
    .line 272
    move-result-object v4

    .line 273
    iget v2, v2, Landroid/net/wifi/ScanResult;->level:I

    .line 274
    .line 275
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 276
    .line 277
    .line 278
    move-result-object v2

    .line 279
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v2

    .line 283
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    .line 289
    .line 290
    goto :goto_2

    .line 291
    :cond_3
    invoke-interface {p2, v0, p1}, Lcom/samsung/android/wifi/intelligence/icc/IIccInfService;->inferenceList(Ljava/util/List;Ljava/util/List;)V

    .line 292
    .line 293
    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 295
    .line 296
    .line 297
    move-result-wide v1

    .line 298
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 299
    .line 300
    .line 301
    move-result p2

    .line 302
    const/4 v3, 0x0

    .line 303
    move v4, v3

    .line 304
    :goto_3
    if-ge v4, p2, :cond_4

    .line 305
    .line 306
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    move-result-object v5

    .line 310
    add-int/lit8 v4, v4, 0x1

    .line 311
    .line 312
    check-cast v5, Ljava/lang/String;

    .line 313
    .line 314
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 315
    .line 316
    invoke-static {v6, v5, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$minferenceByDB(Lcom/samsung/android/server/wifi/wcm/IccManager;Ljava/lang/String;Ljava/util/List;)[Z

    .line 317
    .line 318
    .line 319
    move-result-object v5

    .line 320
    iget-object v6, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 321
    .line 322
    invoke-static {v6}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetinfResultDB(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v6

    .line 326
    aget-boolean v5, v5, v3

    .line 327
    .line 328
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v5

    .line 332
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    .line 334
    .line 335
    goto :goto_3

    .line 336
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 337
    .line 338
    .line 339
    move-result-wide p1

    .line 340
    iget-object v0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 341
    .line 342
    invoke-static {v0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    new-instance v3, Ljava/lang/StringBuilder;

    .line 347
    .line 348
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    const-string v4, "Total Inference time for DB : "

    .line 352
    .line 353
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    sub-long/2addr p1, v1

    .line 357
    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 358
    .line 359
    .line 360
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object p1

    .line 364
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    iget-object p1, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 368
    .line 369
    invoke-static {p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmIccHandler(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 370
    .line 371
    .line 372
    move-result-object p1

    .line 373
    const/4 p2, 0x6

    .line 374
    invoke-static {p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    iget-object p2, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 379
    .line 380
    invoke-static {p2}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetmIccHandler(Lcom/samsung/android/server/wifi/wcm/IccManager;)Lcom/samsung/android/server/wifi/wcm/IccManager$IccHandler;

    .line 381
    .line 382
    .line 383
    move-result-object p2

    .line 384
    const-wide/16 v0, 0x7d0

    .line 385
    .line 386
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    .line 388
    .line 389
    return-void

    .line 390
    :goto_4
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 391
    .line 392
    invoke-static {p0}, Lcom/samsung/android/server/wifi/wcm/IccManager;->-$$Nest$fgetTAG(Lcom/samsung/android/server/wifi/wcm/IccManager;)Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object p0

    .line 396
    new-instance p2, Ljava/lang/StringBuilder;

    .line 397
    .line 398
    const-string v0, "Inf service err : "

    .line 399
    .line 400
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .line 402
    .line 403
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object p1

    .line 407
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object p1

    .line 414
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    .line 416
    .line 417
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/server/wifi/wcm/IccManager$2;->this$0:Lcom/samsung/android/server/wifi/wcm/IccManager;

    .line 2
    .line 3
    const-string p1, "Icc inf service disconnected.."

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/samsung/android/server/wifi/wcm/IccManager;->addEvent(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
