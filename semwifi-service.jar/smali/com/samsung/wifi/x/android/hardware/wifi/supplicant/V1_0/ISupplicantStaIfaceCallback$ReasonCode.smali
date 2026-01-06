.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback$ReasonCode;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantStaIfaceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReasonCode"
.end annotation


# static fields
.field public static final AKMP_NOT_VALID:I = 0x14

.field public static final AUTHORIZED_ACCESS_LIMIT_REACHED:I = 0x2e

.field public static final BAD_CIPHER_OR_AKM:I = 0x1d

.field public static final BSS_TRANSITION_DISASSOC:I = 0xc

.field public static final CIPHER_SUITE_REJECTED:I = 0x18

.field public static final CLASS2_FRAME_FROM_NONAUTH_STA:I = 0x6

.field public static final CLASS3_FRAME_FROM_NONASSOC_STA:I = 0x7

.field public static final DEAUTH_LEAVING:I = 0x3

.field public static final DISASSOC_AP_BUSY:I = 0x5

.field public static final DISASSOC_DUE_TO_INACTIVITY:I = 0x4

.field public static final DISASSOC_LOW_ACK:I = 0x22

.field public static final DISASSOC_STA_HAS_LEFT:I = 0x8

.field public static final END_TS_BA_DLS:I = 0x25

.field public static final EXCEEDED_TXOP:I = 0x23

.field public static final EXTERNAL_SERVICE_REQUIREMENTS:I = 0x2f

.field public static final FOURWAY_HANDSHAKE_TIMEOUT:I = 0xf

.field public static final GROUP_CIPHER_NOT_VALID:I = 0x12

.field public static final GROUP_KEY_UPDATE_TIMEOUT:I = 0x10

.field public static final IEEE_802_1X_AUTH_FAILED:I = 0x17

.field public static final IE_IN_4WAY_DIFFERS:I = 0x11

.field public static final INVALID_FTE:I = 0x33

.field public static final INVALID_FT_ACTION_FRAME_COUNT:I = 0x30

.field public static final INVALID_IE:I = 0xd

.field public static final INVALID_MDE:I = 0x32

.field public static final INVALID_PMKID:I = 0x31

.field public static final INVALID_RSN_IE_CAPAB:I = 0x16

.field public static final MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS:I = 0x40

.field public static final MESH_CHANNEL_SWITCH_REGULATORY_REQ:I = 0x41

.field public static final MESH_CHANNEL_SWITCH_UNSPECIFIED:I = 0x42

.field public static final MESH_CLOSE_RCVD:I = 0x37

.field public static final MESH_CONFIG_POLICY_VIOLATION:I = 0x36

.field public static final MESH_CONFIRM_TIMEOUT:I = 0x39

.field public static final MESH_INCONSISTENT_PARAMS:I = 0x3b

.field public static final MESH_INVALID_GTK:I = 0x3a

.field public static final MESH_INVALID_SECURITY_CAP:I = 0x3c

.field public static final MESH_MAX_PEERS:I = 0x35

.field public static final MESH_MAX_RETRIES:I = 0x38

.field public static final MESH_PATH_ERROR_DEST_UNREACHABLE:I = 0x3f

.field public static final MESH_PATH_ERROR_NO_FORWARDING_INFO:I = 0x3e

.field public static final MESH_PATH_ERROR_NO_PROXY_INFO:I = 0x3d

.field public static final MESH_PEERING_CANCELLED:I = 0x34

.field public static final MICHAEL_MIC_FAILURE:I = 0xe

.field public static final NOT_AUTHORIZED_THIS_LOCATION:I = 0x1e

.field public static final NOT_ENOUGH_BANDWIDTH:I = 0x21

.field public static final NO_SSP_ROAMING_AGREEMENT:I = 0x1c

.field public static final PAIRWISE_CIPHER_NOT_VALID:I = 0x13

.field public static final PEERKEY_MISMATCH:I = 0x2d

.field public static final PREV_AUTH_NOT_VALID:I = 0x2

.field public static final PWR_CAPABILITY_NOT_VALID:I = 0xa

.field public static final SERVICE_CHANGE_PRECLUDES_TS:I = 0x1f

.field public static final SSP_REQUESTED_DISASSOC:I = 0x1b

.field public static final STA_LEAVING:I = 0x24

.field public static final STA_REQ_ASSOC_WITHOUT_AUTH:I = 0x9

.field public static final SUPPORTED_CHANNEL_NOT_VALID:I = 0xb

.field public static final TDLS_TEARDOWN_UNREACHABLE:I = 0x19

.field public static final TDLS_TEARDOWN_UNSPECIFIED:I = 0x1a

.field public static final TIMEOUT:I = 0x27

.field public static final UNKNOWN_TS_BA:I = 0x26

.field public static final UNSPECIFIED:I = 0x1

.field public static final UNSPECIFIED_QOS_REASON:I = 0x20

