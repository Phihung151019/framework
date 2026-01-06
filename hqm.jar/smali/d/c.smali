.class public Ld/c;
.super Ljava/lang/Object;
.source "ModelHWParamReader.java"


# static fields
.field private static final a:Ljava/lang/String; = "c"

.field private static b:Z = false

.field private static c:Z = false

.field private static final d:Z = false

.field private static e:Lc/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static a(Lc/h;Ljava/io/InputStream;)Z
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    sput-boolean v1, Ld/c;->c:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v2, Ld/c;->a:Ljava/lang/String;

    .line 10
    .line 11
    const-string v3, "parseParamInfo() - start"

    .line 12
    .line 13
    invoke-static {v2, v3}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sput-object p0, Ld/c;->e:Lc/h;

    .line 17
    .line 18
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    sget-boolean v0, Ld/c;->c:Z

    .line 37
    .line 38
    return v0

    .line 39
    :cond_1
    const-string v2, "hwparam_document"

    .line 40
    .line 41
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-eqz v2, :cond_1b

    .line 50
    .line 51
    invoke-interface {v0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    move v3, v1

    .line 60
    :goto_0
    const/4 v4, 0x1

    .line 61
    if-ge v3, v2, :cond_19

    .line 62
    .line 63
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 64
    .line 65
    .line 66
    move-result-object v5

    .line 67
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eq v5, v4, :cond_3

    .line 72
    .line 73
    :cond_2
    move-object/from16 p1, v0

    .line 74
    .line 75
    move/from16 v16, v2

    .line 76
    .line 77
    move/from16 v17, v3

    .line 78
    .line 79
    goto/16 :goto_c

    .line 80
    .line 81
    :cond_3
    sget v5, Lc/b;->O:I

    .line 82
    .line 83
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    check-cast v6, Lorg/w3c/dom/Element;

    .line 88
    .line 89
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    const-string v8, "hwparam_info"

    .line 94
    .line 95
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_2

    .line 100
    .line 101
    const-string v7, "compID"

    .line 102
    .line 103
    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v9

    .line 107
    const-string v7, "compVer"

    .line 108
    .line 109
    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v11

    .line 113
    const-string v7, "compManufacture"

    .line 114
    .line 115
    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v12

    .line 119
    const-string v7, "hitType"

    .line 120
    .line 121
    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v13

    .line 125
    const-string v7, "feature"

    .line 126
    .line 127
    invoke-interface {v6, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    const-string v7, "ph"

    .line 132
    .line 133
    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v7

    .line 137
    const-string v8, " |"

    .line 138
    .line 139
    const-string v14, " "

    .line 140
    .line 141
    const-string v15, " | "

    .line 142
    .line 143
    if-eqz v7, :cond_5

    .line 144
    .line 145
    const-string v5, "uevent_path"

    .line 146
    .line 147
    invoke-interface {v6, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v5

    .line 151
    sget v7, Lc/b;->P:I

    .line 152
    .line 153
    if-eqz v5, :cond_4

    .line 154
    .line 155
    sget-object v1, Ld/c;->a:Ljava/lang/String;

    .line 156
    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    .line 158
    .line 159
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    .line 197
    .line 198
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v4

    .line 205
    invoke-static {v1, v4}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    move-object/from16 p1, v0

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_4
    sget-object v1, Ld/c;->a:Ljava/lang/String;

    .line 212
    .line 213
    new-instance v4, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    .line 238
    .line 239
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    move-object/from16 p1, v0

    .line 249
    .line 250
    const-string v0, " | ??? |"

    .line 251
    .line 252
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    invoke-static {v1, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    :goto_1
    move-object v0, v5

    .line 263
    move v5, v7

    .line 264
    goto :goto_2

    .line 265
    :cond_5
    move-object/from16 p1, v0

    .line 266
    .line 267
    const-string v0, ""

    .line 268
    .line 269
    :goto_2
    sget-object v1, Ld/c;->a:Ljava/lang/String;

    .line 270
    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    .line 284
    .line 285
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    .line 293
    .line 294
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v4

    .line 313
    invoke-static {v1, v4}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    new-instance v1, Ljava/util/ArrayList;

    .line 317
    .line 318
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .line 320
    .line 321
    new-instance v4, Ljava/util/ArrayList;

    .line 322
    .line 323
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 324
    .line 325
    .line 326
    new-instance v7, Ljava/util/ArrayList;

    .line 327
    .line 328
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 329
    .line 330
    .line 331
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 332
    .line 333
    .line 334
    move-result-object v14

    .line 335
    move/from16 v16, v2

    .line 336
    .line 337
    invoke-interface {v14}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 338
    .line 339
    .line 340
    move-result v2

    .line 341
    move/from16 v17, v3

    .line 342
    .line 343
    const/4 v3, 0x0

    .line 344
    :goto_3
    if-ge v3, v2, :cond_16

    .line 345
    .line 346
    invoke-interface {v14, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 347
    .line 348
    .line 349
    move-result-object v18

    .line 350
    move/from16 v19, v2

    .line 351
    .line 352
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 353
    .line 354
    .line 355
    move-result v2

    .line 356
    move-object/from16 v18, v9

    .line 357
    .line 358
    const/4 v9, 0x1

    .line 359
    if-eq v2, v9, :cond_6

    .line 360
    .line 361
    move-object/from16 v25, v0

    .line 362
    .line 363
    move/from16 v20, v3

    .line 364
    .line 365
    :goto_4
    move-object/from16 v21, v11

    .line 366
    .line 367
    :goto_5
    move-object/from16 v22, v12

    .line 368
    .line 369
    :goto_6
    move-object/from16 v23, v13

    .line 370
    .line 371
    move-object/from16 v24, v14

    .line 372
    .line 373
    goto/16 :goto_b

    .line 374
    .line 375
    :cond_6
    invoke-interface {v14, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 376
    .line 377
    .line 378
    move-result-object v2

    .line 379
    check-cast v2, Lorg/w3c/dom/Element;

    .line 380
    .line 381
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v9

    .line 385
    move/from16 v20, v3

    .line 386
    .line 387
    const-string v3, "sysfs_node"

    .line 388
    .line 389
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 390
    .line 391
    .line 392
    move-result v9

    .line 393
    if-eqz v9, :cond_8

    .line 394
    .line 395
    invoke-static {v2}, Ld/c;->e(Lorg/w3c/dom/Element;)La/r;

    .line 396
    .line 397
    .line 398
    move-result-object v3

    .line 399
    if-eqz v3, :cond_7

    .line 400
    .line 401
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    .line 403
    .line 404
    sget-boolean v3, Lc/k;->u:Z

    .line 405
    .line 406
    if-eqz v3, :cond_7

    .line 407
    .line 408
    invoke-static {v2, v6}, Ld/c;->d(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    .line 409
    .line 410
    .line 411
    :cond_7
    move-object/from16 v25, v0

    .line 412
    .line 413
    goto :goto_4

    .line 414
    :cond_8
    const-string v9, "enc_sysfs_node"

    .line 415
    .line 416
    move-object/from16 v21, v11

    .line 417
    .line 418
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v11

    .line 422
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 423
    .line 424
    .line 425
    move-result v9

    .line 426
    if-eqz v9, :cond_b

    .line 427
    .line 428
    sget v3, Lc/k;->G:I

    .line 429
    .line 430
    sget v9, Lc/b;->G:I

    .line 431
    .line 432
    if-eq v3, v9, :cond_9

    .line 433
    .line 434
    sget v3, Lc/k;->G:I

    .line 435
    .line 436
    sget v9, Lc/b;->I:I

    .line 437
    .line 438
    if-ne v3, v9, :cond_a

    .line 439
    .line 440
    :cond_9
    :goto_7
    move-object/from16 v25, v0

    .line 441
    .line 442
    goto :goto_5

    .line 443
    :cond_a
    invoke-static {v2}, Ld/c;->e(Lorg/w3c/dom/Element;)La/r;

    .line 444
    .line 445
    .line 446
    move-result-object v2

    .line 447
    if-eqz v2, :cond_9

    .line 448
    .line 449
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 450
    .line 451
    .line 452
    goto :goto_7

    .line 453
    :cond_b
    const-string v9, "dev_sysfs_node"

    .line 454
    .line 455
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v11

    .line 459
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    move-result v9

    .line 463
    if-eqz v9, :cond_d

    .line 464
    .line 465
    sget v3, Lc/k;->G:I

    .line 466
    .line 467
    sget v9, Lc/b;->G:I

    .line 468
    .line 469
    if-eq v3, v9, :cond_9

    .line 470
    .line 471
    sget v3, Lc/k;->G:I

    .line 472
    .line 473
    sget v9, Lc/b;->I:I

    .line 474
    .line 475
    if-ne v3, v9, :cond_c

    .line 476
    .line 477
    goto :goto_7

    .line 478
    :cond_c
    invoke-static {v2}, Ld/c;->e(Lorg/w3c/dom/Element;)La/r;

    .line 479
    .line 480
    .line 481
    move-result-object v2

    .line 482
    if-eqz v2, :cond_9

    .line 483
    .line 484
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    .line 486
    .line 487
    goto :goto_7

    .line 488
    :cond_d
    const-string v9, "condition_info"

    .line 489
    .line 490
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object v11

    .line 494
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 495
    .line 496
    .line 497
    move-result v9

    .line 498
    if-eqz v9, :cond_13

    .line 499
    .line 500
    const-string v9, "path"

    .line 501
    .line 502
    invoke-interface {v2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 503
    .line 504
    .line 505
    move-result-object v9

    .line 506
    const-string v11, "value"

    .line 507
    .line 508
    invoke-interface {v2, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 509
    .line 510
    .line 511
    move-result-object v11

    .line 512
    invoke-static {v9, v11}, La/s;->b(Ljava/lang/String;Ljava/lang/String;)Z

    .line 513
    .line 514
    .line 515
    move-result v9

    .line 516
    if-nez v9, :cond_e

    .line 517
    .line 518
    goto :goto_7

    .line 519
    :cond_e
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 520
    .line 521
    .line 522
    move-result-object v2

    .line 523
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 524
    .line 525
    .line 526
    move-result v9

    .line 527
    const/4 v11, 0x0

    .line 528
    :goto_8
    if-ge v11, v9, :cond_11

    .line 529
    .line 530
    invoke-interface {v2, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 531
    .line 532
    .line 533
    move-result-object v22

    .line 534
    move/from16 v23, v9

    .line 535
    .line 536
    invoke-interface/range {v22 .. v22}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 537
    .line 538
    .line 539
    move-result v9

    .line 540
    move-object/from16 v22, v12

    .line 541
    .line 542
    const/4 v12, 0x1

    .line 543
    if-eq v9, v12, :cond_f

    .line 544
    .line 545
    goto :goto_9

    .line 546
    :cond_f
    invoke-interface {v2, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 547
    .line 548
    .line 549
    move-result-object v9

    .line 550
    check-cast v9, Lorg/w3c/dom/Element;

    .line 551
    .line 552
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 553
    .line 554
    .line 555
    move-result-object v12

    .line 556
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 557
    .line 558
    .line 559
    move-result v12

    .line 560
    if-eqz v12, :cond_10

    .line 561
    .line 562
    invoke-static {v9}, Ld/c;->e(Lorg/w3c/dom/Element;)La/r;

    .line 563
    .line 564
    .line 565
    move-result-object v9

    .line 566
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    .line 568
    .line 569
    :cond_10
    :goto_9
    add-int/lit8 v11, v11, 0x1

    .line 570
    .line 571
    move-object/from16 v12, v22

    .line 572
    .line 573
    move/from16 v9, v23

    .line 574
    .line 575
    goto :goto_8

    .line 576
    :cond_11
    move-object/from16 v22, v12

    .line 577
    .line 578
    :cond_12
    :goto_a
    move-object/from16 v25, v0

    .line 579
    .line 580
    goto/16 :goto_6

    .line 581
    .line 582
    :cond_13
    move-object/from16 v22, v12

    .line 583
    .line 584
    const-string v3, "data_info"

    .line 585
    .line 586
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 587
    .line 588
    .line 589
    move-result-object v9

    .line 590
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 591
    .line 592
    .line 593
    move-result v3

    .line 594
    if-eqz v3, :cond_12

    .line 595
    .line 596
    sget v3, Lc/k;->G:I

    .line 597
    .line 598
    sget v9, Lc/b;->H:I

    .line 599
    .line 600
    if-ne v3, v9, :cond_14

    .line 601
    .line 602
    goto :goto_a

    .line 603
    :cond_14
    const-string v3, "interface"

    .line 604
    .line 605
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 606
    .line 607
    .line 608
    move-result-object v3

    .line 609
    const-string v9, "type1"

    .line 610
    .line 611
    invoke-interface {v2, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v9

    .line 615
    const-string v11, "type2"

    .line 616
    .line 617
    invoke-interface {v2, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 618
    .line 619
    .line 620
    move-result-object v11

    .line 621
    const-string v12, "type3"

    .line 622
    .line 623
    invoke-interface {v2, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 624
    .line 625
    .line 626
    move-result-object v12

    .line 627
    if-eqz v3, :cond_12

    .line 628
    .line 629
    if-eqz v9, :cond_12

    .line 630
    .line 631
    if-eqz v11, :cond_12

    .line 632
    .line 633
    if-eqz v12, :cond_12

    .line 634
    .line 635
    move-object/from16 v23, v13

    .line 636
    .line 637
    sget-object v13, Ld/c;->a:Ljava/lang/String;

    .line 638
    .line 639
    move-object/from16 v24, v14

    .line 640
    .line 641
    new-instance v14, Ljava/lang/StringBuilder;

    .line 642
    .line 643
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 644
    .line 645
    .line 646
    move-object/from16 v25, v0

    .line 647
    .line 648
    const-string v0, " (d) | "

    .line 649
    .line 650
    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    .line 652
    .line 653
    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    .line 661
    .line 662
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    .line 664
    .line 665
    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 666
    .line 667
    .line 668
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 669
    .line 670
    .line 671
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 672
    .line 673
    .line 674
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 675
    .line 676
    .line 677
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-static {v13, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .line 683
    .line 684
    sget-boolean v0, Lc/k;->u:Z

    .line 685
    .line 686
    if-eqz v0, :cond_15

    .line 687
    .line 688
    invoke-static {v2, v6}, Ld/c;->d(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V

    .line 689
    .line 690
    .line 691
    :cond_15
    :goto_b
    add-int/lit8 v3, v20, 0x1

    .line 692
    .line 693
    move-object/from16 v9, v18

    .line 694
    .line 695
    move/from16 v2, v19

    .line 696
    .line 697
    move-object/from16 v11, v21

    .line 698
    .line 699
    move-object/from16 v12, v22

    .line 700
    .line 701
    move-object/from16 v13, v23

    .line 702
    .line 703
    move-object/from16 v14, v24

    .line 704
    .line 705
    move-object/from16 v0, v25

    .line 706
    .line 707
    goto/16 :goto_3

    .line 708
    .line 709
    :cond_16
    move-object/from16 v25, v0

    .line 710
    .line 711
    move-object/from16 v18, v9

    .line 712
    .line 713
    move-object/from16 v21, v11

    .line 714
    .line 715
    move-object/from16 v22, v12

    .line 716
    .line 717
    move-object/from16 v23, v13

    .line 718
    .line 719
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 720
    .line 721
    .line 722
    move-result v0

    .line 723
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 724
    .line 725
    .line 726
    move-result v2

    .line 727
    add-int/2addr v0, v2

    .line 728
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 729
    .line 730
    .line 731
    move-result v2

    .line 732
    add-int/2addr v0, v2

    .line 733
    if-eqz v18, :cond_18

    .line 734
    .line 735
    if-eqz v10, :cond_18

    .line 736
    .line 737
    if-lez v0, :cond_18

    .line 738
    .line 739
    sget-object v0, Lc/k;->g0:Ljava/util/ArrayList;

    .line 740
    .line 741
    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 742
    .line 743
    .line 744
    sget v0, Lc/b;->O:I

    .line 745
    .line 746
    if-ne v5, v0, :cond_17

    .line 747
    .line 748
    new-instance v8, Lc/c;

    .line 749
    .line 750
    move-object/from16 v9, v18

    .line 751
    .line 752
    move-object/from16 v11, v21

    .line 753
    .line 754
    move-object/from16 v12, v22

    .line 755
    .line 756
    move-object/from16 v13, v23

    .line 757
    .line 758
    invoke-direct/range {v8 .. v13}, Lc/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    .line 760
    .line 761
    invoke-virtual {v8, v1, v4, v7}, Lc/a;->j(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 762
    .line 763
    .line 764
    sget-object v0, Ld/c;->e:Lc/h;

    .line 765
    .line 766
    invoke-virtual {v0, v5, v8}, Lc/h;->g(ILc/a;)V

    .line 767
    .line 768
    .line 769
    goto :goto_c

    .line 770
    :cond_17
    move-object/from16 v9, v18

    .line 771
    .line 772
    move-object/from16 v11, v21

    .line 773
    .line 774
    move-object/from16 v12, v22

    .line 775
    .line 776
    move-object/from16 v13, v23

    .line 777
    .line 778
    sget v0, Lc/b;->P:I

    .line 779
    .line 780
    if-ne v5, v0, :cond_18

    .line 781
    .line 782
    new-instance v8, Lc/d;

    .line 783
    .line 784
    invoke-direct/range {v8 .. v13}, Lc/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    .line 786
    .line 787
    invoke-virtual {v8, v1, v4, v7}, Lc/a;->j(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 788
    .line 789
    .line 790
    move-object/from16 v0, v25

    .line 791
    .line 792
    invoke-virtual {v8, v0}, Lc/d;->r(Ljava/lang/String;)V

    .line 793
    .line 794
    .line 795
    sget-object v0, Ld/c;->e:Lc/h;

    .line 796
    .line 797
    invoke-virtual {v0, v5, v8}, Lc/h;->g(ILc/a;)V

    .line 798
    .line 799
    .line 800
    :cond_18
    :goto_c
    add-int/lit8 v3, v17, 0x1

    .line 801
    .line 802
    move-object/from16 v0, p1

    .line 803
    .line 804
    move/from16 v2, v16

    .line 805
    .line 806
    const/4 v1, 0x0

    .line 807
    goto/16 :goto_0

    .line 808
    .line 809
    :cond_19
    sget-boolean v0, La/h;->i:Z

    .line 810
    .line 811
    const/4 v9, 0x1

    .line 812
    if-ne v0, v9, :cond_1a

    .line 813
    .line 814
    invoke-static {}, La/s;->m()V

    .line 815
    .line 816
    .line 817
    :cond_1a
    sput-boolean v9, Ld/c;->c:Z

    .line 818
    .line 819
    return v9

    .line 820
    :cond_1b
    new-instance v0, Ljava/lang/Exception;

    .line 821
    .line 822
    const-string v1, "Node name of the root element is wrong."

    .line 823
    .line 824
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 825
    .line 826
    .line 827
    throw v0
.end method

.method public static b(Lc/h;Ljava/io/InputStream;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Ld/c;->b:Z

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    sget-object v1, Ld/c;->a:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "parseSettingInfo() - start"

    .line 10
    .line 11
    invoke-static {v1, v2}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sput-object p0, Ld/c;->e:Lc/h;

    .line 15
    .line 16
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    if-nez p0, :cond_1

    .line 33
    .line 34
    sget-boolean p0, Ld/c;->b:Z

    .line 35
    .line 36
    return p0

    .line 37
    :cond_1
    const-string p1, "hwparam_document"

    .line 38
    .line 39
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-eqz p1, :cond_d

    .line 48
    .line 49
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    move v1, v0

    .line 58
    :goto_0
    const/4 v2, 0x1

    .line 59
    if-ge v1, p1, :cond_c

    .line 60
    .line 61
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eq v3, v2, :cond_2

    .line 70
    .line 71
    goto/16 :goto_8

    .line 72
    .line 73
    :cond_2
    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lorg/w3c/dom/Element;

    .line 78
    .line 79
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    const-string v5, "hwparam_setting"

    .line 84
    .line 85
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v4

    .line 89
    if-eqz v4, :cond_b

    .line 90
    .line 91
    const-string p0, "enable"

    .line 92
    .line 93
    invoke-interface {v3, p0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p0

    .line 97
    const-string p1, "DVServer"

    .line 98
    .line 99
    invoke-interface {v3, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    const-string v1, "DQServer"

    .line 104
    .line 105
    invoke-interface {v3, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    const-string v4, "CFServer"

    .line 110
    .line 111
    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v4

    .line 115
    const-string v5, "condition"

    .line 116
    .line 117
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    const-string v6, "LogBackup"

    .line 122
    .line 123
    invoke-interface {v3, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    const-string v7, "analyzer"

    .line 128
    .line 129
    invoke-interface {v3, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v7

    .line 133
    const-string v8, "dhr"

    .line 134
    .line 135
    invoke-interface {v3, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    const-string v8, ""

    .line 140
    .line 141
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v8

    .line 145
    if-eqz v8, :cond_3

    .line 146
    .line 147
    const-string v5, "none"

    .line 148
    .line 149
    :cond_3
    sget-object v8, Ld/c;->a:Ljava/lang/String;

    .line 150
    .line 151
    new-instance v9, Ljava/lang/StringBuilder;

    .line 152
    .line 153
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 154
    .line 155
    .line 156
    const-string v10, "hwparam_setting : "

    .line 157
    .line 158
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v10, " "

    .line 165
    .line 166
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v9

    .line 188
    invoke-static {v8, v9}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    const-string v8, "true"

    .line 192
    .line 193
    invoke-virtual {v8, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result p0

    .line 197
    if-eqz p0, :cond_4

    .line 198
    .line 199
    sput-boolean v2, Lc/k;->q:Z

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_4
    sput-boolean v0, Lc/k;->q:Z

    .line 203
    .line 204
    :goto_1
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result p0

    .line 208
    if-eqz p0, :cond_5

    .line 209
    .line 210
    sput-boolean v2, Lc/k;->r:Z

    .line 211
    .line 212
    goto :goto_2

    .line 213
    :cond_5
    sput-boolean v0, Lc/k;->r:Z

    .line 214
    .line 215
    :goto_2
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    .line 217
    .line 218
    move-result p0

    .line 219
    if-eqz p0, :cond_6

    .line 220
    .line 221
    sput-boolean v2, Lc/k;->s:Z

    .line 222
    .line 223
    goto :goto_3

    .line 224
    :cond_6
    sput-boolean v0, Lc/k;->s:Z

    .line 225
    .line 226
    :goto_3
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    .line 228
    .line 229
    move-result p0

    .line 230
    if-eqz p0, :cond_7

    .line 231
    .line 232
    sput-boolean v2, Lc/k;->t:Z

    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_7
    sput-boolean v0, Lc/k;->t:Z

    .line 236
    .line 237
    :goto_4
    const-string p0, "frst"

    .line 238
    .line 239
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 240
    .line 241
    .line 242
    move-result p0

    .line 243
    if-eqz p0, :cond_8

    .line 244
    .line 245
    sput-boolean v2, Lc/k;->v:Z

    .line 246
    .line 247
    sput-boolean v0, Lc/k;->q:Z

    .line 248
    .line 249
    goto :goto_5

    .line 250
    :cond_8
    sput-boolean v0, Lc/k;->v:Z

    .line 251
    .line 252
    :goto_5
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 253
    .line 254
    .line 255
    move-result p0

    .line 256
    if-eqz p0, :cond_9

    .line 257
    .line 258
    sput-boolean v2, Lc/k;->w:Z

    .line 259
    .line 260
    goto :goto_6

    .line 261
    :cond_9
    sput-boolean v0, Lc/k;->w:Z

    .line 262
    .line 263
    :goto_6
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 264
    .line 265
    .line 266
    move-result p0

    .line 267
    if-eqz p0, :cond_a

    .line 268
    .line 269
    sput-boolean v2, Lc/k;->u:Z

    .line 270
    .line 271
    goto :goto_7

    .line 272
    :cond_a
    sput-boolean v0, Lc/k;->u:Z

    .line 273
    .line 274
    :goto_7
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 275
    .line 276
    .line 277
    move-result p0

    .line 278
    if-lez p0, :cond_c

    .line 279
    .line 280
    sput-object v7, Lc/k;->E:Ljava/lang/String;

    .line 281
    .line 282
    goto :goto_9

    .line 283
    :cond_b
    :goto_8
    add-int/lit8 v1, v1, 0x1

    .line 284
    .line 285
    goto/16 :goto_0

    .line 286
    .line 287
    :cond_c
    :goto_9
    sput-boolean v2, Ld/c;->b:Z

    .line 288
    .line 289
    return v2

    .line 290
    :cond_d
    new-instance p0, Ljava/lang/Exception;

    .line 291
    .line 292
    const-string p1, "Node name of the root element is wrong."

    .line 293
    .line 294
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    throw p0
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-boolean v0, Ld/c;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-boolean v0, Ld/c;->c:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method private static d(Lorg/w3c/dom/Element;Lorg/w3c/dom/Element;)V
    .locals 19

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const-string v1, "compID"

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v5

    .line 9
    const-string v1, "feature"

    .line 10
    .line 11
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v6

    .line 15
    const-string v1, "order_compID"

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "order_feature"

    .line 22
    .line 23
    invoke-interface {v0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    mul-int/lit16 v1, v1, 0x2710

    .line 32
    .line 33
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    mul-int/lit8 v0, v0, 0x64

    .line 38
    .line 39
    add-int/2addr v1, v0

    .line 40
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 47
    .line 48
    .line 49
    move-result v15

    .line 50
    const/4 v2, 0x1

    .line 51
    const/4 v3, 0x0

    .line 52
    move/from16 v16, v2

    .line 53
    .line 54
    :goto_0
    if-ge v3, v15, :cond_2

    .line 55
    .line 56
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 57
    .line 58
    .line 59
    move-result-object v4

    .line 60
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eq v4, v2, :cond_1

    .line 65
    .line 66
    :cond_0
    move/from16 v17, v2

    .line 67
    .line 68
    move/from16 v18, v3

    .line 69
    .line 70
    goto/16 :goto_1

    .line 71
    .line 72
    :cond_1
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    check-cast v4, Lorg/w3c/dom/Element;

    .line 77
    .line 78
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    const-string v8, "key_info"

    .line 83
    .line 84
    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v7

    .line 88
    if-eqz v7, :cond_0

    .line 89
    .line 90
    const-string v7, "keyname"

    .line 91
    .line 92
    invoke-interface {v4, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v7

    .line 96
    const-string v8, "min"

    .line 97
    .line 98
    invoke-interface {v4, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v8

    .line 102
    const-string v9, "max"

    .line 103
    .line 104
    invoke-interface {v4, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v9

    .line 108
    const-string v10, "desc1"

    .line 109
    .line 110
    invoke-interface {v4, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v10

    .line 114
    const-string v11, "desc2"

    .line 115
    .line 116
    invoke-interface {v4, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v11

    .line 120
    const-string v12, "desc3"

    .line 121
    .line 122
    invoke-interface {v4, v12}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v12

    .line 126
    const-string v13, "desc4"

    .line 127
    .line 128
    invoke-interface {v4, v13}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v13

    .line 132
    const-string v14, "type1"

    .line 133
    .line 134
    invoke-interface {v4, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v14

    .line 138
    const-string v2, "type2"

    .line 139
    .line 140
    invoke-interface {v4, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    move-object v4, v2

    .line 145
    new-instance v2, La/p;

    .line 146
    .line 147
    invoke-direct {v2}, La/p;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 151
    .line 152
    .line 153
    move-result v14

    .line 154
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    move-result v4

    .line 158
    move/from16 v17, v3

    .line 159
    .line 160
    move v3, v14

    .line 161
    add-int v14, v1, v16

    .line 162
    .line 163
    move/from16 v18, v17

    .line 164
    .line 165
    const/16 v17, 0x1

    .line 166
    .line 167
    invoke-virtual/range {v2 .. v14}, La/p;->p(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 168
    .line 169
    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v3

    .line 185
    sget-object v4, Lc/k;->i0:Ljava/util/LinkedHashMap;

    .line 186
    .line 187
    invoke-virtual {v4, v3, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    add-int/lit8 v16, v16, 0x1

    .line 191
    .line 192
    :goto_1
    add-int/lit8 v3, v18, 0x1

    .line 193
    .line 194
    move/from16 v2, v17

    .line 195
    .line 196
    goto/16 :goto_0

    .line 197
    .line 198
    :cond_2
    return-void
.end method

.method private static e(Lorg/w3c/dom/Element;)La/r;
    .locals 7

    .line 1
    const-string v0, "type"

    .line 2
    .line 3
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    const-string v0, "key"

    .line 8
    .line 9
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    const-string v0, "value"

    .line 14
    .line 15
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    const-string v0, "clear"

    .line 20
    .line 21
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const-string v1, "proc"

    .line 26
    .line 27
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    if-eqz v4, :cond_0

    .line 36
    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    sget-object p0, Ld/c;->a:Ljava/lang/String;

    .line 44
    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v1, " (B) | "

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, " | "

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v1, " |"

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {p0, v0}, La/s;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    new-instance v1, La/r;

    .line 97
    .line 98
    invoke-direct/range {v1 .. v6}, La/r;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    return-object v1

    .line 102
    :cond_0
    const/4 p0, 0x0

    .line 103
    return-object p0
.end method
