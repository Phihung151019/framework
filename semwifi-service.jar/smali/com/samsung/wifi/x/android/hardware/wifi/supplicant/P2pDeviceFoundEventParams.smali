.class public Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public configMethods:I

.field public deviceCapabilities:B

.field public deviceName:Ljava/lang/String;

.field public groupCapabilities:I

.field public p2pDeviceAddress:[B

.field public primaryDeviceType:[B

.field public srcAddress:[B

.field public vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

.field public vendorElemBytes:[B

.field public wfdDeviceInfo:[B

.field public wfdR2DeviceInfo:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->configMethods:I

    .line 6
    .line 7
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->deviceCapabilities:B

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->groupCapabilities:I

    .line 10
    .line 11
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 3
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 4
    invoke-direct {p0, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 5
    :cond_2
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_3

    .line 6
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->describeContents(Ljava/lang/Object;)I

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
    .locals 7

    .line 1
    const-class v0, [B

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
    if-lt v2, v3, :cond_17

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
    const/4 v3, 0x6

    .line 41
    :try_start_1
    filled-new-array {v3}, [I

    .line 42
    .line 43
    .line 44
    move-result-object v6

    .line 45
    invoke-virtual {p1, v0, v6}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    check-cast v6, [B

    .line 50
    .line 51
    iput-object v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->srcAddress:[B

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 54
    .line 55
    .line 56
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    sub-int/2addr v6, v1

    .line 58
    if-lt v6, v2, :cond_3

    .line 59
    .line 60
    sub-int/2addr v5, v2

    .line 61
    if-gt v1, v5, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 65
    .line 66
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p0

    .line 70
    :cond_3
    :try_start_2
    filled-new-array {v3}, [I

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, [B

    .line 79
    .line 80
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->p2pDeviceAddress:[B

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 83
    .line 84
    .line 85
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    sub-int/2addr v0, v1

    .line 87
    if-lt v0, v2, :cond_5

    .line 88
    .line 89
    sub-int/2addr v5, v2

    .line 90
    if-gt v1, v5, :cond_4

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 94
    .line 95
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    throw p0

    .line 99
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->primaryDeviceType:[B

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 106
    .line 107
    .line 108
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    sub-int/2addr v0, v1

    .line 110
    if-lt v0, v2, :cond_7

    .line 111
    .line 112
    sub-int/2addr v5, v2

    .line 113
    if-gt v1, v5, :cond_6

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 117
    .line 118
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->deviceName:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 129
    .line 130
    .line 131
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    sub-int/2addr v0, v1

    .line 133
    if-lt v0, v2, :cond_9

    .line 134
    .line 135
    sub-int/2addr v5, v2

    .line 136
    if-gt v1, v5, :cond_8

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 140
    .line 141
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->configMethods:I

    .line 150
    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 152
    .line 153
    .line 154
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 155
    sub-int/2addr v0, v1

    .line 156
    if-lt v0, v2, :cond_b

    .line 157
    .line 158
    sub-int/2addr v5, v2

    .line 159
    if-gt v1, v5, :cond_a

    .line 160
    .line 161
    goto/16 :goto_0

    .line 162
    .line 163
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 164
    .line 165
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    throw p0

    .line 169
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->deviceCapabilities:B

    .line 174
    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 176
    .line 177
    .line 178
    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 179
    sub-int/2addr v0, v1

    .line 180
    if-lt v0, v2, :cond_d

    .line 181
    .line 182
    sub-int/2addr v5, v2

    .line 183
    if-gt v1, v5, :cond_c

    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 188
    .line 189
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw p0

    .line 193
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->groupCapabilities:I

    .line 198
    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 200
    .line 201
    .line 202
    move-result v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 203
    sub-int/2addr v0, v1

    .line 204
    if-lt v0, v2, :cond_f

    .line 205
    .line 206
    sub-int/2addr v5, v2

    .line 207
    if-gt v1, v5, :cond_e

    .line 208
    .line 209
    goto/16 :goto_0

    .line 210
    .line 211
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 212
    .line 213
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw p0

    .line 217
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->wfdDeviceInfo:[B

    .line 222
    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 224
    .line 225
    .line 226
    move-result v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 227
    sub-int/2addr v0, v1

    .line 228
    if-lt v0, v2, :cond_11

    .line 229
    .line 230
    sub-int/2addr v5, v2

    .line 231
    if-gt v1, v5, :cond_10

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 236
    .line 237
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    throw p0

    .line 241
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->wfdR2DeviceInfo:[B

    .line 246
    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 248
    .line 249
    .line 250
    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 251
    sub-int/2addr v0, v1

    .line 252
    if-lt v0, v2, :cond_13

    .line 253
    .line 254
    sub-int/2addr v5, v2

    .line 255
    if-gt v1, v5, :cond_12

    .line 256
    .line 257
    goto/16 :goto_0

    .line 258
    .line 259
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 260
    .line 261
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    throw p0

    .line 265
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 266
    .line 267
    .line 268
    move-result-object v0

    .line 269
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->vendorElemBytes:[B

    .line 270
    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 272
    .line 273
    .line 274
    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 275
    sub-int/2addr v0, v1

    .line 276
    if-lt v0, v2, :cond_15

    .line 277
    .line 278
    sub-int/2addr v5, v2

    .line 279
    if-gt v1, v5, :cond_14

    .line 280
    .line 281
    goto/16 :goto_0

    .line 282
    .line 283
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 284
    .line 285
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p0

    .line 289
    :cond_15
    :try_start_b
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 290
    .line 291
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 292
    .line 293
    .line 294
    move-result-object v0

    .line 295
    check-cast v0, [Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    .line 296
    .line 297
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 298
    .line 299
    sub-int/2addr v5, v2

    .line 300
    if-gt v1, v5, :cond_16

    .line 301
    .line 302
    goto/16 :goto_0

    .line 303
    .line 304
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 305
    .line 306
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    throw p0

    .line 310
    :catchall_0
    move-exception p0

    .line 311
    goto :goto_1

    .line 312
    :cond_17
    :try_start_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 313
    .line 314
    const-string v0, "Parcelable too small"

    .line 315
    .line 316
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 317
    .line 318
    .line 319
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 320
    :goto_1
    sub-int/2addr v5, v2

    .line 321
    if-le v1, v5, :cond_18

    .line 322
    .line 323
    new-instance p0, Landroid/os/BadParcelableException;

    .line 324
    .line 325
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    throw p0

    .line 329
    :cond_18
    add-int/2addr v1, v2

    .line 330
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 331
    .line 332
    .line 333
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
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->srcAddress:[B

    .line 10
    .line 11
    const/4 v2, 0x6

    .line 12
    filled-new-array {v2}, [I

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-virtual {p1, v1, p2, v3}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->p2pDeviceAddress:[B

    .line 20
    .line 21
    filled-new-array {v2}, [I

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->primaryDeviceType:[B

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->deviceName:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->configMethods:I

    .line 39
    .line 40
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    .line 42
    .line 43
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->deviceCapabilities:B

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 46
    .line 47
    .line 48
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->groupCapabilities:I

    .line 49
    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->wfdDeviceInfo:[B

    .line 54
    .line 55
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->wfdR2DeviceInfo:[B

    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->vendorElemBytes:[B

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 66
    .line 67
    .line 68
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pDeviceFoundEventParams;->vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    .line 69
    .line 70
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-static {p1, v0, p0, v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombination$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;IIII)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