.field public static final UNSUPPORTED_RSN_IE_VERSION:I = 0x15


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    and-int/lit8 v1, p0, 0x1

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    const-string v1, "UNSPECIFIED"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    and-int/lit8 v1, p0, 0x2

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-ne v1, v3, :cond_1

    .line 22
    .line 23
    const-string v1, "PREV_AUTH_NOT_VALID"

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    or-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    :cond_1
    and-int/lit8 v1, p0, 0x3

    .line 31
    .line 32
    const/4 v3, 0x3

    .line 33
    if-ne v1, v3, :cond_2

    .line 34
    .line 35
    const-string v1, "DEAUTH_LEAVING"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move v2, v3

    .line 41
    :cond_2
    and-int/lit8 v1, p0, 0x4

    .line 42
    .line 43
    const/4 v3, 0x4

    .line 44
    if-ne v1, v3, :cond_3

    .line 45
    .line 46
    const-string v1, "DISASSOC_DUE_TO_INACTIVITY"

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    or-int/lit8 v2, v2, 0x4

    .line 52
    .line 53
    :cond_3
    and-int/lit8 v1, p0, 0x5

    .line 54
    .line 55
    const/4 v3, 0x5

    .line 56
    if-ne v1, v3, :cond_4

    .line 57
    .line 58
    const-string v1, "DISASSOC_AP_BUSY"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    or-int/lit8 v2, v2, 0x5

    .line 64
    .line 65
    :cond_4
    and-int/lit8 v1, p0, 0x6

    .line 66
    .line 67
    const/4 v3, 0x6

    .line 68
    if-ne v1, v3, :cond_5

    .line 69
    .line 70
    const-string v1, "CLASS2_FRAME_FROM_NONAUTH_STA"

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    or-int/lit8 v2, v2, 0x6

    .line 76
    .line 77
    :cond_5
    and-int/lit8 v1, p0, 0x7

    .line 78
    .line 79
    const/4 v3, 0x7

    .line 80
    if-ne v1, v3, :cond_6

    .line 81
    .line 82
    const-string v1, "CLASS3_FRAME_FROM_NONASSOC_STA"

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move v2, v3

    .line 88
    :cond_6
    and-int/lit8 v1, p0, 0x8

    .line 89
    .line 90
    const/16 v3, 0x8

    .line 91
    .line 92
    if-ne v1, v3, :cond_7

    .line 93
    .line 94
    const-string v1, "DISASSOC_STA_HAS_LEFT"

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    or-int/lit8 v2, v2, 0x8

    .line 100
    .line 101
    :cond_7
    and-int/lit8 v1, p0, 0x9

    .line 102
    .line 103
    const/16 v3, 0x9

    .line 104
    .line 105
    if-ne v1, v3, :cond_8

    .line 106
    .line 107
    const-string v1, "STA_REQ_ASSOC_WITHOUT_AUTH"

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    or-int/lit8 v2, v2, 0x9

    .line 113
    .line 114
    :cond_8
    and-int/lit8 v1, p0, 0xa

    .line 115
    .line 116
    const/16 v3, 0xa

    .line 117
    .line 118
    if-ne v1, v3, :cond_9

    .line 119
    .line 120
    const-string v1, "PWR_CAPABILITY_NOT_VALID"

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    or-int/lit8 v2, v2, 0xa

    .line 126
    .line 127
    :cond_9
    and-int/lit8 v1, p0, 0xb

    .line 128
    .line 129
    const/16 v3, 0xb

    .line 130
    .line 131
    if-ne v1, v3, :cond_a

    .line 132
    .line 133
    const-string v1, "SUPPORTED_CHANNEL_NOT_VALID"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    or-int/lit8 v2, v2, 0xb

    .line 139
    .line 140
    :cond_a
    and-int/lit8 v1, p0, 0xc

    .line 141
    .line 142
    const/16 v3, 0xc

    .line 143
    .line 144
    if-ne v1, v3, :cond_b

    .line 145
    .line 146
    const-string v1, "BSS_TRANSITION_DISASSOC"

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    .line 150
    .line 151
    or-int/lit8 v2, v2, 0xc

    .line 152
    .line 153
    :cond_b
    and-int/lit8 v1, p0, 0xd

    .line 154
    .line 155
    const/16 v3, 0xd

    .line 156
    .line 157
    if-ne v1, v3, :cond_c

    .line 158
    .line 159
    const-string v1, "INVALID_IE"

    .line 160
    .line 161
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    .line 163
    .line 164
    or-int/lit8 v2, v2, 0xd

    .line 165
    .line 166
    :cond_c
    and-int/lit8 v1, p0, 0xe

    .line 167
    .line 168
    const/16 v3, 0xe

    .line 169
    .line 170
    if-ne v1, v3, :cond_d

    .line 171
    .line 172
    const-string v1, "MICHAEL_MIC_FAILURE"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    .line 176
    .line 177
    or-int/lit8 v2, v2, 0xe

    .line 178
    .line 179
    :cond_d
    and-int/lit8 v1, p0, 0xf

    .line 180
    .line 181
    const/16 v3, 0xf

    .line 182
    .line 183
    if-ne v1, v3, :cond_e

    .line 184
    .line 185
    const-string v1, "FOURWAY_HANDSHAKE_TIMEOUT"

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move v2, v3

    .line 191
    :cond_e
    and-int/lit8 v1, p0, 0x10

    .line 192
    .line 193
    const/16 v3, 0x10

    .line 194
    .line 195
    if-ne v1, v3, :cond_f

    .line 196
    .line 197
    const-string v1, "GROUP_KEY_UPDATE_TIMEOUT"

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    or-int/lit8 v2, v2, 0x10

    .line 203
    .line 204
    :cond_f
    and-int/lit8 v1, p0, 0x11

    .line 205
    .line 206
    const/16 v3, 0x11

    .line 207
    .line 208
    if-ne v1, v3, :cond_10

    .line 209
    .line 210
    const-string v1, "IE_IN_4WAY_DIFFERS"

    .line 211
    .line 212
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    .line 214
    .line 215
    or-int/lit8 v2, v2, 0x11

    .line 216
    .line 217
    :cond_10
    and-int/lit8 v1, p0, 0x12

    .line 218
    .line 219
    const/16 v3, 0x12

    .line 220
    .line 221
    if-ne v1, v3, :cond_11

    .line 222
    .line 223
    const-string v1, "GROUP_CIPHER_NOT_VALID"

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    .line 227
    .line 228
    or-int/lit8 v2, v2, 0x12

    .line 229
    .line 230
    :cond_11
    and-int/lit8 v1, p0, 0x13

    .line 231
    .line 232
    const/16 v3, 0x13

    .line 233
    .line 234
    if-ne v1, v3, :cond_12

    .line 235
    .line 236
    const-string v1, "PAIRWISE_CIPHER_NOT_VALID"

    .line 237
    .line 238
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    or-int/lit8 v2, v2, 0x13

    .line 242
    .line 243
    :cond_12
    and-int/lit8 v1, p0, 0x14

    .line 244
    .line 245
    const/16 v3, 0x14

    .line 246
    .line 247
    if-ne v1, v3, :cond_13

    .line 248
    .line 249
    const-string v1, "AKMP_NOT_VALID"

    .line 250
    .line 251
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    or-int/lit8 v2, v2, 0x14

    .line 255
    .line 256
    :cond_13
    and-int/lit8 v1, p0, 0x15

    .line 257
    .line 258
    const/16 v3, 0x15

    .line 259
    .line 260
    if-ne v1, v3, :cond_14

    .line 261
    .line 262
    const-string v1, "UNSUPPORTED_RSN_IE_VERSION"

    .line 263
    .line 264
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    .line 266
    .line 267
    or-int/lit8 v2, v2, 0x15

    .line 268
    .line 269
    :cond_14
    and-int/lit8 v1, p0, 0x16

    .line 270
    .line 271
    const/16 v3, 0x16

    .line 272
    .line 273
    if-ne v1, v3, :cond_15

    .line 274
    .line 275
    const-string v1, "INVALID_RSN_IE_CAPAB"

    .line 276
    .line 277
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .line 279
    .line 280
    or-int/lit8 v2, v2, 0x16

    .line 281
    .line 282
    :cond_15
    and-int/lit8 v1, p0, 0x17

    .line 283
    .line 284
    const/16 v3, 0x17

    .line 285
    .line 286
    if-ne v1, v3, :cond_16

    .line 287
    .line 288
    const-string v1, "IEEE_802_1X_AUTH_FAILED"

    .line 289
    .line 290
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    or-int/lit8 v2, v2, 0x17

    .line 294
    .line 295
    :cond_16
    and-int/lit8 v1, p0, 0x18

    .line 296
    .line 297
    const/16 v3, 0x18

    .line 298
    .line 299
    if-ne v1, v3, :cond_17

    .line 300
    .line 301
    const-string v1, "CIPHER_SUITE_REJECTED"

    .line 302
    .line 303
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    or-int/lit8 v2, v2, 0x18

    .line 307
    .line 308
    :cond_17
    and-int/lit8 v1, p0, 0x19

    .line 309
    .line 310
    const/16 v3, 0x19

    .line 311
    .line 312
    if-ne v1, v3, :cond_18

    .line 313
    .line 314
    const-string v1, "TDLS_TEARDOWN_UNREACHABLE"

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    or-int/lit8 v2, v2, 0x19

    .line 320
    .line 321
    :cond_18
    and-int/lit8 v1, p0, 0x1a

    .line 322
    .line 323
    const/16 v3, 0x1a

    .line 324
    .line 325
    if-ne v1, v3, :cond_19

    .line 326
    .line 327
    const-string v1, "TDLS_TEARDOWN_UNSPECIFIED"

    .line 328
    .line 329
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    or-int/lit8 v2, v2, 0x1a

    .line 333
    .line 334
    :cond_19
    and-int/lit8 v1, p0, 0x1b

    .line 335
    .line 336
    const/16 v3, 0x1b

    .line 337
    .line 338
    if-ne v1, v3, :cond_1a

    .line 339
    .line 340
    const-string v1, "SSP_REQUESTED_DISASSOC"

    .line 341
    .line 342
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    .line 344
    .line 345
    or-int/lit8 v2, v2, 0x1b

    .line 346
    .line 347
    :cond_1a
    and-int/lit8 v1, p0, 0x1c

    .line 348
    .line 349
    const/16 v3, 0x1c

    .line 350
    .line 351
    if-ne v1, v3, :cond_1b

    .line 352
    .line 353
    const-string v1, "NO_SSP_ROAMING_AGREEMENT"

    .line 354
    .line 355
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    .line 357
    .line 358
    or-int/lit8 v2, v2, 0x1c

    .line 359
    .line 360
    :cond_1b
    and-int/lit8 v1, p0, 0x1d

    .line 361
    .line 362
    const/16 v3, 0x1d

    .line 363
    .line 364
    if-ne v1, v3, :cond_1c

    .line 365
    .line 366
    const-string v1, "BAD_CIPHER_OR_AKM"

    .line 367
    .line 368
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 369
    .line 370
    .line 371
    or-int/lit8 v2, v2, 0x1d

    .line 372
    .line 373
    :cond_1c
    and-int/lit8 v1, p0, 0x1e

    .line 374
    .line 375
    const/16 v3, 0x1e

    .line 376
    .line 377
    if-ne v1, v3, :cond_1d

    .line 378
    .line 379
    const-string v1, "NOT_AUTHORIZED_THIS_LOCATION"

    .line 380
    .line 381
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    or-int/lit8 v2, v2, 0x1e

    .line 385
    .line 386
    :cond_1d
    and-int/lit8 v1, p0, 0x1f

    .line 387
    .line 388
    const/16 v3, 0x1f

    .line 389
    .line 390
    if-ne v1, v3, :cond_1e

    .line 391
    .line 392
    const-string v1, "SERVICE_CHANGE_PRECLUDES_TS"

    .line 393
    .line 394
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    const/16 v2, 0x1f

    .line 398
    .line 399
    :cond_1e
    and-int/lit8 v1, p0, 0x20

    .line 400
    .line 401
    const/16 v3, 0x20

    .line 402
    .line 403
    if-ne v1, v3, :cond_1f

    .line 404
    .line 405
    const-string v1, "UNSPECIFIED_QOS_REASON"

    .line 406
    .line 407
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 408
    .line 409
    .line 410
    or-int/lit8 v2, v2, 0x20

    .line 411
    .line 412
    :cond_1f
    and-int/lit8 v1, p0, 0x21

    .line 413
    .line 414
    const/16 v3, 0x21

    .line 415
    .line 416
    if-ne v1, v3, :cond_20

    .line 417
    .line 418
    const-string v1, "NOT_ENOUGH_BANDWIDTH"

    .line 419
    .line 420
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    .line 422
    .line 423
    or-int/lit8 v2, v2, 0x21

    .line 424
    .line 425
    :cond_20
    and-int/lit8 v1, p0, 0x22

    .line 426
    .line 427
    const/16 v3, 0x22

    .line 428
    .line 429
    if-ne v1, v3, :cond_21

    .line 430
    .line 431
    const-string v1, "DISASSOC_LOW_ACK"

    .line 432
    .line 433
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 434
    .line 435
    .line 436
    or-int/lit8 v2, v2, 0x22

    .line 437
    .line 438
    :cond_21
    and-int/lit8 v1, p0, 0x23

    .line 439
    .line 440
    const/16 v3, 0x23

    .line 441
    .line 442
    if-ne v1, v3, :cond_22

    .line 443
    .line 444
    const-string v1, "EXCEEDED_TXOP"

    .line 445
    .line 446
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    .line 448
    .line 449
    or-int/lit8 v2, v2, 0x23

    .line 450
    .line 451
    :cond_22
    and-int/lit8 v1, p0, 0x24

    .line 452
    .line 453
    const/16 v3, 0x24

    .line 454
    .line 455
    if-ne v1, v3, :cond_23

    .line 456
    .line 457
    const-string v1, "STA_LEAVING"

    .line 458
    .line 459
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    or-int/lit8 v2, v2, 0x24

    .line 463
    .line 464
    :cond_23
    and-int/lit8 v1, p0, 0x25

    .line 465
    .line 466
    const/16 v3, 0x25

    .line 467
    .line 468
    if-ne v1, v3, :cond_24

    .line 469
    .line 470
    const-string v1, "END_TS_BA_DLS"

    .line 471
    .line 472
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 473
    .line 474
    .line 475
    or-int/lit8 v2, v2, 0x25

    .line 476
    .line 477
    :cond_24
    and-int/lit8 v1, p0, 0x26

    .line 478
    .line 479
    const/16 v3, 0x26

    .line 480
    .line 481
    if-ne v1, v3, :cond_25

    .line 482
    .line 483
    const-string v1, "UNKNOWN_TS_BA"

    .line 484
    .line 485
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    .line 487
    .line 488
    or-int/lit8 v2, v2, 0x26

    .line 489
    .line 490
    :cond_25
    and-int/lit8 v1, p0, 0x27

    .line 491
    .line 492
    const/16 v3, 0x27

    .line 493
    .line 494
    if-ne v1, v3, :cond_26

    .line 495
    .line 496
    const-string v1, "TIMEOUT"

    .line 497
    .line 498
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    .line 500
    .line 501
    or-int/lit8 v2, v2, 0x27

    .line 502
    .line 503
    :cond_26
    and-int/lit8 v1, p0, 0x2d

    .line 504
    .line 505
    const/16 v3, 0x2d

    .line 506
    .line 507
    if-ne v1, v3, :cond_27

    .line 508
    .line 509
    const-string v1, "PEERKEY_MISMATCH"

    .line 510
    .line 511
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    .line 513
    .line 514
    or-int/lit8 v2, v2, 0x2d

    .line 515
    .line 516
    :cond_27
    and-int/lit8 v1, p0, 0x2e

    .line 517
    .line 518
    const/16 v3, 0x2e

    .line 519
    .line 520
    if-ne v1, v3, :cond_28

    .line 521
    .line 522
    const-string v1, "AUTHORIZED_ACCESS_LIMIT_REACHED"

    .line 523
    .line 524
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    .line 526
    .line 527
    or-int/lit8 v2, v2, 0x2e

    .line 528
    .line 529
    :cond_28
    and-int/lit8 v1, p0, 0x2f

    .line 530
    .line 531
    const/16 v3, 0x2f

    .line 532
    .line 533
    if-ne v1, v3, :cond_29

    .line 534
    .line 535
    const-string v1, "EXTERNAL_SERVICE_REQUIREMENTS"

    .line 536
    .line 537
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .line 539
    .line 540
    or-int/lit8 v2, v2, 0x2f

    .line 541
    .line 542
    :cond_29
    and-int/lit8 v1, p0, 0x30

    .line 543
    .line 544
    const/16 v3, 0x30

    .line 545
    .line 546
    if-ne v1, v3, :cond_2a

    .line 547
    .line 548
    const-string v1, "INVALID_FT_ACTION_FRAME_COUNT"

    .line 549
    .line 550
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    .line 552
    .line 553
    or-int/lit8 v2, v2, 0x30

    .line 554
    .line 555
    :cond_2a
    and-int/lit8 v1, p0, 0x31

    .line 556
    .line 557
    const/16 v3, 0x31

    .line 558
    .line 559
    if-ne v1, v3, :cond_2b

    .line 560
    .line 561
    const-string v1, "INVALID_PMKID"

    .line 562
    .line 563
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    .line 565
    .line 566
    or-int/lit8 v2, v2, 0x31

    .line 567
    .line 568
    :cond_2b
    and-int/lit8 v1, p0, 0x32

    .line 569
    .line 570
    const/16 v3, 0x32

    .line 571
    .line 572
    if-ne v1, v3, :cond_2c

    .line 573
    .line 574
    const-string v1, "INVALID_MDE"

    .line 575
    .line 576
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    .line 578
    .line 579
    or-int/lit8 v2, v2, 0x32

    .line 580
    .line 581
    :cond_2c
    and-int/lit8 v1, p0, 0x33

    .line 582
    .line 583
    const/16 v3, 0x33

    .line 584
    .line 585
    if-ne v1, v3, :cond_2d

    .line 586
    .line 587
    const-string v1, "INVALID_FTE"

    .line 588
    .line 589
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 590
    .line 591
    .line 592
    or-int/lit8 v2, v2, 0x33

    .line 593
    .line 594
    :cond_2d
    and-int/lit8 v1, p0, 0x34

    .line 595
    .line 596
    const/16 v3, 0x34

    .line 597
    .line 598
    if-ne v1, v3, :cond_2e

    .line 599
    .line 600
    const-string v1, "MESH_PEERING_CANCELLED"

    .line 601
    .line 602
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    .line 604
    .line 605
    or-int/lit8 v2, v2, 0x34

    .line 606
    .line 607
    :cond_2e
    and-int/lit8 v1, p0, 0x35

    .line 608
    .line 609
    const/16 v3, 0x35

    .line 610
    .line 611
    if-ne v1, v3, :cond_2f

    .line 612
    .line 613
    const-string v1, "MESH_MAX_PEERS"

    .line 614
    .line 615
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 616
    .line 617
    .line 618
    or-int/lit8 v2, v2, 0x35

    .line 619
    .line 620
    :cond_2f
    and-int/lit8 v1, p0, 0x36

    .line 621
    .line 622
    const/16 v3, 0x36

    .line 623
    .line 624
    if-ne v1, v3, :cond_30

    .line 625
    .line 626
    const-string v1, "MESH_CONFIG_POLICY_VIOLATION"

    .line 627
    .line 628
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    .line 630
    .line 631
    or-int/lit8 v2, v2, 0x36

    .line 632
    .line 633
    :cond_30
    and-int/lit8 v1, p0, 0x37

    .line 634
    .line 635
    const/16 v3, 0x37

    .line 636
    .line 637
    if-ne v1, v3, :cond_31

    .line 638
    .line 639
    const-string v1, "MESH_CLOSE_RCVD"

    .line 640
    .line 641
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    or-int/lit8 v2, v2, 0x37

    .line 645
    .line 646
    :cond_31
    and-int/lit8 v1, p0, 0x38

    .line 647
    .line 648
    const/16 v3, 0x38

    .line 649
    .line 650
    if-ne v1, v3, :cond_32

    .line 651
    .line 652
    const-string v1, "MESH_MAX_RETRIES"

    .line 653
    .line 654
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 655
    .line 656
    .line 657
    or-int/lit8 v2, v2, 0x38

    .line 658
    .line 659
    :cond_32
    and-int/lit8 v1, p0, 0x39

    .line 660
    .line 661
    const/16 v3, 0x39

    .line 662
    .line 663
    if-ne v1, v3, :cond_33

    .line 664
    .line 665
    const-string v1, "MESH_CONFIRM_TIMEOUT"

    .line 666
    .line 667
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    or-int/lit8 v2, v2, 0x39

    .line 671
    .line 672
    :cond_33
    and-int/lit8 v1, p0, 0x3a

    .line 673
    .line 674
    const/16 v3, 0x3a

    .line 675
    .line 676
    if-ne v1, v3, :cond_34

    .line 677
    .line 678
    const-string v1, "MESH_INVALID_GTK"

    .line 679
    .line 680
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 681
    .line 682
    .line 683
    or-int/lit8 v2, v2, 0x3a

    .line 684
    .line 685
    :cond_34
    and-int/lit8 v1, p0, 0x3b

    .line 686
    .line 687
    const/16 v3, 0x3b

    .line 688
    .line 689
    if-ne v1, v3, :cond_35

    .line 690
    .line 691
    const-string v1, "MESH_INCONSISTENT_PARAMS"

    .line 692
    .line 693
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 694
    .line 695
    .line 696
    or-int/lit8 v2, v2, 0x3b

    .line 697
    .line 698
    :cond_35
    and-int/lit8 v1, p0, 0x3c

    .line 699
    .line 700
    const/16 v3, 0x3c

    .line 701
    .line 702
    if-ne v1, v3, :cond_36

    .line 703
    .line 704
    const-string v1, "MESH_INVALID_SECURITY_CAP"

    .line 705
    .line 706
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    .line 708
    .line 709
    or-int/lit8 v2, v2, 0x3c

    .line 710
    .line 711
    :cond_36
    and-int/lit8 v1, p0, 0x3d

    .line 712
    .line 713
    const/16 v3, 0x3d

    .line 714
    .line 715
    if-ne v1, v3, :cond_37

    .line 716
    .line 717
    const-string v1, "MESH_PATH_ERROR_NO_PROXY_INFO"

    .line 718
    .line 719
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    .line 721
    .line 722
    or-int/lit8 v2, v2, 0x3d

    .line 723
    .line 724
    :cond_37
    and-int/lit8 v1, p0, 0x3e

    .line 725
    .line 726
    const/16 v3, 0x3e

    .line 727
    .line 728
    if-ne v1, v3, :cond_38

    .line 729
    .line 730
    const-string v1, "MESH_PATH_ERROR_NO_FORWARDING_INFO"

    .line 731
    .line 732
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    .line 734
    .line 735
    or-int/lit8 v2, v2, 0x3e

    .line 736
    .line 737
    :cond_38
    and-int/lit8 v1, p0, 0x3f

    .line 738
    .line 739
    const/16 v3, 0x3f

    .line 740
    .line 741
    if-ne v1, v3, :cond_39

    .line 742
    .line 743
    const-string v1, "MESH_PATH_ERROR_DEST_UNREACHABLE"

    .line 744
    .line 745
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    const/16 v2, 0x3f

    .line 749
    .line 750
    :cond_39
    and-int/lit8 v1, p0, 0x40

    .line 751
    .line 752
    const/16 v3, 0x40

    .line 753
    .line 754
    if-ne v1, v3, :cond_3a

    .line 755
    .line 756
    const-string v1, "MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS"

    .line 757
    .line 758
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    .line 760
    .line 761
    or-int/lit8 v2, v2, 0x40

    .line 762
    .line 763
    :cond_3a
    and-int/lit8 v1, p0, 0x41

    .line 764
    .line 765
    const/16 v3, 0x41

    .line 766
    .line 767
    if-ne v1, v3, :cond_3b

    .line 768
    .line 769
    const-string v1, "MESH_CHANNEL_SWITCH_REGULATORY_REQ"

    .line 770
    .line 771
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    .line 773
    .line 774
    or-int/lit8 v2, v2, 0x41

    .line 775
    .line 776
    :cond_3b
    and-int/lit8 v1, p0, 0x42

    .line 777
    .line 778
    const/16 v3, 0x42

    .line 779
    .line 780
    if-ne v1, v3, :cond_3c

    .line 781
    .line 782
    const-string v1, "MESH_CHANNEL_SWITCH_UNSPECIFIED"

    .line 783
    .line 784
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    .line 786
    .line 787
    or-int/lit8 v2, v2, 0x42

    .line 788
    .line 789
    :cond_3c
    if-eq p0, v2, :cond_3d

    .line 790
    .line 791
    new-instance v1, Ljava/lang/StringBuilder;

    .line 792
    .line 793
    const-string v3, "0x"

    .line 794
    .line 795
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 796
    .line 797
    .line 798
    not-int v2, v2

    .line 799
    and-int/2addr p0, v2

    .line 800
    invoke-static {p0, v1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_0/IWifiChip$Stub$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/util/ArrayList;)V

    .line 801
    .line 802
    .line 803
    :cond_3d
    const-string p0, " | "

    .line 804
    .line 805
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 806
    .line 807
    .line 808
    move-result-object p0

    .line 809
    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, v0, :cond_0

    .line 3
    .line 4
    const-string p0, "UNSPECIFIED"

    .line 5
    .line 6
    return-object p0

    .line 7
    :cond_0
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_1

    .line 9
    .line 10
    const-string p0, "PREV_AUTH_NOT_VALID"

    .line 11
    .line 12
    return-object p0

    .line 13
    :cond_1
    const/4 v0, 0x3

    .line 14
    if-ne p0, v0, :cond_2

    .line 15
    .line 16
    const-string p0, "DEAUTH_LEAVING"

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_2
    const/4 v0, 0x4

    .line 20
    if-ne p0, v0, :cond_3

    .line 21
    .line 22
    const-string p0, "DISASSOC_DUE_TO_INACTIVITY"

    .line 23
    .line 24
    return-object p0

    .line 25
    :cond_3
    const/4 v0, 0x5

    .line 26
    if-ne p0, v0, :cond_4

    .line 27
    .line 28
    const-string p0, "DISASSOC_AP_BUSY"

    .line 29
    .line 30
    return-object p0

    .line 31
    :cond_4
    const/4 v0, 0x6

    .line 32
    if-ne p0, v0, :cond_5

    .line 33
    .line 34
    const-string p0, "CLASS2_FRAME_FROM_NONAUTH_STA"

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_5
    const/4 v0, 0x7

    .line 38
    if-ne p0, v0, :cond_6

    .line 39
    .line 40
    const-string p0, "CLASS3_FRAME_FROM_NONASSOC_STA"

    .line 41
    .line 42
    return-object p0

    .line 43
    :cond_6
    const/16 v0, 0x8

    .line 44
    .line 45
    if-ne p0, v0, :cond_7

    .line 46
    .line 47
    const-string p0, "DISASSOC_STA_HAS_LEFT"

    .line 48
    .line 49
    return-object p0

    .line 50
    :cond_7
    const/16 v0, 0x9

    .line 51
    .line 52
    if-ne p0, v0, :cond_8

    .line 53
    .line 54
    const-string p0, "STA_REQ_ASSOC_WITHOUT_AUTH"

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_8
    const/16 v0, 0xa

    .line 58
    .line 59
    if-ne p0, v0, :cond_9

    .line 60
    .line 61
    const-string p0, "PWR_CAPABILITY_NOT_VALID"

    .line 62
    .line 63
    return-object p0

    .line 64
    :cond_9
    const/16 v0, 0xb

    .line 65
    .line 66
    if-ne p0, v0, :cond_a

    .line 67
    .line 68
    const-string p0, "SUPPORTED_CHANNEL_NOT_VALID"

    .line 69
    .line 70
    return-object p0

    .line 71
    :cond_a
    const/16 v0, 0xc

    .line 72
    .line 73
    if-ne p0, v0, :cond_b

    .line 74
    .line 75
    const-string p0, "BSS_TRANSITION_DISASSOC"

    .line 76
    .line 77
    return-object p0

    .line 78
    :cond_b
    const/16 v0, 0xd

    .line 79
    .line 80
    if-ne p0, v0, :cond_c

    .line 81
    .line 82
    const-string p0, "INVALID_IE"

    .line 83
    .line 84
    return-object p0

    .line 85
    :cond_c
    const/16 v0, 0xe

    .line 86
    .line 87
    if-ne p0, v0, :cond_d

    .line 88
    .line 89
    const-string p0, "MICHAEL_MIC_FAILURE"

    .line 90
    .line 91
    return-object p0

    .line 92
    :cond_d
    const/16 v0, 0xf

    .line 93
    .line 94
    if-ne p0, v0, :cond_e

    .line 95
    .line 96
    const-string p0, "FOURWAY_HANDSHAKE_TIMEOUT"

    .line 97
    .line 98
    return-object p0

    .line 99
    :cond_e
    const/16 v0, 0x10

    .line 100
    .line 101
    if-ne p0, v0, :cond_f

    .line 102
    .line 103
    const-string p0, "GROUP_KEY_UPDATE_TIMEOUT"

    .line 104
    .line 105
    return-object p0

    .line 106
    :cond_f
    const/16 v0, 0x11

    .line 107
    .line 108
    if-ne p0, v0, :cond_10

    .line 109
    .line 110
    const-string p0, "IE_IN_4WAY_DIFFERS"

    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_10
    const/16 v0, 0x12

    .line 114
    .line 115
    if-ne p0, v0, :cond_11

    .line 116
    .line 117
    const-string p0, "GROUP_CIPHER_NOT_VALID"

    .line 118
    .line 119
    return-object p0

    .line 120
    :cond_11
    const/16 v0, 0x13

    .line 121
    .line 122
    if-ne p0, v0, :cond_12

    .line 123
    .line 124
    const-string p0, "PAIRWISE_CIPHER_NOT_VALID"

    .line 125
    .line 126
    return-object p0

    .line 127
    :cond_12
    const/16 v0, 0x14

    .line 128
    .line 129
    if-ne p0, v0, :cond_13

    .line 130
    .line 131
    const-string p0, "AKMP_NOT_VALID"

    .line 132
    .line 133
    return-object p0

    .line 134
    :cond_13
    const/16 v0, 0x15

    .line 135
    .line 136
    if-ne p0, v0, :cond_14

    .line 137
    .line 138
    const-string p0, "UNSUPPORTED_RSN_IE_VERSION"

    .line 139
    .line 140
    return-object p0

    .line 141
    :cond_14
    const/16 v0, 0x16

    .line 142
    .line 143
    if-ne p0, v0, :cond_15

    .line 144
    .line 145
    const-string p0, "INVALID_RSN_IE_CAPAB"

    .line 146
    .line 147
    return-object p0

    .line 148
    :cond_15
    const/16 v0, 0x17

    .line 149
    .line 150
    if-ne p0, v0, :cond_16

    .line 151
    .line 152
    const-string p0, "IEEE_802_1X_AUTH_FAILED"

    .line 153
    .line 154
    return-object p0

    .line 155
    :cond_16
    const/16 v0, 0x18

    .line 156
    .line 157
    if-ne p0, v0, :cond_17

    .line 158
    .line 159
    const-string p0, "CIPHER_SUITE_REJECTED"

    .line 160
    .line 161
    return-object p0

    .line 162
    :cond_17
    const/16 v0, 0x19

    .line 163
    .line 164
    if-ne p0, v0, :cond_18

    .line 165
    .line 166
    const-string p0, "TDLS_TEARDOWN_UNREACHABLE"

    .line 167
    .line 168
    return-object p0

    .line 169
    :cond_18
    const/16 v0, 0x1a

    .line 170
    .line 171
    if-ne p0, v0, :cond_19

    .line 172
    .line 173
    const-string p0, "TDLS_TEARDOWN_UNSPECIFIED"

    .line 174
    .line 175
    return-object p0

    .line 176
    :cond_19
    const/16 v0, 0x1b

    .line 177
    .line 178
    if-ne p0, v0, :cond_1a

    .line 179
    .line 180
    const-string p0, "SSP_REQUESTED_DISASSOC"

    .line 181
    .line 182
    return-object p0

    .line 183
    :cond_1a
    const/16 v0, 0x1c

    .line 184
    .line 185
    if-ne p0, v0, :cond_1b

    .line 186
    .line 187
    const-string p0, "NO_SSP_ROAMING_AGREEMENT"

    .line 188
    .line 189
    return-object p0

    .line 190
    :cond_1b
    const/16 v0, 0x1d

    .line 191
    .line 192
    if-ne p0, v0, :cond_1c

    .line 193
    .line 194
    const-string p0, "BAD_CIPHER_OR_AKM"

    .line 195
    .line 196
    return-object p0

    .line 197
    :cond_1c
    const/16 v0, 0x1e

    .line 198
    .line 199
    if-ne p0, v0, :cond_1d

    .line 200
    .line 201
    const-string p0, "NOT_AUTHORIZED_THIS_LOCATION"

    .line 202
    .line 203
    return-object p0

    .line 204
    :cond_1d
    const/16 v0, 0x1f

    .line 205
    .line 206
    if-ne p0, v0, :cond_1e

    .line 207
    .line 208
    const-string p0, "SERVICE_CHANGE_PRECLUDES_TS"

    .line 209
    .line 210
    return-object p0

    .line 211
    :cond_1e
    const/16 v0, 0x20

    .line 212
    .line 213
    if-ne p0, v0, :cond_1f

    .line 214
    .line 215
    const-string p0, "UNSPECIFIED_QOS_REASON"

    .line 216
    .line 217
    return-object p0

    .line 218
    :cond_1f
    const/16 v0, 0x21

    .line 219
    .line 220
    if-ne p0, v0, :cond_20

    .line 221
    .line 222
    const-string p0, "NOT_ENOUGH_BANDWIDTH"

    .line 223
    .line 224
    return-object p0

    .line 225
    :cond_20
    const/16 v0, 0x22

    .line 226
    .line 227
    if-ne p0, v0, :cond_21

    .line 228
    .line 229
    const-string p0, "DISASSOC_LOW_ACK"

    .line 230
    .line 231
    return-object p0

    .line 232
    :cond_21
    const/16 v0, 0x23

    .line 233
    .line 234
    if-ne p0, v0, :cond_22

    .line 235
    .line 236
    const-string p0, "EXCEEDED_TXOP"

    .line 237
    .line 238
    return-object p0

    .line 239
    :cond_22
    const/16 v0, 0x24

    .line 240
    .line 241
    if-ne p0, v0, :cond_23

    .line 242
    .line 243
    const-string p0, "STA_LEAVING"

    .line 244
    .line 245
    return-object p0

    .line 246
    :cond_23
    const/16 v0, 0x25

    .line 247
    .line 248
    if-ne p0, v0, :cond_24

    .line 249
    .line 250
    const-string p0, "END_TS_BA_DLS"

    .line 251
    .line 252
    return-object p0

    .line 253
    :cond_24
    const/16 v0, 0x26

    .line 254
    .line 255
    if-ne p0, v0, :cond_25

    .line 256
    .line 257
    const-string p0, "UNKNOWN_TS_BA"

    .line 258
    .line 259
    return-object p0

    .line 260
    :cond_25
    const/16 v0, 0x27

    .line 261
    .line 262
    if-ne p0, v0, :cond_26

    .line 263
    .line 264
    const-string p0, "TIMEOUT"

    .line 265
    .line 266
    return-object p0

    .line 267
    :cond_26
    const/16 v0, 0x2d

    .line 268
    .line 269
    if-ne p0, v0, :cond_27

    .line 270
    .line 271
    const-string p0, "PEERKEY_MISMATCH"

    .line 272
    .line 273
    return-object p0

    .line 274
    :cond_27
    const/16 v0, 0x2e

    .line 275
    .line 276
    if-ne p0, v0, :cond_28

    .line 277
    .line 278
    const-string p0, "AUTHORIZED_ACCESS_LIMIT_REACHED"

    .line 279
    .line 280
    return-object p0

    .line 281
    :cond_28
    const/16 v0, 0x2f

    .line 282
    .line 283
    if-ne p0, v0, :cond_29

    .line 284
    .line 285
    const-string p0, "EXTERNAL_SERVICE_REQUIREMENTS"

    .line 286
    .line 287
    return-object p0

    .line 288
    :cond_29
    const/16 v0, 0x30

    .line 289
    .line 290
    if-ne p0, v0, :cond_2a

    .line 291
    .line 292
    const-string p0, "INVALID_FT_ACTION_FRAME_COUNT"

    .line 293
    .line 294
    return-object p0

    .line 295
    :cond_2a
    const/16 v0, 0x31

    .line 296
    .line 297
    if-ne p0, v0, :cond_2b

    .line 298
    .line 299
    const-string p0, "INVALID_PMKID"

    .line 300
    .line 301
    return-object p0

    .line 302
    :cond_2b
    const/16 v0, 0x32

    .line 303
    .line 304
    if-ne p0, v0, :cond_2c

    .line 305
    .line 306
    const-string p0, "INVALID_MDE"

    .line 307
    .line 308
    return-object p0

    .line 309
    :cond_2c
    const/16 v0, 0x33

    .line 310
    .line 311
    if-ne p0, v0, :cond_2d

    .line 312
    .line 313
    const-string p0, "INVALID_FTE"

    .line 314
    .line 315
    return-object p0

    .line 316
    :cond_2d
    const/16 v0, 0x34

    .line 317
    .line 318
    if-ne p0, v0, :cond_2e

    .line 319
    .line 320
    const-string p0, "MESH_PEERING_CANCELLED"

    .line 321
    .line 322
    return-object p0

    .line 323
    :cond_2e
    const/16 v0, 0x35

    .line 324
    .line 325
    if-ne p0, v0, :cond_2f

    .line 326
    .line 327
    const-string p0, "MESH_MAX_PEERS"

    .line 328
    .line 329
    return-object p0

    .line 330
    :cond_2f
    const/16 v0, 0x36

    .line 331
    .line 332
    if-ne p0, v0, :cond_30

    .line 333
    .line 334
    const-string p0, "MESH_CONFIG_POLICY_VIOLATION"

    .line 335
    .line 336
    return-object p0

    .line 337
    :cond_30
    const/16 v0, 0x37

    .line 338
    .line 339
    if-ne p0, v0, :cond_31

    .line 340
    .line 341
    const-string p0, "MESH_CLOSE_RCVD"

    .line 342
    .line 343
    return-object p0

    .line 344
    :cond_31
    const/16 v0, 0x38

    .line 345
    .line 346
    if-ne p0, v0, :cond_32

    .line 347
    .line 348
    const-string p0, "MESH_MAX_RETRIES"

    .line 349
    .line 350
    return-object p0

    .line 351
    :cond_32
    const/16 v0, 0x39

    .line 352
    .line 353
    if-ne p0, v0, :cond_33

    .line 354
    .line 355
    const-string p0, "MESH_CONFIRM_TIMEOUT"

    .line 356
    .line 357
    return-object p0

    .line 358
    :cond_33
    const/16 v0, 0x3a

    .line 359
    .line 360
    if-ne p0, v0, :cond_34

    .line 361
    .line 362
    const-string p0, "MESH_INVALID_GTK"

    .line 363
    .line 364
    return-object p0

    .line 365
    :cond_34
    const/16 v0, 0x3b

    .line 366
    .line 367
    if-ne p0, v0, :cond_35

    .line 368
    .line 369
    const-string p0, "MESH_INCONSISTENT_PARAMS"

    .line 370
    .line 371
    return-object p0

    .line 372
    :cond_35
    const/16 v0, 0x3c

    .line 373
    .line 374
    if-ne p0, v0, :cond_36

    .line 375
    .line 376
    const-string p0, "MESH_INVALID_SECURITY_CAP"

    .line 377
    .line 378
    return-object p0

    .line 379
    :cond_36
    const/16 v0, 0x3d

    .line 380
    .line 381
    if-ne p0, v0, :cond_37

    .line 382
    .line 383
    const-string p0, "MESH_PATH_ERROR_NO_PROXY_INFO"

    .line 384
    .line 385
    return-object p0

    .line 386
    :cond_37
    const/16 v0, 0x3e

    .line 387
    .line 388
    if-ne p0, v0, :cond_38

    .line 389
    .line 390
    const-string p0, "MESH_PATH_ERROR_NO_FORWARDING_INFO"

    .line 391
    .line 392
    return-object p0

    .line 393
    :cond_38
    const/16 v0, 0x3f

    .line 394
    .line 395
    if-ne p0, v0, :cond_39

    .line 396
    .line 397
    const-string p0, "MESH_PATH_ERROR_DEST_UNREACHABLE"

    .line 398
    .line 399
    return-object p0

    .line 400
    :cond_39
    const/16 v0, 0x40

    .line 401
    .line 402
    if-ne p0, v0, :cond_3a

    .line 403
    .line 404
    const-string p0, "MAC_ADDRESS_ALREADY_EXISTS_IN_MBSS"

    .line 405
    .line 406
    return-object p0

    .line 407
    :cond_3a
    const/16 v0, 0x41

    .line 408
    .line 409
    if-ne p0, v0, :cond_3b

    .line 410
    .line 411
    const-string p0, "MESH_CHANNEL_SWITCH_REGULATORY_REQ"

    .line 412
    .line 413
    return-object p0

    .line 414
    :cond_3b
    const/16 v0, 0x42

    .line 415
    .line 416
    if-ne p0, v0, :cond_3c

    .line 417
    .line 418
    const-string p0, "MESH_CHANNEL_SWITCH_UNSPECIFIED"

    .line 419
    .line 420
    return-object p0

    .line 421
    :cond_3c
    new-instance v0, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    const-string v1, "0x"

    .line 424
    .line 425
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 426
    .line 427
    .line 428
    invoke-static {v0, p0}, Lcom/samsung/android/server/wifi/ap/SemDhcpPacket$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;I)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    return-object p0
.end method
