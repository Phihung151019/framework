.class public Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clusterIdBottomRangeVal:C

.field public clusterIdTopRangeVal:C

.field public discoveryChannelMhzVal:[I

.field public hopCountForceVal:B

.field public intfAddrVal:[B

.field public ouiVal:I

.field public randomFactorForceVal:B

.field public useBeaconsInBandVal:[Z

.field public useSdfInBandVal:[Z

.field public validClusterIdVals:Z

.field public validDiscoveryChannelVal:Z

.field public validHopCountForceVal:Z

.field public validIntfAddrVal:Z

.field public validOuiVal:Z

.field public validRandomFactorForceVal:Z

.field public validUseBeaconsInBandVal:Z

.field public validUseSdfInBandVal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validClusterIdVals:Z

    .line 6
    .line 7
    iput-char v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->clusterIdBottomRangeVal:C

    .line 8
    .line 9
    iput-char v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->clusterIdTopRangeVal:C

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validIntfAddrVal:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validOuiVal:Z

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->ouiVal:I

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 18
    .line 19
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->randomFactorForceVal:B

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validHopCountForceVal:Z

    .line 22
    .line 23
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->hopCountForceVal:B

    .line 24
    .line 25
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 26
    .line 27
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final getStability()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 8

    .line 1
    const-class v0, [Z

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    const/4 v3, 0x4

    .line 12
    const-string v4, "Overflow in the size of parcelable"

    .line 13
    .line 14
    const v5, 0x7fffffff

    .line 15
    .line 16
    .line 17
    if-lt v2, v3, :cond_23

    .line 18
    .line 19
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 20
    .line 21
    .line 22
    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    sub-int/2addr v3, v1

    .line 24
    if-lt v3, v2, :cond_1

    .line 25
    .line 26
    sub-int/2addr v5, v2

    .line 27
    if-gt v1, v5, :cond_0

    .line 28
    .line 29
    :goto_0
    add-int/2addr v1, v2

    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 35
    .line 36
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw p0

    .line 40
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iput-boolean v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validClusterIdVals:Z

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 47
    .line 48
    .line 49
    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    sub-int/2addr v3, v1

    .line 51
    if-lt v3, v2, :cond_3

    .line 52
    .line 53
    sub-int/2addr v5, v2

    .line 54
    if-gt v1, v5, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 58
    .line 59
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p0

    .line 63
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    int-to-char v3, v3

    .line 68
    iput-char v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->clusterIdBottomRangeVal:C

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 71
    .line 72
    .line 73
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 74
    sub-int/2addr v3, v1

    .line 75
    if-lt v3, v2, :cond_5

    .line 76
    .line 77
    sub-int/2addr v5, v2

    .line 78
    if-gt v1, v5, :cond_4

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 82
    .line 83
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p0

    .line 87
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    int-to-char v3, v3

    .line 92
    iput-char v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->clusterIdTopRangeVal:C

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 95
    .line 96
    .line 97
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    sub-int/2addr v3, v1

    .line 99
    if-lt v3, v2, :cond_7

    .line 100
    .line 101
    sub-int/2addr v5, v2

    .line 102
    if-gt v1, v5, :cond_6

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 106
    .line 107
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw p0

    .line 111
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    iput-boolean v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validIntfAddrVal:Z

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 118
    .line 119
    .line 120
    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    sub-int/2addr v3, v1

    .line 122
    if-lt v3, v2, :cond_9

    .line 123
    .line 124
    sub-int/2addr v5, v2

    .line 125
    if-gt v1, v5, :cond_8

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 129
    .line 130
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_9
    :try_start_5
    const-class v3, [B

    .line 135
    .line 136
    const/4 v6, 0x6

    .line 137
    filled-new-array {v6}, [I

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-virtual {p1, v3, v6}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    check-cast v3, [B

    .line 146
    .line 147
    iput-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->intfAddrVal:[B

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 150
    .line 151
    .line 152
    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    sub-int/2addr v3, v1

    .line 154
    if-lt v3, v2, :cond_b

    .line 155
    .line 156
    sub-int/2addr v5, v2

    .line 157
    if-gt v1, v5, :cond_a

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 162
    .line 163
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p0

    .line 167
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    iput-boolean v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validOuiVal:Z

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 174
    .line 175
    .line 176
    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 177
    sub-int/2addr v3, v1

    .line 178
    if-lt v3, v2, :cond_d

    .line 179
    .line 180
    sub-int/2addr v5, v2

    .line 181
    if-gt v1, v5, :cond_c

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 186
    .line 187
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    throw p0

    .line 191
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 192
    .line 193
    .line 194
    move-result v3

    .line 195
    iput v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->ouiVal:I

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 198
    .line 199
    .line 200
    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 201
    sub-int/2addr v3, v1

    .line 202
    if-lt v3, v2, :cond_f

    .line 203
    .line 204
    sub-int/2addr v5, v2

    .line 205
    if-gt v1, v5, :cond_e

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 210
    .line 211
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p0

    .line 215
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 216
    .line 217
    .line 218
    move-result v3

    .line 219
    iput-boolean v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 222
    .line 223
    .line 224
    move-result v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 225
    sub-int/2addr v3, v1

    .line 226
    if-lt v3, v2, :cond_11

    .line 227
    .line 228
    sub-int/2addr v5, v2

    .line 229
    if-gt v1, v5, :cond_10

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 234
    .line 235
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p0

    .line 239
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    iput-byte v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->randomFactorForceVal:B

    .line 244
    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 246
    .line 247
    .line 248
    move-result v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 249
    sub-int/2addr v3, v1

    .line 250
    if-lt v3, v2, :cond_13

    .line 251
    .line 252
    sub-int/2addr v5, v2

    .line 253
    if-gt v1, v5, :cond_12

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 258
    .line 259
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    throw p0

    .line 263
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    iput-boolean v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validHopCountForceVal:Z

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 270
    .line 271
    .line 272
    move-result v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 273
    sub-int/2addr v3, v1

    .line 274
    if-lt v3, v2, :cond_15

    .line 275
    .line 276
    sub-int/2addr v5, v2

    .line 277
    if-gt v1, v5, :cond_14

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 282
    .line 283
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw p0

    .line 287
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 288
    .line 289
    .line 290
    move-result v3

    .line 291
    iput-byte v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->hopCountForceVal:B

    .line 292
    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 294
    .line 295
    .line 296
    move-result v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 297
    sub-int/2addr v3, v1

    .line 298
    if-lt v3, v2, :cond_17

    .line 299
    .line 300
    sub-int/2addr v5, v2

    .line 301
    if-gt v1, v5, :cond_16

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 306
    .line 307
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw p0

    .line 311
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    iput-boolean v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 316
    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 318
    .line 319
    .line 320
    move-result v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 321
    sub-int/2addr v3, v1

    .line 322
    if-lt v3, v2, :cond_19

    .line 323
    .line 324
    sub-int/2addr v5, v2

    .line 325
    if-gt v1, v5, :cond_18

    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_18
    new-instance p0, Landroid/os/BadParcelableException;

    .line 330
    .line 331
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw p0

    .line 335
    :cond_19
    :try_start_d
    const-class v3, [I

    .line 336
    .line 337
    const/4 v6, 0x3

    .line 338
    filled-new-array {v6}, [I

    .line 339
    .line 340
    .line 341
    move-result-object v7

    .line 342
    invoke-virtual {p1, v3, v7}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 343
    .line 344
    .line 345
    move-result-object v3

    .line 346
    check-cast v3, [I

    .line 347
    .line 348
    iput-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 349
    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 351
    .line 352
    .line 353
    move-result v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 354
    sub-int/2addr v3, v1

    .line 355
    if-lt v3, v2, :cond_1b

    .line 356
    .line 357
    sub-int/2addr v5, v2

    .line 358
    if-gt v1, v5, :cond_1a

    .line 359
    .line 360
    goto/16 :goto_0

    .line 361
    .line 362
    :cond_1a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 363
    .line 364
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 365
    .line 366
    .line 367
    throw p0

    .line 368
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 369
    .line 370
    .line 371
    move-result v3

    .line 372
    iput-boolean v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 373
    .line 374
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 375
    .line 376
    .line 377
    move-result v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 378
    sub-int/2addr v3, v1

    .line 379
    if-lt v3, v2, :cond_1d

    .line 380
    .line 381
    sub-int/2addr v5, v2

    .line 382
    if-gt v1, v5, :cond_1c

    .line 383
    .line 384
    goto/16 :goto_0

    .line 385
    .line 386
    :cond_1c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 387
    .line 388
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 389
    .line 390
    .line 391
    throw p0

    .line 392
    :cond_1d
    :try_start_f
    filled-new-array {v6}, [I

    .line 393
    .line 394
    .line 395
    move-result-object v3

    .line 396
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    check-cast v3, [Z

    .line 401
    .line 402
    iput-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 403
    .line 404
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 405
    .line 406
    .line 407
    move-result v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 408
    sub-int/2addr v3, v1

    .line 409
    if-lt v3, v2, :cond_1f

    .line 410
    .line 411
    sub-int/2addr v5, v2

    .line 412
    if-gt v1, v5, :cond_1e

    .line 413
    .line 414
    goto/16 :goto_0

    .line 415
    .line 416
    :cond_1e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 417
    .line 418
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    throw p0

    .line 422
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 423
    .line 424
    .line 425
    move-result v3

    .line 426
    iput-boolean v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 427
    .line 428
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 429
    .line 430
    .line 431
    move-result v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 432
    sub-int/2addr v3, v1

    .line 433
    if-lt v3, v2, :cond_21

    .line 434
    .line 435
    sub-int/2addr v5, v2

    .line 436
    if-gt v1, v5, :cond_20

    .line 437
    .line 438
    goto/16 :goto_0

    .line 439
    .line 440
    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    .line 441
    .line 442
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 443
    .line 444
    .line 445
    throw p0

    .line 446
    :cond_21
    :try_start_11
    filled-new-array {v6}, [I

    .line 447
    .line 448
    .line 449
    move-result-object v3

    .line 450
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    check-cast v0, [Z

    .line 455
    .line 456
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->useSdfInBandVal:[Z
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 457
    .line 458
    sub-int/2addr v5, v2

    .line 459
    if-gt v1, v5, :cond_22

    .line 460
    .line 461
    goto/16 :goto_0

    .line 462
    .line 463
    :cond_22
    new-instance p0, Landroid/os/BadParcelableException;

    .line 464
    .line 465
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 466
    .line 467
    .line 468
    throw p0

    .line 469
    :catchall_0
    move-exception p0

    .line 470
    goto :goto_1

    .line 471
    :cond_23
    :try_start_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 472
    .line 473
    const-string v0, "Parcelable too small"

    .line 474
    .line 475
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 476
    .line 477
    .line 478
    throw p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 479
    :goto_1
    sub-int/2addr v5, v2

    .line 480
    if-le v1, v5, :cond_24

    .line 481
    .line 482
    new-instance p0, Landroid/os/BadParcelableException;

    .line 483
    .line 484
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 485
    .line 486
    .line 487
    throw p0

    .line 488
    :cond_24
    add-int/2addr v1, v2

    .line 489
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 490
    .line 491
    .line 492
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validClusterIdVals:Z

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 12
    .line 13
    .line 14
    iget-char v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->clusterIdBottomRangeVal:C

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-char v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->clusterIdTopRangeVal:C

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validIntfAddrVal:Z

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->intfAddrVal:[B

    .line 30
    .line 31
    const/4 v2, 0x6

    .line 32
    filled-new-array {v2}, [I

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validOuiVal:Z

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 42
    .line 43
    .line 44
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->ouiVal:I

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validRandomFactorForceVal:Z

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 52
    .line 53
    .line 54
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->randomFactorForceVal:B

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validHopCountForceVal:Z

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 62
    .line 63
    .line 64
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->hopCountForceVal:B

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 67
    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validDiscoveryChannelVal:Z

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->discoveryChannelMhzVal:[I

    .line 75
    .line 76
    const/4 v2, 0x3

    .line 77
    filled-new-array {v2}, [I

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    invoke-virtual {p1, v1, p2, v3}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 82
    .line 83
    .line 84
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validUseBeaconsInBandVal:Z

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->useBeaconsInBandVal:[Z

    .line 90
    .line 91
    filled-new-array {v2}, [I

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {p1, v1, p2, v3}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 96
    .line 97
    .line 98
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->validUseSdfInBandVal:Z

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 101
    .line 102
    .line 103
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDebugConfig;->useSdfInBandVal:[Z

    .line 104
    .line 105
    filled-new-array {v2}, [I

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    invoke-virtual {p1, p0, p2, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 117
    .line 118
    .line 119
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 120
    .line 121
    .line 122
    return-void
.end method
