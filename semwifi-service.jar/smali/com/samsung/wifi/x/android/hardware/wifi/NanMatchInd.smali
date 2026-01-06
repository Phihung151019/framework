.class public Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addr:[B

.field public discoverySessionId:B

.field public extendedServiceSpecificInfo:[B

.field public matchFilter:[B

.field public matchOccurredInBeaconFlag:Z

.field public outOfResourceFlag:Z

.field public peerCipherType:I

.field public peerId:I

.field public peerNira:Lcom/samsung/wifi/x/android/hardware/wifi/NanIdentityResolutionAttribute;

.field public peerPairingConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfig;

.field public peerRequiresRanging:Z

.field public peerRequiresSecurityEnabledInNdp:Z

.field public rangingIndicationType:I

.field public rangingMeasurementInMm:I

.field public rssiValue:B

.field public scid:[B

.field public serviceSpecificInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->discoverySessionId:B

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerId:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->matchOccurredInBeaconFlag:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->outOfResourceFlag:Z

    .line 12
    .line 13
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->rssiValue:B

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerRequiresRanging:Z

    .line 18
    .line 19
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->rangingMeasurementInMm:I

    .line 20
    .line 21
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->rangingIndicationType:I

    .line 22
    .line 23
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 3
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 4
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    :cond_1
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerPairingConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfig;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerNira:Lcom/samsung/wifi/x/android/hardware/wifi/NanIdentityResolutionAttribute;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->describeContents(Ljava/lang/Object;)I

    move-result p0

    or-int/2addr p0, v0

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
    if-lt v1, v2, :cond_23

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->discoverySessionId:B

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 45
    .line 46
    .line 47
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    sub-int/2addr v2, v0

    .line 49
    if-lt v2, v1, :cond_3

    .line 50
    .line 51
    sub-int/2addr v4, v1

    .line 52
    if-gt v0, v4, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 56
    .line 57
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0

    .line 61
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerId:I

    .line 66
    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 68
    .line 69
    .line 70
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    sub-int/2addr v2, v0

    .line 72
    if-lt v2, v1, :cond_5

    .line 73
    .line 74
    sub-int/2addr v4, v1

    .line 75
    if-gt v0, v4, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 79
    .line 80
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    throw p0

    .line 84
    :cond_5
    :try_start_3
    const-class v2, [B

    .line 85
    .line 86
    const/4 v5, 0x6

    .line 87
    filled-new-array {v5}, [I

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, [B

    .line 96
    .line 97
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->addr:[B

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->serviceSpecificInfo:[B

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 123
    .line 124
    .line 125
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    sub-int/2addr v2, v0

    .line 127
    if-lt v2, v1, :cond_9

    .line 128
    .line 129
    sub-int/2addr v4, v1

    .line 130
    if-gt v0, v4, :cond_8

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 134
    .line 135
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->extendedServiceSpecificInfo:[B

    .line 144
    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 146
    .line 147
    .line 148
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 149
    sub-int/2addr v2, v0

    .line 150
    if-lt v2, v1, :cond_b

    .line 151
    .line 152
    sub-int/2addr v4, v1

    .line 153
    if-gt v0, v4, :cond_a

    .line 154
    .line 155
    goto/16 :goto_0

    .line 156
    .line 157
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 158
    .line 159
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p0

    .line 163
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->matchFilter:[B

    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 170
    .line 171
    .line 172
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 173
    sub-int/2addr v2, v0

    .line 174
    if-lt v2, v1, :cond_d

    .line 175
    .line 176
    sub-int/2addr v4, v1

    .line 177
    if-gt v0, v4, :cond_c

    .line 178
    .line 179
    goto/16 :goto_0

    .line 180
    .line 181
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 182
    .line 183
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    throw p0

    .line 187
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->matchOccurredInBeaconFlag:Z

    .line 192
    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 194
    .line 195
    .line 196
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 197
    sub-int/2addr v2, v0

    .line 198
    if-lt v2, v1, :cond_f

    .line 199
    .line 200
    sub-int/2addr v4, v1

    .line 201
    if-gt v0, v4, :cond_e

    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 206
    .line 207
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0

    .line 211
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->outOfResourceFlag:Z

    .line 216
    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 218
    .line 219
    .line 220
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 221
    sub-int/2addr v2, v0

    .line 222
    if-lt v2, v1, :cond_11

    .line 223
    .line 224
    sub-int/2addr v4, v1

    .line 225
    if-gt v0, v4, :cond_10

    .line 226
    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 230
    .line 231
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 232
    .line 233
    .line 234
    throw p0

    .line 235
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->rssiValue:B

    .line 240
    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 242
    .line 243
    .line 244
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 245
    sub-int/2addr v2, v0

    .line 246
    if-lt v2, v1, :cond_13

    .line 247
    .line 248
    sub-int/2addr v4, v1

    .line 249
    if-gt v0, v4, :cond_12

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 254
    .line 255
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw p0

    .line 259
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerCipherType:I

    .line 264
    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 266
    .line 267
    .line 268
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 269
    sub-int/2addr v2, v0

    .line 270
    if-lt v2, v1, :cond_15

    .line 271
    .line 272
    sub-int/2addr v4, v1

    .line 273
    if-gt v0, v4, :cond_14

    .line 274
    .line 275
    goto/16 :goto_0

    .line 276
    .line 277
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 278
    .line 279
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p0

    .line 283
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 288
    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 290
    .line 291
    .line 292
    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 293
    sub-int/2addr v2, v0

    .line 294
    if-lt v2, v1, :cond_17

    .line 295
    .line 296
    sub-int/2addr v4, v1

    .line 297
    if-gt v0, v4, :cond_16

    .line 298
    .line 299
    goto/16 :goto_0

    .line 300
    .line 301
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 302
    .line 303
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    throw p0

    .line 307
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 308
    .line 309
    .line 310
    move-result v2

    .line 311
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerRequiresRanging:Z

    .line 312
    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 314
    .line 315
    .line 316
    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 317
    sub-int/2addr v2, v0

    .line 318
    if-lt v2, v1, :cond_19

    .line 319
    .line 320
    sub-int/2addr v4, v1

    .line 321
    if-gt v0, v4, :cond_18

    .line 322
    .line 323
    goto/16 :goto_0

    .line 324
    .line 325
    :cond_18
    new-instance p0, Landroid/os/BadParcelableException;

    .line 326
    .line 327
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    throw p0

    .line 331
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 332
    .line 333
    .line 334
    move-result v2

    .line 335
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->rangingMeasurementInMm:I

    .line 336
    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 338
    .line 339
    .line 340
    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 341
    sub-int/2addr v2, v0

    .line 342
    if-lt v2, v1, :cond_1b

    .line 343
    .line 344
    sub-int/2addr v4, v1

    .line 345
    if-gt v0, v4, :cond_1a

    .line 346
    .line 347
    goto/16 :goto_0

    .line 348
    .line 349
    :cond_1a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 350
    .line 351
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    throw p0

    .line 355
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 356
    .line 357
    .line 358
    move-result v2

    .line 359
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->rangingIndicationType:I

    .line 360
    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 362
    .line 363
    .line 364
    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 365
    sub-int/2addr v2, v0

    .line 366
    if-lt v2, v1, :cond_1d

    .line 367
    .line 368
    sub-int/2addr v4, v1

    .line 369
    if-gt v0, v4, :cond_1c

    .line 370
    .line 371
    goto/16 :goto_0

    .line 372
    .line 373
    :cond_1c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 374
    .line 375
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 376
    .line 377
    .line 378
    throw p0

    .line 379
    :cond_1d
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 380
    .line 381
    .line 382
    move-result-object v2

    .line 383
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->scid:[B

    .line 384
    .line 385
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 386
    .line 387
    .line 388
    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 389
    sub-int/2addr v2, v0

    .line 390
    if-lt v2, v1, :cond_1f

    .line 391
    .line 392
    sub-int/2addr v4, v1

    .line 393
    if-gt v0, v4, :cond_1e

    .line 394
    .line 395
    goto/16 :goto_0

    .line 396
    .line 397
    :cond_1e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 398
    .line 399
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    throw p0

    .line 403
    :cond_1f
    :try_start_10
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 404
    .line 405
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 406
    .line 407
    .line 408
    move-result-object v2

    .line 409
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfig;

    .line 410
    .line 411
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerPairingConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfig;

    .line 412
    .line 413
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 414
    .line 415
    .line 416
    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 417
    sub-int/2addr v2, v0

    .line 418
    if-lt v2, v1, :cond_21

    .line 419
    .line 420
    sub-int/2addr v4, v1

    .line 421
    if-gt v0, v4, :cond_20

    .line 422
    .line 423
    goto/16 :goto_0

    .line 424
    .line 425
    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    .line 426
    .line 427
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 428
    .line 429
    .line 430
    throw p0

    .line 431
    :cond_21
    :try_start_11
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanIdentityResolutionAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 432
    .line 433
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanIdentityResolutionAttribute;

    .line 438
    .line 439
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerNira:Lcom/samsung/wifi/x/android/hardware/wifi/NanIdentityResolutionAttribute;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 440
    .line 441
    sub-int/2addr v4, v1

    .line 442
    if-gt v0, v4, :cond_22

    .line 443
    .line 444
    goto/16 :goto_0

    .line 445
    .line 446
    :cond_22
    new-instance p0, Landroid/os/BadParcelableException;

    .line 447
    .line 448
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    throw p0

    .line 452
    :catchall_0
    move-exception p0

    .line 453
    goto :goto_1

    .line 454
    :cond_23
    :try_start_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 455
    .line 456
    const-string v2, "Parcelable too small"

    .line 457
    .line 458
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 459
    .line 460
    .line 461
    throw p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 462
    :goto_1
    sub-int/2addr v4, v1

    .line 463
    if-le v0, v4, :cond_24

    .line 464
    .line 465
    new-instance p0, Landroid/os/BadParcelableException;

    .line 466
    .line 467
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw p0

    .line 471
    :cond_24
    add-int/2addr v0, v1

    .line 472
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 473
    .line 474
    .line 475
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
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->discoverySessionId:B

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerId:I

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->addr:[B

    .line 20
    .line 21
    const/4 v2, 0x6

    .line 22
    filled-new-array {v2}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->serviceSpecificInfo:[B

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->extendedServiceSpecificInfo:[B

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->matchFilter:[B

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 42
    .line 43
    .line 44
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->matchOccurredInBeaconFlag:Z

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 47
    .line 48
    .line 49
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->outOfResourceFlag:Z

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 52
    .line 53
    .line 54
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->rssiValue:B

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    .line 58
    .line 59
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerCipherType:I

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerRequiresSecurityEnabledInNdp:Z

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 67
    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerRequiresRanging:Z

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 72
    .line 73
    .line 74
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->rangingMeasurementInMm:I

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    .line 78
    .line 79
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->rangingIndicationType:I

    .line 80
    .line 81
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->scid:[B

    .line 85
    .line 86
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerPairingConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfig;

    .line 90
    .line 91
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 92
    .line 93
    .line 94
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanMatchInd;->peerNira:Lcom/samsung/wifi/x/android/hardware/wifi/NanIdentityResolutionAttribute;

    .line 95
    .line 96
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 104
    .line 105
    .line 106
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 107
    .line 108
    .line 109
    return-void
.end method
