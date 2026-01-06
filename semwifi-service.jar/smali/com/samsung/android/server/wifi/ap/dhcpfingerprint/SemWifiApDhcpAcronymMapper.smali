.class public Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# static fields
.field private static final DEVICE_TYPE_ACRONYMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MANUFACTURER_ACRONYMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OS_TYPE_ACRONYMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final UNKNOWN_ACRONYM:Ljava/lang/String; = "XX"


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;->DEVICE_TYPE_ACRONYMS:Ljava/util/Map;

    .line 7
    .line 8
    const-string v1, "camera"

    .line 9
    .line 10
    const-string v2, "CM"

    .line 11
    .line 12
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v1, "digital media player"

    .line 16
    .line 17
    const-string v2, "DM"

    .line 18
    .line 19
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    const-string v1, "digital signage"

    .line 23
    .line 24
    const-string v2, "DS"

    .line 25
    .line 26
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v1, "dsp"

    .line 30
    .line 31
    const-string v2, "DP"

    .line 32
    .line 33
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    const-string v1, "dvr"

    .line 37
    .line 38
    const-string v2, "DV"

    .line 39
    .line 40
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string v1, "ebook reader"

    .line 44
    .line 45
    const-string v2, "ER"

    .line 46
    .line 47
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    const-string v1, "firewall"

    .line 51
    .line 52
    const-string v2, "FW"

    .line 53
    .line 54
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    const-string v1, "game console"

    .line 58
    .line 59
    const-string v2, "GC"

    .line 60
    .line 61
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    const-string v1, "ip network camera"

    .line 65
    .line 66
    const-string v2, "IC"

    .line 67
    .line 68
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const-string v1, "iptv"

    .line 72
    .line 73
    const-string v2, "IP"

    .line 74
    .line 75
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    const-string v1, "key lock box"

    .line 79
    .line 80
    const-string v2, "KB"

    .line 81
    .line 82
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    const-string v1, "laptop"

    .line 86
    .line 87
    const-string v2, "LP"

    .line 88
    .line 89
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    const-string v1, "load balancer"

    .line 93
    .line 94
    const-string v2, "LB"

    .line 95
    .line 96
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    const-string v1, "media link controller"

    .line 100
    .line 101
    const-string v2, "ML"

    .line 102
    .line 103
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    const-string v1, "nas"

    .line 107
    .line 108
    const-string v2, "NA"

    .line 109
    .line 110
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    const-string v1, "network equipment"

    .line 114
    .line 115
    const-string v2, "NE"

    .line 116
    .line 117
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    const-string v1, "phone"

    .line 121
    .line 122
    const-string v2, "PH"

    .line 123
    .line 124
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    const-string v1, "printer"

    .line 128
    .line 129
    const-string v2, "PR"

    .line 130
    .line 131
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    const-string v1, "sensor"

    .line 135
    .line 136
    const-string v2, "SN"

    .line 137
    .line 138
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    const-string v1, "thin client"

    .line 142
    .line 143
    const-string v2, "TC"

    .line 144
    .line 145
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    const-string v1, "tv"

    .line 149
    .line 150
    const-string v2, "TV"

    .line 151
    .line 152
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    const-string v1, "ups"

    .line 156
    .line 157
    const-string v3, "UP"

    .line 158
    .line 159
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    const-string v1, "video conferencing"

    .line 163
    .line 164
    const-string v3, "VC"

    .line 165
    .line 166
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    const-string v1, "video phone"

    .line 170
    .line 171
    const-string v3, "VP"

    .line 172
    .line 173
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    const-string v1, "voip gateway"

    .line 177
    .line 178
    const-string v3, "VG"

    .line 179
    .line 180
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    const-string v1, "voip phone"

    .line 184
    .line 185
    const-string v3, "VO"

    .line 186
    .line 187
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    const-string v1, "workstation"

    .line 191
    .line 192
    const-string v3, "WS"

    .line 193
    .line 194
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    .line 196
    .line 197
    const-string v1, "watch"

    .line 198
    .line 199
    const-string v3, "WH"

    .line 200
    .line 201
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    const-string v1, "monitor"

    .line 205
    .line 206
    const-string v3, "MN"

    .line 207
    .line 208
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    const-string v1, "iot"

    .line 212
    .line 213
    const-string v3, "IO"

    .line 214
    .line 215
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    const-string v1, "home appliance"

    .line 219
    .line 220
    const-string v4, "HA"

    .line 221
    .line 222
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    const-string v1, "cooktop"

    .line 226
    .line 227
    const-string v5, "CT"

    .line 228
    .line 229
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    const-string v1, "oven"

    .line 233
    .line 234
    const-string v5, "OV"

    .line 235
    .line 236
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    const-string v1, "dishwasher"

    .line 240
    .line 241
    const-string v5, "DW"

    .line 242
    .line 243
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    const-string v1, "washer"

    .line 247
    .line 248
    const-string v5, "WR"

    .line 249
    .line 250
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    const-string v1, "tablet"

    .line 254
    .line 255
    const-string v5, "TB"

    .line 256
    .line 257
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    new-instance v0, Ljava/util/HashMap;

    .line 261
    .line 262
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 263
    .line 264
    .line 265
    sput-object v0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;->OS_TYPE_ACRONYMS:Ljava/util/Map;

    .line 266
    .line 267
    const-string v1, "android"

    .line 268
    .line 269
    const-string v5, "AN"

    .line 270
    .line 271
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    const-string v1, "beos"

    .line 275
    .line 276
    const-string v5, "BO"

    .line 277
    .line 278
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    .line 280
    .line 281
    const-string v1, "chromeos"

    .line 282
    .line 283
    const-string v5, "CO"

    .line 284
    .line 285
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    const-string v1, "cisco aireos"

    .line 289
    .line 290
    const-string v5, "CA"

    .line 291
    .line 292
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    const-string v1, "cisco ios"

    .line 296
    .line 297
    const-string v6, "CI"

    .line 298
    .line 299
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    .line 301
    .line 302
    const-string v1, "freebsd"

    .line 303
    .line 304
    const-string v6, "FB"

    .line 305
    .line 306
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    const-string v1, "haivision"

    .line 310
    .line 311
    const-string v6, "HV"

    .line 312
    .line 313
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    const-string v1, "ios"

    .line 317
    .line 318
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    const-string v1, "linux"

    .line 322
    .line 323
    const-string v3, "LX"

    .line 324
    .line 325
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    const-string v1, "mac os"

    .line 329
    .line 330
    const-string v6, "MO"

    .line 331
    .line 332
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    const-string v1, "network bootloader"

    .line 336
    .line 337
    const-string v7, "NB"

    .line 338
    .line 339
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    const-string v1, "openbsd"

    .line 343
    .line 344
    const-string v8, "OB"

    .line 345
    .line 346
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    const-string v1, "openwrt"

    .line 350
    .line 351
    const-string v8, "OW"

    .line 352
    .line 353
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    .line 355
    .line 356
    const-string v1, "other desktop os"

    .line 357
    .line 358
    const-string v8, "OD"

    .line 359
    .line 360
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    const-string v1, "solaris"

    .line 364
    .line 365
    const-string v8, "SR"

    .line 366
    .line 367
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    .line 369
    .line 370
    const-string v1, "unix"

    .line 371
    .line 372
    const-string v8, "UX"

    .line 373
    .line 374
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .line 376
    .line 377
    const-string v1, "vxworks"

    .line 378
    .line 379
    const-string v8, "VW"

    .line 380
    .line 381
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    const-string v1, "windows"

    .line 385
    .line 386
    const-string v8, "WN"

    .line 387
    .line 388
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .line 390
    .line 391
    const-string v1, "xtos"

    .line 392
    .line 393
    const-string v8, "XT"

    .line 394
    .line 395
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .line 397
    .line 398
    const-string v1, "tizen"

    .line 399
    .line 400
    const-string v8, "TZ"

    .line 401
    .line 402
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    .line 404
    .line 405
    const-string v1, "wear os"

    .line 406
    .line 407
    const-string v9, "WO"

    .line 408
    .line 409
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    new-instance v0, Ljava/util/HashMap;

    .line 413
    .line 414
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 415
    .line 416
    .line 417
    sput-object v0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;->MANUFACTURER_ACRONYMS:Ljava/util/Map;

    .line 418
    .line 419
    const-string v1, "2wire, inc."

    .line 420
    .line 421
    const-string v9, "2W"

    .line 422
    .line 423
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    .line 425
    .line 426
    const-string v1, "3com"

    .line 427
    .line 428
    const-string v9, "3C"

    .line 429
    .line 430
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    .line 432
    .line 433
    const-string v1, "actiontec wireless broadband router"

    .line 434
    .line 435
    const-string v9, "AW"

    .line 436
    .line 437
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    .line 439
    .line 440
    const-string v1, "adobe"

    .line 441
    .line 442
    const-string v9, "AD"

    .line 443
    .line 444
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    .line 446
    .line 447
    const-string v1, "adorama"

    .line 448
    .line 449
    const-string v9, "AR"

    .line 450
    .line 451
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    .line 453
    .line 454
    const-string v1, "alcatel-lucent"

    .line 455
    .line 456
    const-string v9, "AL"

    .line 457
    .line 458
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    .line 460
    .line 461
    const-string v1, "amazon"

    .line 462
    .line 463
    const-string v9, "AZ"

    .line 464
    .line 465
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    const-string v1, "amcrest"

    .line 469
    .line 470
    const-string v9, "AM"

    .line 471
    .line 472
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .line 474
    .line 475
    const-string v1, "american power conversion corp."

    .line 476
    .line 477
    const-string v9, "AP"

    .line 478
    .line 479
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    .line 481
    .line 482
    const-string v1, "amino technologies"

    .line 483
    .line 484
    const-string v9, "AT"

    .line 485
    .line 486
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    .line 488
    .line 489
    const-string v1, "apple, inc."

    .line 490
    .line 491
    const-string v9, "AI"

    .line 492
    .line 493
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    .line 495
    .line 496
    const-string v1, "aruba"

    .line 497
    .line 498
    const-string v9, "AU"

    .line 499
    .line 500
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    const-string v1, "avaya, inc."

    .line 504
    .line 505
    const-string v9, "AV"

    .line 506
    .line 507
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    const-string v1, "axis communications"

    .line 511
    .line 512
    const-string v9, "AX"

    .line 513
    .line 514
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    .line 516
    .line 517
    const-string v1, "belkin"

    .line 518
    .line 519
    const-string v9, "BK"

    .line 520
    .line 521
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    .line 523
    .line 524
    const-string v1, "biamp"

    .line 525
    .line 526
    const-string v9, "BI"

    .line 527
    .line 528
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    const-string v1, "blackberry"

    .line 532
    .line 533
    const-string v9, "BB"

    .line 534
    .line 535
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    .line 537
    .line 538
    const-string v1, "bluesocket"

    .line 539
    .line 540
    const-string v9, "BS"

    .line 541
    .line 542
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    .line 544
    .line 545
    const-string v1, "bocca"

    .line 546
    .line 547
    const-string v9, "BC"

    .line 548
    .line 549
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    const-string v1, "brightsign"

    .line 553
    .line 554
    const-string v9, "BR"

    .line 555
    .line 556
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .line 558
    .line 559
    const-string v1, "brother industries, ltd."

    .line 560
    .line 561
    const-string v9, "BI2"

    .line 562
    .line 563
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    .line 565
    .line 566
    const-string v1, "buffalo technology, inc."

    .line 567
    .line 568
    const-string v9, "BU"

    .line 569
    .line 570
    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    .line 572
    .line 573
    const-string v1, "canon, inc."

    .line 574
    .line 575
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    .line 577
    .line 578
    const-string v1, "cisco systems, inc."

    .line 579
    .line 580
    const-string v5, "CS"

    .line 581
    .line 582
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    .line 584
    .line 585
    const-string v1, "clipcomm, inc."

    .line 586
    .line 587
    const-string v5, "CL"

    .line 588
    .line 589
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    .line 591
    .line 592
    const-string v1, "compex systems pte, ltd."

    .line 593
    .line 594
    const-string v5, "CX"

    .line 595
    .line 596
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    .line 598
    .line 599
    const-string v1, "d-link systems, inc."

    .line 600
    .line 601
    const-string v5, "DL"

    .line 602
    .line 603
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    .line 605
    .line 606
    const-string v1, "dell, inc."

    .line 607
    .line 608
    const-string v5, "DE"

    .line 609
    .line 610
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    .line 612
    .line 613
    const-string v1, "enterasys networks, inc."

    .line 614
    .line 615
    const-string v5, "EN"

    .line 616
    .line 617
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    const-string v1, "epson"

    .line 621
    .line 622
    const-string v5, "EP"

    .line 623
    .line 624
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    .line 626
    .line 627
    const-string v1, "extron"

    .line 628
    .line 629
    const-string v5, "EX"

    .line 630
    .line 631
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    .line 633
    .line 634
    const-string v1, "eyefi, inc."

    .line 635
    .line 636
    const-string v5, "EY"

    .line 637
    .line 638
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    .line 640
    .line 641
    const-string v1, "fortinet"

    .line 642
    .line 643
    const-string v5, "FT"

    .line 644
    .line 645
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    .line 647
    .line 648
    const-string v1, "gemtek technology co., ltd."

    .line 649
    .line 650
    const-string v5, "GT"

    .line 651
    .line 652
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    .line 654
    .line 655
    const-string v1, "google, inc."

    .line 656
    .line 657
    const-string v5, "GG"

    .line 658
    .line 659
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 660
    .line 661
    .line 662
    const-string v1, "grandstream"

    .line 663
    .line 664
    const-string v5, "GS"

    .line 665
    .line 666
    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    .line 668
    .line 669
    const-string v1, "hella aglaia"

    .line 670
    .line 671
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 672
    .line 673
    .line 674
    const-string v1, "hp"

    .line 675
    .line 676
    const-string v4, "HP"

    .line 677
    .line 678
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    .line 680
    .line 681
    const-string v1, "juniper network"

    .line 682
    .line 683
    const-string v4, "JN"

    .line 684
    .line 685
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .line 687
    .line 688
    const-string v1, "konica minolta"

    .line 689
    .line 690
    const-string v4, "KM"

    .line 691
    .line 692
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    .line 694
    .line 695
    const-string v1, "kyocera mita corp."

    .line 696
    .line 697
    const-string v4, "KY"

    .line 698
    .line 699
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    .line 701
    .line 702
    const-string v1, "lexmark international, inc."

    .line 703
    .line 704
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    .line 706
    .line 707
    const-string v1, "lifesize communications, inc."

    .line 708
    .line 709
    const-string v3, "LS"

    .line 710
    .line 711
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    .line 713
    .line 714
    const-string v1, "linksys"

    .line 715
    .line 716
    const-string v3, "LI"

    .line 717
    .line 718
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 719
    .line 720
    .line 721
    const-string v1, "meraki"

    .line 722
    .line 723
    const-string v3, "MK"

    .line 724
    .line 725
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .line 727
    .line 728
    const-string v1, "microsoft corp."

    .line 729
    .line 730
    const-string v3, "MS"

    .line 731
    .line 732
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 733
    .line 734
    .line 735
    const-string v1, "mitel corp."

    .line 736
    .line 737
    const-string v3, "MT"

    .line 738
    .line 739
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    .line 741
    .line 742
    const-string v1, "moneris solutions"

    .line 743
    .line 744
    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    .line 746
    .line 747
    const-string v1, "motorola, inc."

    .line 748
    .line 749
    const-string v3, "MR"

    .line 750
    .line 751
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    .line 753
    .line 754
    const-string v1, "nec"

    .line 755
    .line 756
    const-string v3, "NC"

    .line 757
    .line 758
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 759
    .line 760
    .line 761
    const-string v1, "neoware systems, inc."

    .line 762
    .line 763
    const-string v3, "NW"

    .line 764
    .line 765
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 766
    .line 767
    .line 768
    const-string v1, "netbotz"

    .line 769
    .line 770
    invoke-interface {v0, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    .line 772
    .line 773
    const-string v1, "netgear"

    .line 774
    .line 775
    const-string v3, "NG"

    .line 776
    .line 777
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    .line 779
    .line 780
    const-string v1, "nintendo co., ltd."

    .line 781
    .line 782
    const-string v3, "NT"

    .line 783
    .line 784
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    .line 786
    .line 787
    const-string v1, "nortel networks"

    .line 788
    .line 789
    const-string v3, "NO"

    .line 790
    .line 791
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 792
    .line 793
    .line 794
    const-string v1, "novell, inc."

    .line 795
    .line 796
    const-string v3, "NV"

    .line 797
    .line 798
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    .line 800
    .line 801
    const-string v1, "oc\u00e9"

    .line 802
    .line 803
    const-string v3, "OC"

    .line 804
    .line 805
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    .line 807
    .line 808
    const-string v1, "open source lab"

    .line 809
    .line 810
    const-string v3, "OS"

    .line 811
    .line 812
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    const-string v1, "panasonic"

    .line 816
    .line 817
    const-string v3, "PN"

    .line 818
    .line 819
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    .line 821
    .line 822
    const-string v1, "pi"

    .line 823
    .line 824
    const-string v3, "PI"

    .line 825
    .line 826
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 827
    .line 828
    .line 829
    const-string v1, "polycom, inc."

    .line 830
    .line 831
    const-string v3, "PC"

    .line 832
    .line 833
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    .line 835
    .line 836
    const-string v1, "ricoh"

    .line 837
    .line 838
    const-string v3, "RC"

    .line 839
    .line 840
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 841
    .line 842
    .line 843
    const-string v1, "ricoh co., ltd."

    .line 844
    .line 845
    const-string v3, "RL"

    .line 846
    .line 847
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    .line 849
    .line 850
    const-string v1, "ruckus"

    .line 851
    .line 852
    const-string v3, "RK"

    .line 853
    .line 854
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    .line 856
    .line 857
    const-string v1, "samsung"

    .line 858
    .line 859
    const-string v3, "SM"

    .line 860
    .line 861
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    .line 863
    .line 864
    const-string v1, "shoretel, inc."

    .line 865
    .line 866
    const-string v3, "SH"

    .line 867
    .line 868
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    .line 870
    .line 871
    const-string v1, "siemens enterprise communications"

    .line 872
    .line 873
    const-string v3, "SE"

    .line 874
    .line 875
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    .line 877
    .line 878
    const-string v1, "sipura technology"

    .line 879
    .line 880
    const-string v3, "SP"

    .line 881
    .line 882
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    .line 884
    .line 885
    const-string v1, "star micronics"

    .line 886
    .line 887
    const-string v3, "SC"

    .line 888
    .line 889
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    .line 891
    .line 892
    const-string v1, "sun microsystems, inc."

    .line 893
    .line 894
    const-string v3, "SU"

    .line 895
    .line 896
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    .line 898
    .line 899
    const-string v1, "symbol"

    .line 900
    .line 901
    const-string v3, "SY"

    .line 902
    .line 903
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    const-string v1, "tallygenicom lp"

    .line 907
    .line 908
    const-string v3, "TG"

    .line 909
    .line 910
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    .line 912
    .line 913
    const-string v1, "tandberg"

    .line 914
    .line 915
    const-string v3, "TD"

    .line 916
    .line 917
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    .line 919
    .line 920
    const-string v1, "tivo"

    .line 921
    .line 922
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    .line 924
    .line 925
    const-string v1, "tp-link technologies co., ltd."

    .line 926
    .line 927
    const-string v2, "TP"

    .line 928
    .line 929
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    const-string v1, "trapeze networks"

    .line 933
    .line 934
    invoke-interface {v0, v1, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    .line 936
    .line 937
    const-string v1, "trendnet"

    .line 938
    .line 939
    const-string v2, "TN"

    .line 940
    .line 941
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    .line 943
    .line 944
    const-string v1, "unidata communications systems inc."

    .line 945
    .line 946
    const-string v2, "UD"

    .line 947
    .line 948
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    .line 950
    .line 951
    const-string v1, "uniden"

    .line 952
    .line 953
    const-string v2, "UN"

    .line 954
    .line 955
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    const-string v1, "unioncam"

    .line 959
    .line 960
    const-string v2, "UC"

    .line 961
    .line 962
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 963
    .line 964
    .line 965
    const-string v1, "utstarcom, inc."

    .line 966
    .line 967
    const-string v2, "UT"

    .line 968
    .line 969
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    .line 971
    .line 972
    const-string v1, "vizio"

    .line 973
    .line 974
    const-string v2, "VZ"

    .line 975
    .line 976
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 977
    .line 978
    .line 979
    const-string v1, "western digital corp."

    .line 980
    .line 981
    const-string v2, "WD"

    .line 982
    .line 983
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 984
    .line 985
    .line 986
    const-string v1, "wyze"

    .line 987
    .line 988
    const-string v2, "WZ"

    .line 989
    .line 990
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    .line 992
    .line 993
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

.method public static getDeviceTypeAcronym(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "unknown"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "XX"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;->DEVICE_TYPE_ACRONYMS:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    .line 30
    :cond_1
    return-object p0
.end method

.method public static getManufacturerAcronym(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "unknown"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "XX"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;->MANUFACTURER_ACRONYMS:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    .line 30
    :cond_1
    return-object p0
.end method

.method public static getOSTypeAcronym(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const-string v0, "unknown"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const-string v1, "XX"

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_0
    sget-object v0, Lcom/samsung/android/server/wifi/ap/dhcpfingerprint/SemWifiApDhcpAcronymMapper;->OS_TYPE_ACRONYMS:Ljava/util/Map;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    .line 30
    :cond_1
    return-object p0
.end method
