.class final Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LabelBufferAndAddToData"
.end annotation


# instance fields
.field private additionalData0Collect:Z

.field private final label:I

.field final synthetic this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 5
    .line 6
    iput p2, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->label:I

    .line 7
    .line 8
    iput-boolean p3, p0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->additionalData0Collect:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 23

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const-string v1, "Failed to parse path data timestamp"

    .line 4
    .line 5
    const-string v2, ", Label: "

    .line 6
    .line 7
    const-string v3, ", Event timestamp: "

    .line 8
    .line 9
    const-string v4, "InsDataManager"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    move v6, v5

    .line 13
    :goto_0
    :try_start_0
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 14
    .line 15
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 16
    .line 17
    .line 18
    move-result-object v7

    .line 19
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    const/4 v8, -0x1

    .line 24
    if-ge v6, v7, :cond_0

    .line 25
    .line 26
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 27
    .line 28
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v7

    .line 36
    check-cast v7, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 37
    .line 38
    invoke-virtual {v7, v8}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->setLabel(I)V

    .line 39
    .line 40
    .line 41
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 42
    .line 43
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    check-cast v7, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 52
    .line 53
    invoke-virtual {v7, v8}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->setCmLabel(I)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v6, v6, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    goto/16 :goto_f

    .line 61
    .line 62
    :cond_0
    move v6, v5

    .line 63
    :goto_1
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 64
    .line 65
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 66
    .line 67
    .line 68
    move-result-object v7

    .line 69
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-ge v6, v7, :cond_1

    .line 74
    .line 75
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 76
    .line 77
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v7

    .line 85
    check-cast v7, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 86
    .line 87
    invoke-virtual {v7, v8}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->setLabel(I)V

    .line 88
    .line 89
    .line 90
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 91
    .line 92
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v7

    .line 100
    check-cast v7, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 101
    .line 102
    invoke-virtual {v7, v8}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->setCmLabel(I)V

    .line 103
    .line 104
    .line 105
    add-int/lit8 v6, v6, 0x1

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v7, "LabelBufferAndAddToData: "

    .line 114
    .line 115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    iget v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->label:I

    .line 119
    .line 120
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v7, ", PathBuffer Size: "

    .line 124
    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 129
    .line 130
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 131
    .line 132
    .line 133
    move-result-object v7

    .line 134
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    const-string v7, ", NsmBuffer Size: "

    .line 142
    .line 143
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 147
    .line 148
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 149
    .line 150
    .line 151
    move-result-object v7

    .line 152
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    .line 165
    .line 166
    const-string v6, ""

    .line 167
    .line 168
    iget-boolean v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->additionalData0Collect:Z

    .line 169
    .line 170
    const/4 v9, 0x1

    .line 171
    if-eqz v7, :cond_2

    .line 172
    .line 173
    iget-object v6, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 174
    .line 175
    invoke-static {v6}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    sub-int/2addr v6, v9

    .line 184
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 185
    .line 186
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 187
    .line 188
    .line 189
    move-result-object v7

    .line 190
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v7

    .line 194
    check-cast v7, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 195
    .line 196
    invoke-virtual {v7}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->getOutageData()Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    .line 197
    .line 198
    .line 199
    move-result-object v7

    .line 200
    invoke-virtual {v7}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->getTimestamp()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v7

    .line 204
    goto :goto_3

    .line 205
    :cond_2
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 206
    .line 207
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 208
    .line 209
    .line 210
    move-result-object v7

    .line 211
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v7

    .line 215
    sub-int/2addr v7, v9

    .line 216
    move v11, v5

    .line 217
    move v10, v7

    .line 218
    move-object v7, v6

    .line 219
    move v6, v8

    .line 220
    :goto_2
    if-ltz v10, :cond_5

    .line 221
    .line 222
    iget-object v12, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 223
    .line 224
    invoke-static {v12}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 225
    .line 226
    .line 227
    move-result-object v12

    .line 228
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v12

    .line 232
    check-cast v12, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 233
    .line 234
    invoke-virtual {v12}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->getOutageData()Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    .line 235
    .line 236
    .line 237
    move-result-object v12

    .line 238
    invoke-virtual {v12}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->getOutageCnt()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v12

    .line 242
    const-string v13, "0"

    .line 243
    .line 244
    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 245
    .line 246
    .line 247
    move-result v12

    .line 248
    if-eqz v12, :cond_3

    .line 249
    .line 250
    if-eqz v11, :cond_4

    .line 251
    .line 252
    goto :goto_3

    .line 253
    :cond_3
    move v11, v9

    .line 254
    :cond_4
    iget-object v6, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 255
    .line 256
    invoke-static {v6}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 261
    .line 262
    .line 263
    move-result-object v6

    .line 264
    check-cast v6, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 265
    .line 266
    invoke-virtual {v6}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->getOutageData()Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    .line 267
    .line 268
    .line 269
    move-result-object v6

    .line 270
    invoke-virtual {v6}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->getTimestamp()Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v7

    .line 274
    add-int/lit8 v6, v10, -0x1

    .line 275
    .line 276
    move/from16 v22, v10

    .line 277
    .line 278
    move v10, v6

    .line 279
    move/from16 v6, v22

    .line 280
    .line 281
    goto :goto_2

    .line 282
    :cond_5
    :goto_3
    new-instance v10, Ljava/lang/StringBuilder;

    .line 283
    .line 284
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 285
    .line 286
    .line 287
    const-string v11, "NSM data index: "

    .line 288
    .line 289
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    .line 300
    .line 301
    const-string v11, ", NSM buffer size: "

    .line 302
    .line 303
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    iget-object v11, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 307
    .line 308
    invoke-static {v11}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 309
    .line 310
    .line 311
    move-result-object v11

    .line 312
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 313
    .line 314
    .line 315
    move-result v11

    .line 316
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    iget v11, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->label:I

    .line 323
    .line 324
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v10

    .line 331
    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .line 333
    .line 334
    new-instance v10, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v11, "NSM data : "

    .line 340
    .line 341
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    iget-object v11, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 345
    .line 346
    invoke-static {v11}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 347
    .line 348
    .line 349
    move-result-object v11

    .line 350
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v11

    .line 354
    check-cast v11, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 355
    .line 356
    invoke-virtual {v11}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->toCsvString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v11

    .line 360
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v10

    .line 367
    invoke-static {v4, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    iget-boolean v10, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->additionalData0Collect:Z

    .line 371
    .line 372
    if-eqz v10, :cond_6

    .line 373
    .line 374
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 375
    .line 376
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 377
    .line 378
    .line 379
    move-result-object v1

    .line 380
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 381
    .line 382
    .line 383
    move-result v1

    .line 384
    :goto_4
    sub-int/2addr v1, v9

    .line 385
    goto/16 :goto_8

    .line 386
    .line 387
    :cond_6
    new-instance v10, Ljava/text/SimpleDateFormat;

    .line 388
    .line 389
    const-string v11, "yyyyMMdd-HHmmss_SSS"

    .line 390
    .line 391
    invoke-direct {v10, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .line 393
    .line 394
    :try_start_1
    invoke-virtual {v10, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 395
    .line 396
    .line 397
    move-result-object v13

    .line 398
    invoke-virtual {v13}, Ljava/util/Date;->getTime()J

    .line 399
    .line 400
    .line 401
    move-result-wide v13
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 402
    goto :goto_5

    .line 403
    :catch_1
    :try_start_2
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    const-wide/16 v13, -0x1

    .line 407
    .line 408
    :goto_5
    iget-object v15, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 409
    .line 410
    invoke-static {v15}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 411
    .line 412
    .line 413
    move-result-object v15

    .line 414
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    .line 415
    .line 416
    .line 417
    move-result v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 418
    sub-int/2addr v15, v9

    .line 419
    const-wide v16, 0x7fffffffffffffffL

    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    move v11, v15

    .line 425
    move-wide/from16 v18, v16

    .line 426
    .line 427
    const-wide/16 v16, -0x1

    .line 428
    .line 429
    move v15, v8

    .line 430
    :goto_6
    if-ltz v11, :cond_8

    .line 431
    .line 432
    :try_start_3
    iget-object v12, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 433
    .line 434
    invoke-static {v12}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 435
    .line 436
    .line 437
    move-result-object v12

    .line 438
    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 439
    .line 440
    .line 441
    move-result-object v12

    .line 442
    check-cast v12, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 443
    .line 444
    invoke-virtual {v12}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->getTimestamp()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v12

    .line 448
    invoke-virtual {v10, v12}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    .line 449
    .line 450
    .line 451
    move-result-object v12

    .line 452
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    .line 453
    .line 454
    .line 455
    move-result-wide v20
    :try_end_3
    .catch Ljava/text/ParseException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 456
    goto :goto_7

    .line 457
    :catch_2
    :try_start_4
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    move-wide/from16 v20, v16

    .line 461
    .line 462
    :goto_7
    sub-long v20, v13, v20

    .line 463
    .line 464
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->abs(J)J

    .line 465
    .line 466
    .line 467
    move-result-wide v20

    .line 468
    cmp-long v12, v20, v18

    .line 469
    .line 470
    if-gez v12, :cond_7

    .line 471
    .line 472
    cmp-long v12, v13, v16

    .line 473
    .line 474
    if-eqz v12, :cond_7

    .line 475
    .line 476
    move v15, v11

    .line 477
    move-wide/from16 v18, v20

    .line 478
    .line 479
    :cond_7
    add-int/lit8 v11, v11, -0x1

    .line 480
    .line 481
    goto :goto_6

    .line 482
    :cond_8
    if-ne v15, v8, :cond_9

    .line 483
    .line 484
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 485
    .line 486
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 487
    .line 488
    .line 489
    move-result-object v1

    .line 490
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 491
    .line 492
    .line 493
    move-result v1

    .line 494
    goto :goto_4

    .line 495
    :cond_9
    move v1, v15

    .line 496
    :goto_8
    new-instance v8, Ljava/lang/StringBuilder;

    .line 497
    .line 498
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 499
    .line 500
    .line 501
    const-string v10, "Path data index: "

    .line 502
    .line 503
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    .line 505
    .line 506
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 507
    .line 508
    .line 509
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .line 511
    .line 512
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    .line 514
    .line 515
    const-string v3, ", Path buffer size: "

    .line 516
    .line 517
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    iget-object v3, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 521
    .line 522
    invoke-static {v3}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 523
    .line 524
    .line 525
    move-result-object v3

    .line 526
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 527
    .line 528
    .line 529
    move-result v3

    .line 530
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 531
    .line 532
    .line 533
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    .line 535
    .line 536
    iget v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->label:I

    .line 537
    .line 538
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v2

    .line 545
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    .line 547
    .line 548
    new-instance v2, Ljava/lang/StringBuilder;

    .line 549
    .line 550
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 551
    .line 552
    .line 553
    const-string v3, "Path data : "

    .line 554
    .line 555
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    iget-object v3, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 559
    .line 560
    invoke-static {v3}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 565
    .line 566
    .line 567
    move-result-object v3

    .line 568
    check-cast v3, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 569
    .line 570
    invoke-virtual {v3}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->toCsvString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v3

    .line 574
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v2

    .line 581
    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    .line 583
    .line 584
    add-int/lit8 v2, v1, -0x24

    .line 585
    .line 586
    invoke-static {v9, v2}, Ljava/lang/Math;->max(II)I

    .line 587
    .line 588
    .line 589
    move-result v2

    .line 590
    const/4 v3, 0x0

    .line 591
    :goto_9
    if-ge v2, v1, :cond_a

    .line 592
    .line 593
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 594
    .line 595
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 596
    .line 597
    .line 598
    move-result-object v7

    .line 599
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 600
    .line 601
    .line 602
    move-result-object v7

    .line 603
    check-cast v7, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 604
    .line 605
    invoke-virtual {v7}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->getMagneticMagnitude()F

    .line 606
    .line 607
    .line 608
    move-result v7

    .line 609
    iget-object v8, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 610
    .line 611
    invoke-static {v8}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 612
    .line 613
    .line 614
    move-result-object v8

    .line 615
    add-int/lit8 v10, v2, -0x1

    .line 616
    .line 617
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    move-result-object v8

    .line 621
    check-cast v8, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 622
    .line 623
    invoke-virtual {v8}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->getMagneticMagnitude()F

    .line 624
    .line 625
    .line 626
    move-result v8

    .line 627
    sub-float/2addr v7, v8

    .line 628
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 629
    .line 630
    .line 631
    move-result v7

    .line 632
    add-float/2addr v3, v7

    .line 633
    add-int/lit8 v2, v2, 0x1

    .line 634
    .line 635
    goto :goto_9

    .line 636
    :cond_a
    iget-object v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 637
    .line 638
    const/high16 v7, 0x41200000    # 10.0f

    .line 639
    .line 640
    cmpg-float v3, v3, v7

    .line 641
    .line 642
    if-gez v3, :cond_b

    .line 643
    .line 644
    move v3, v9

    .line 645
    goto :goto_a

    .line 646
    :cond_b
    move v3, v5

    .line 647
    :goto_a
    invoke-static {v2, v3}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fputnoMove(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;Z)V

    .line 648
    .line 649
    .line 650
    iget-boolean v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->additionalData0Collect:Z

    .line 651
    .line 652
    if-eqz v2, :cond_c

    .line 653
    .line 654
    iget-object v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 655
    .line 656
    invoke-static {v2}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnoMove(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Z

    .line 657
    .line 658
    .line 659
    move-result v2

    .line 660
    if-eqz v2, :cond_c

    .line 661
    .line 662
    const-string v0, "NO MOVE, so skipping saving normal data"

    .line 663
    .line 664
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    .line 666
    .line 667
    goto/16 :goto_10

    .line 668
    .line 669
    :cond_c
    iget-boolean v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->additionalData0Collect:Z

    .line 670
    .line 671
    if-eqz v2, :cond_e

    .line 672
    .line 673
    add-int/lit8 v1, v1, -0x26

    .line 674
    .line 675
    if-gez v1, :cond_d

    .line 676
    .line 677
    move v1, v5

    .line 678
    :cond_d
    add-int/lit8 v6, v6, -0x5

    .line 679
    .line 680
    if-gez v6, :cond_e

    .line 681
    .line 682
    move v6, v5

    .line 683
    :cond_e
    iget-object v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 684
    .line 685
    invoke-static {v2}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 686
    .line 687
    .line 688
    move-result-object v2

    .line 689
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 690
    .line 691
    .line 692
    move-result-object v2

    .line 693
    check-cast v2, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 694
    .line 695
    iget v3, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->label:I

    .line 696
    .line 697
    invoke-virtual {v2, v3}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->setLabel(I)V

    .line 698
    .line 699
    .line 700
    iget-object v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 701
    .line 702
    invoke-static {v2}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 703
    .line 704
    .line 705
    move-result-object v2

    .line 706
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 707
    .line 708
    .line 709
    move-result-object v2

    .line 710
    check-cast v2, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 711
    .line 712
    iget-object v3, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 713
    .line 714
    invoke-static {v3}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnoMove(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Z

    .line 715
    .line 716
    .line 717
    move-result v3

    .line 718
    if-eqz v3, :cond_f

    .line 719
    .line 720
    sget-object v3, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;->CONSIDERED:Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

    .line 721
    .line 722
    :goto_b
    invoke-virtual {v3}, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;->getIntValue()I

    .line 723
    .line 724
    .line 725
    move-result v3

    .line 726
    goto :goto_c

    .line 727
    :cond_f
    sget-object v3, Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;->NOT_CONSIDERED:Lcom/samsung/android/wifi/intelligence/ins/entity/NoMoveLabel;

    .line 728
    .line 729
    goto :goto_b

    .line 730
    :goto_c
    invoke-virtual {v2, v3}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->setNoMove(I)V

    .line 731
    .line 732
    .line 733
    iget-object v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 734
    .line 735
    invoke-static {v2}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 736
    .line 737
    .line 738
    move-result-object v2

    .line 739
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    move-result-object v2

    .line 743
    check-cast v2, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 744
    .line 745
    iget v3, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->label:I

    .line 746
    .line 747
    invoke-virtual {v2, v3}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->setLabel(I)V

    .line 748
    .line 749
    .line 750
    :goto_d
    iget-object v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 751
    .line 752
    invoke-static {v2}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 753
    .line 754
    .line 755
    move-result-object v2

    .line 756
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 757
    .line 758
    .line 759
    move-result v2

    .line 760
    if-ge v1, v2, :cond_10

    .line 761
    .line 762
    iget-object v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 763
    .line 764
    invoke-static {v2}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 765
    .line 766
    .line 767
    move-result-object v2

    .line 768
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 769
    .line 770
    .line 771
    move-result-object v2

    .line 772
    check-cast v2, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;

    .line 773
    .line 774
    iget v3, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->label:I

    .line 775
    .line 776
    invoke-virtual {v2, v3}, Lcom/samsung/android/wifi/intelligence/ins/data/PathData;->setCmLabel(I)V

    .line 777
    .line 778
    .line 779
    add-int/lit8 v1, v1, 0x1

    .line 780
    .line 781
    goto :goto_d

    .line 782
    :cond_10
    :goto_e
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 783
    .line 784
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 785
    .line 786
    .line 787
    move-result-object v1

    .line 788
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 789
    .line 790
    .line 791
    move-result v1

    .line 792
    if-ge v6, v1, :cond_13

    .line 793
    .line 794
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 795
    .line 796
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 797
    .line 798
    .line 799
    move-result-object v1

    .line 800
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 801
    .line 802
    .line 803
    move-result-object v1

    .line 804
    check-cast v1, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 805
    .line 806
    invoke-virtual {v1}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->getOutageData()Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    invoke-virtual {v1}, Lcom/samsung/android/wifi/intelligence/ins/data/OutageData;->getOutageCnt()Ljava/lang/String;

    .line 811
    .line 812
    .line 813
    move-result-object v1

    .line 814
    const-string v2, "-1"

    .line 815
    .line 816
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 817
    .line 818
    .line 819
    move-result v1

    .line 820
    if-nez v1, :cond_11

    .line 821
    .line 822
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 823
    .line 824
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 825
    .line 826
    .line 827
    move-result-object v1

    .line 828
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 829
    .line 830
    .line 831
    move-result-object v1

    .line 832
    check-cast v1, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 833
    .line 834
    iget v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->label:I

    .line 835
    .line 836
    invoke-virtual {v1, v2}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->setCmLabel(I)V

    .line 837
    .line 838
    .line 839
    :cond_11
    iget-boolean v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->additionalData0Collect:Z

    .line 840
    .line 841
    if-eqz v1, :cond_12

    .line 842
    .line 843
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 844
    .line 845
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 846
    .line 847
    .line 848
    move-result-object v1

    .line 849
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 850
    .line 851
    .line 852
    move-result-object v1

    .line 853
    check-cast v1, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;

    .line 854
    .line 855
    iget v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->label:I

    .line 856
    .line 857
    invoke-virtual {v1, v2}, Lcom/samsung/android/wifi/intelligence/ins/data/NsmData;->setCmLabel(I)V

    .line 858
    .line 859
    .line 860
    :cond_12
    add-int/lit8 v6, v6, 0x1

    .line 861
    .line 862
    goto :goto_e

    .line 863
    :cond_13
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 864
    .line 865
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 866
    .line 867
    .line 868
    move-result-object v1

    .line 869
    new-instance v2, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;

    .line 870
    .line 871
    iget-object v3, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 872
    .line 873
    invoke-static {v3}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathModelDataWriter(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/io/FileWriter;

    .line 874
    .line 875
    .line 876
    move-result-object v3

    .line 877
    new-instance v6, Ljava/util/ArrayList;

    .line 878
    .line 879
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 880
    .line 881
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 882
    .line 883
    .line 884
    move-result-object v7

    .line 885
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 886
    .line 887
    .line 888
    invoke-direct {v2, v3, v6, v9}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;-><init>(Ljava/io/FileWriter;Ljava/util/List;I)V

    .line 889
    .line 890
    .line 891
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 892
    .line 893
    .line 894
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 895
    .line 896
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetmExecutor(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 897
    .line 898
    .line 899
    move-result-object v1

    .line 900
    new-instance v2, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;

    .line 901
    .line 902
    iget-object v3, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 903
    .line 904
    invoke-static {v3}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmModelDataWriter(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/io/FileWriter;

    .line 905
    .line 906
    .line 907
    move-result-object v3

    .line 908
    new-instance v6, Ljava/util/ArrayList;

    .line 909
    .line 910
    iget-object v7, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 911
    .line 912
    invoke-static {v7}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 913
    .line 914
    .line 915
    move-result-object v7

    .line 916
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 917
    .line 918
    .line 919
    invoke-direct {v2, v3, v6, v5}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$FlushDataTask;-><init>(Ljava/io/FileWriter;Ljava/util/List;I)V

    .line 920
    .line 921
    .line 922
    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 923
    .line 924
    .line 925
    iget-boolean v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->additionalData0Collect:Z

    .line 926
    .line 927
    if-eqz v1, :cond_15

    .line 928
    .line 929
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 930
    .line 931
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetdata0Count(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)I

    .line 932
    .line 933
    .line 934
    move-result v2

    .line 935
    sub-int/2addr v2, v9

    .line 936
    invoke-static {v1, v2}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fputdata0Count(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;I)V

    .line 937
    .line 938
    .line 939
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 940
    .line 941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 942
    .line 943
    .line 944
    move-result-wide v2

    .line 945
    invoke-static {v1, v2, v3}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fputdata0CollectedTime(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;J)V

    .line 946
    .line 947
    .line 948
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$sfgetdataJson()Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;

    .line 949
    .line 950
    .line 951
    move-result-object v1

    .line 952
    const-string v2, "data0Count"

    .line 953
    .line 954
    iget-object v3, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 955
    .line 956
    invoke-static {v3}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetdata0Count(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)I

    .line 957
    .line 958
    .line 959
    move-result v3

    .line 960
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 961
    .line 962
    .line 963
    move-result-object v3

    .line 964
    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;->updateJson(Ljava/lang/String;Ljava/lang/Object;)V

    .line 965
    .line 966
    .line 967
    const-string v1, "Successfully saved additional normal data."

    .line 968
    .line 969
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    .line 971
    .line 972
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 973
    .line 974
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetinitialDataCollection(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Z

    .line 975
    .line 976
    .line 977
    move-result v1

    .line 978
    if-eqz v1, :cond_14

    .line 979
    .line 980
    new-instance v1, Ljava/lang/StringBuilder;

    .line 981
    .line 982
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 983
    .line 984
    .line 985
    const-string v2, "Collected "

    .line 986
    .line 987
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    .line 989
    .line 990
    iget-object v2, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 991
    .line 992
    invoke-static {v2}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetdata0Count(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)I

    .line 993
    .line 994
    .line 995
    move-result v2

    .line 996
    rsub-int/lit8 v2, v2, 0x14

    .line 997
    .line 998
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 999
    .line 1000
    .line 1001
    const-string v2, " / 20 data"

    .line 1002
    .line 1003
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    .line 1005
    .line 1006
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1007
    .line 1008
    .line 1009
    move-result-object v1

    .line 1010
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    .line 1012
    .line 1013
    :cond_14
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 1014
    .line 1015
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetdata0Count(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)I

    .line 1016
    .line 1017
    .line 1018
    move-result v1

    .line 1019
    if-nez v1, :cond_17

    .line 1020
    .line 1021
    iget-boolean v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->additionalData0Collect:Z

    .line 1022
    .line 1023
    if-eqz v1, :cond_17

    .line 1024
    .line 1025
    iput-boolean v5, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->additionalData0Collect:Z

    .line 1026
    .line 1027
    invoke-static {}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$sfgetdataJson()Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v0

    .line 1031
    const-string v1, "initialDataCollection"

    .line 1032
    .line 1033
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1034
    .line 1035
    .line 1036
    move-result-object v2

    .line 1037
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/wifi/intelligence/ins/util/InsDataJson;->updateJson(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1038
    .line 1039
    .line 1040
    goto :goto_10

    .line 1041
    :cond_15
    iget v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->label:I

    .line 1042
    .line 1043
    sget-object v2, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->LQ_CALLBACK_REVERTED:Lcom/samsung/android/wifi/intelligence/ins/entity/Label;

    .line 1044
    .line 1045
    invoke-virtual {v2}, Lcom/samsung/android/wifi/intelligence/ins/entity/Label;->getValue()I

    .line 1046
    .line 1047
    .line 1048
    move-result v2

    .line 1049
    if-ne v1, v2, :cond_16

    .line 1050
    .line 1051
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 1052
    .line 1053
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 1054
    .line 1055
    .line 1056
    move-result-wide v2

    .line 1057
    invoke-static {v1, v2, v3}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fputdata0CollectedTime(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;J)V

    .line 1058
    .line 1059
    .line 1060
    :cond_16
    iget-object v1, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 1061
    .line 1062
    invoke-static {v1}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetpathBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 1063
    .line 1064
    .line 1065
    move-result-object v1

    .line 1066
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1067
    .line 1068
    .line 1069
    iget-object v0, v0, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager$LabelBufferAndAddToData;->this$0:Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;

    .line 1070
    .line 1071
    invoke-static {v0}, Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;->-$$Nest$fgetnsmBuffer(Lcom/samsung/android/wifi/intelligence/ins/manager/DataManager;)Ljava/util/ArrayList;

    .line 1072
    .line 1073
    .line 1074
    move-result-object v0

    .line 1075
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1076
    .line 1077
    .line 1078
    goto :goto_10

    .line 1079
    :goto_f
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1080
    .line 1081
    const-string v2, "LabelBufferAndAddToData err: "

    .line 1082
    .line 1083
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1084
    .line 1085
    .line 1086
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 1087
    .line 1088
    .line 1089
    move-result-object v0

    .line 1090
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    .line 1092
    .line 1093
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1094
    .line 1095
    .line 1096
    move-result-object v0

    .line 1097
    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    .line 1099
    .line 1100
    :cond_17
    :goto_10
    return-void
.end method
