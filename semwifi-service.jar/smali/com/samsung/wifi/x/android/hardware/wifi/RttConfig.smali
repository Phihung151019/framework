.class public Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addr:[B

.field public burstDuration:I

.field public burstPeriod:I

.field public bw:I

.field public channel:Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelInfo;

.field public mustRequestLci:Z

.field public mustRequestLcr:Z

.field public numBurst:I

.field public numFramesPerBurst:I

.field public numRetriesPerFtmr:I

.field public numRetriesPerRttFrame:I

.field public peer:I

.field public preamble:I

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->burstPeriod:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->numBurst:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->numFramesPerBurst:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->numRetriesPerRttFrame:I

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->numRetriesPerFtmr:I

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->mustRequestLci:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->mustRequestLcr:Z

    .line 18
    .line 19
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->burstDuration:I

    .line 20
    .line 21
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 2
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 3
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelInfo;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->describeContents(Ljava/lang/Object;)I

    move-result p0

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
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x4

    .line 10
    const-string v3, "Overflow in the size of parcelable"

    .line 11
    .line 12
    const v4, 0x7fffffff

    .line 13
    .line 14
    .line 15
    if-lt v1, v2, :cond_1d

    .line 16
    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 18
    .line 19
    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    sub-int/2addr v2, v0

    .line 22
    if-lt v2, v1, :cond_1

    .line 23
    .line 24
    sub-int/2addr v4, v1

    .line 25
    if-gt v0, v4, :cond_0

    .line 26
    .line 27
    :goto_0
    add-int/2addr v0, v1

    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    new-instance p0, Landroid/os/BadParcelableException;

    .line 33
    .line 34
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :cond_1
    :try_start_1
    const-class v2, [B

    .line 39
    .line 40
    const/4 v5, 0x6

    .line 41
    filled-new-array {v5}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    check-cast v2, [B

    .line 50
    .line 51
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->addr:[B

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 54
    .line 55
    .line 56
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    sub-int/2addr v2, v0

    .line 58
    if-lt v2, v1, :cond_3

    .line 59
    .line 60
    sub-int/2addr v4, v1

    .line 61
    if-gt v0, v4, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 65
    .line 66
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->type:I

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 77
    .line 78
    .line 79
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    sub-int/2addr v2, v0

    .line 81
    if-lt v2, v1, :cond_5

    .line 82
    .line 83
    sub-int/2addr v4, v1

    .line 84
    if-gt v0, v4, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 88
    .line 89
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw p0

    .line 93
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->peer:I

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 100
    .line 101
    .line 102
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    sub-int/2addr v2, v0

    .line 104
    if-lt v2, v1, :cond_7

    .line 105
    .line 106
    sub-int/2addr v4, v1

    .line 107
    if-gt v0, v4, :cond_6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 111
    .line 112
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_7
    :try_start_4
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 117
    .line 118
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v2

    .line 122
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelInfo;

    .line 123
    .line 124
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelInfo;

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 127
    .line 128
    .line 129
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 130
    sub-int/2addr v2, v0

    .line 131
    if-lt v2, v1, :cond_9

    .line 132
    .line 133
    sub-int/2addr v4, v1

    .line 134
    if-gt v0, v4, :cond_8

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 138
    .line 139
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    throw p0

    .line 143
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->burstPeriod:I

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 150
    .line 151
    .line 152
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 153
    sub-int/2addr v2, v0

    .line 154
    if-lt v2, v1, :cond_b

    .line 155
    .line 156
    sub-int/2addr v4, v1

    .line 157
    if-gt v0, v4, :cond_a

    .line 158
    .line 159
    goto/16 :goto_0

    .line 160
    .line 161
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 162
    .line 163
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw p0

    .line 167
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->numBurst:I

    .line 172
    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 174
    .line 175
    .line 176
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 177
    sub-int/2addr v2, v0

    .line 178
    if-lt v2, v1, :cond_d

    .line 179
    .line 180
    sub-int/2addr v4, v1

    .line 181
    if-gt v0, v4, :cond_c

    .line 182
    .line 183
    goto/16 :goto_0

    .line 184
    .line 185
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 186
    .line 187
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

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
    move-result v2

    .line 195
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->numFramesPerBurst:I

    .line 196
    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 198
    .line 199
    .line 200
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 201
    sub-int/2addr v2, v0

    .line 202
    if-lt v2, v1, :cond_f

    .line 203
    .line 204
    sub-int/2addr v4, v1

    .line 205
    if-gt v0, v4, :cond_e

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 210
    .line 211
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p0

    .line 215
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->numRetriesPerRttFrame:I

    .line 220
    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 222
    .line 223
    .line 224
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 225
    sub-int/2addr v2, v0

    .line 226
    if-lt v2, v1, :cond_11

    .line 227
    .line 228
    sub-int/2addr v4, v1

    .line 229
    if-gt v0, v4, :cond_10

    .line 230
    .line 231
    goto/16 :goto_0

    .line 232
    .line 233
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 234
    .line 235
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 236
    .line 237
    .line 238
    throw p0

    .line 239
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 240
    .line 241
    .line 242
    move-result v2

    .line 243
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->numRetriesPerFtmr:I

    .line 244
    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 246
    .line 247
    .line 248
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 249
    sub-int/2addr v2, v0

    .line 250
    if-lt v2, v1, :cond_13

    .line 251
    .line 252
    sub-int/2addr v4, v1

    .line 253
    if-gt v0, v4, :cond_12

    .line 254
    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 258
    .line 259
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

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
    move-result v2

    .line 267
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->mustRequestLci:Z

    .line 268
    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 270
    .line 271
    .line 272
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 273
    sub-int/2addr v2, v0

    .line 274
    if-lt v2, v1, :cond_15

    .line 275
    .line 276
    sub-int/2addr v4, v1

    .line 277
    if-gt v0, v4, :cond_14

    .line 278
    .line 279
    goto/16 :goto_0

    .line 280
    .line 281
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 282
    .line 283
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw p0

    .line 287
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->mustRequestLcr:Z

    .line 292
    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 294
    .line 295
    .line 296
    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 297
    sub-int/2addr v2, v0

    .line 298
    if-lt v2, v1, :cond_17

    .line 299
    .line 300
    sub-int/2addr v4, v1

    .line 301
    if-gt v0, v4, :cond_16

    .line 302
    .line 303
    goto/16 :goto_0

    .line 304
    .line 305
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 306
    .line 307
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    throw p0

    .line 311
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 312
    .line 313
    .line 314
    move-result v2

    .line 315
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->burstDuration:I

    .line 316
    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 318
    .line 319
    .line 320
    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 321
    sub-int/2addr v2, v0

    .line 322
    if-lt v2, v1, :cond_19

    .line 323
    .line 324
    sub-int/2addr v4, v1

    .line 325
    if-gt v0, v4, :cond_18

    .line 326
    .line 327
    goto/16 :goto_0

    .line 328
    .line 329
    :cond_18
    new-instance p0, Landroid/os/BadParcelableException;

    .line 330
    .line 331
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    throw p0

    .line 335
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 336
    .line 337
    .line 338
    move-result v2

    .line 339
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->preamble:I

    .line 340
    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 342
    .line 343
    .line 344
    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 345
    sub-int/2addr v2, v0

    .line 346
    if-lt v2, v1, :cond_1b

    .line 347
    .line 348
    sub-int/2addr v4, v1

    .line 349
    if-gt v0, v4, :cond_1a

    .line 350
    .line 351
    goto/16 :goto_0

    .line 352
    .line 353
    :cond_1a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 354
    .line 355
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    throw p0

    .line 359
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 360
    .line 361
    .line 362
    move-result v2

    .line 363
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->bw:I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 364
    .line 365
    sub-int/2addr v4, v1

    .line 366
    if-gt v0, v4, :cond_1c

    .line 367
    .line 368
    goto/16 :goto_0

    .line 369
    .line 370
    :cond_1c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 371
    .line 372
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 373
    .line 374
    .line 375
    throw p0

    .line 376
    :catchall_0
    move-exception p0

    .line 377
    goto :goto_1

    .line 378
    :cond_1d
    :try_start_f
    new-instance p0, Landroid/os/BadParcelableException;

    .line 379
    .line 380
    const-string v2, "Parcelable too small"

    .line 381
    .line 382
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    throw p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 386
    :goto_1
    sub-int/2addr v4, v1

    .line 387
    if-le v0, v4, :cond_1e

    .line 388
    .line 389
    new-instance p0, Landroid/os/BadParcelableException;

    .line 390
    .line 391
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw p0

    .line 395
    :cond_1e
    add-int/2addr v0, v1

    .line 396
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 397
    .line 398
    .line 399
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

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
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->addr:[B

    .line 10
    .line 11
    const/4 v2, 0x6

    .line 12
    filled-new-array {v2}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v2

    .line 16
    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->type:I

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->peer:I

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->channel:Lcom/samsung/wifi/x/android/hardware/wifi/WifiChannelInfo;

    .line 30
    .line 31
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 32
    .line 33
    .line 34
    iget p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->burstPeriod:I

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->numBurst:I

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->numFramesPerBurst:I

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    .line 48
    .line 49
    iget p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->numRetriesPerRttFrame:I

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->numRetriesPerFtmr:I

    .line 55
    .line 56
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    .line 58
    .line 59
    iget-boolean p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->mustRequestLci:Z

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 62
    .line 63
    .line 64
    iget-boolean p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->mustRequestLcr:Z

    .line 65
    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 67
    .line 68
    .line 69
    iget p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->burstDuration:I

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    .line 73
    .line 74
    iget p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->preamble:I

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttConfig;->bw:I

    .line 80
    .line 81
    invoke-static {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/AvailableAfcChannelInfo$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 86
    .line 87
    .line 88
    return-void
.end method
