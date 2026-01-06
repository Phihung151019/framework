.class public Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public frequencyMHz:I

.field public goDeviceAddress:[B

.field public goInterfaceAddress:[B

.field public groupInterfaceName:Ljava/lang/String;

.field public isGroupOwner:Z

.field public isP2pClientEapolIpAddressInfoPresent:Z

.field public isPersistent:Z

.field public p2pClientIpInfo:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;

.field public passphrase:Ljava/lang/String;

.field public psk:[B

.field public ssid:[B

.field public vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->isGroupOwner:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->frequencyMHz:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->isPersistent:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->isP2pClientEapolIpAddressInfoPresent:Z

    .line 12
    .line 13
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 3
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 4
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 5
    invoke-direct {p0, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 6
    :cond_2
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_3

    .line 7
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->p2pClientIpInfo:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->describeContents(Ljava/lang/Object;)I

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
    if-lt v2, v3, :cond_19

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iput-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->groupInterfaceName:Ljava/lang/String;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    iput-boolean v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->isGroupOwner:Z

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 70
    .line 71
    .line 72
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    sub-int/2addr v3, v1

    .line 74
    if-lt v3, v2, :cond_5

    .line 75
    .line 76
    sub-int/2addr v5, v2

    .line 77
    if-gt v1, v5, :cond_4

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 81
    .line 82
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iput-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->ssid:[B

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 93
    .line 94
    .line 95
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    sub-int/2addr v3, v1

    .line 97
    if-lt v3, v2, :cond_7

    .line 98
    .line 99
    sub-int/2addr v5, v2

    .line 100
    if-gt v1, v5, :cond_6

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 104
    .line 105
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    iput v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->frequencyMHz:I

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 116
    .line 117
    .line 118
    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    sub-int/2addr v3, v1

    .line 120
    if-lt v3, v2, :cond_9

    .line 121
    .line 122
    sub-int/2addr v5, v2

    .line 123
    if-gt v1, v5, :cond_8

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 127
    .line 128
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p0

    .line 132
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iput-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->psk:[B

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 139
    .line 140
    .line 141
    move-result v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    sub-int/2addr v3, v1

    .line 143
    if-lt v3, v2, :cond_b

    .line 144
    .line 145
    sub-int/2addr v5, v2

    .line 146
    if-gt v1, v5, :cond_a

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 150
    .line 151
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    iput-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->passphrase:Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 162
    .line 163
    .line 164
    move-result v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 165
    sub-int/2addr v3, v1

    .line 166
    if-lt v3, v2, :cond_d

    .line 167
    .line 168
    sub-int/2addr v5, v2

    .line 169
    if-gt v1, v5, :cond_c

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 174
    .line 175
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p0

    .line 179
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 180
    .line 181
    .line 182
    move-result v3

    .line 183
    iput-boolean v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->isPersistent:Z

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 186
    .line 187
    .line 188
    move-result v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 189
    sub-int/2addr v3, v1

    .line 190
    if-lt v3, v2, :cond_f

    .line 191
    .line 192
    sub-int/2addr v5, v2

    .line 193
    if-gt v1, v5, :cond_e

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 198
    .line 199
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p0

    .line 203
    :cond_f
    const/4 v3, 0x6

    .line 204
    :try_start_8
    filled-new-array {v3}, [I

    .line 205
    .line 206
    .line 207
    move-result-object v6

    .line 208
    invoke-virtual {p1, v0, v6}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v6

    .line 212
    check-cast v6, [B

    .line 213
    .line 214
    iput-object v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->goDeviceAddress:[B

    .line 215
    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 217
    .line 218
    .line 219
    move-result v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 220
    sub-int/2addr v6, v1

    .line 221
    if-lt v6, v2, :cond_11

    .line 222
    .line 223
    sub-int/2addr v5, v2

    .line 224
    if-gt v1, v5, :cond_10

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 229
    .line 230
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 231
    .line 232
    .line 233
    throw p0

    .line 234
    :cond_11
    :try_start_9
    filled-new-array {v3}, [I

    .line 235
    .line 236
    .line 237
    move-result-object v3

    .line 238
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    check-cast v0, [B

    .line 243
    .line 244
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->goInterfaceAddress:[B

    .line 245
    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 247
    .line 248
    .line 249
    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 250
    sub-int/2addr v0, v1

    .line 251
    if-lt v0, v2, :cond_13

    .line 252
    .line 253
    sub-int/2addr v5, v2

    .line 254
    if-gt v1, v5, :cond_12

    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 259
    .line 260
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p0

    .line 264
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 265
    .line 266
    .line 267
    move-result v0

    .line 268
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->isP2pClientEapolIpAddressInfoPresent:Z

    .line 269
    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 271
    .line 272
    .line 273
    move-result v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 274
    sub-int/2addr v0, v1

    .line 275
    if-lt v0, v2, :cond_15

    .line 276
    .line 277
    sub-int/2addr v5, v2

    .line 278
    if-gt v1, v5, :cond_14

    .line 279
    .line 280
    goto/16 :goto_0

    .line 281
    .line 282
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 283
    .line 284
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    throw p0

    .line 288
    :cond_15
    :try_start_b
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 289
    .line 290
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 291
    .line 292
    .line 293
    move-result-object v0

    .line 294
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;

    .line 295
    .line 296
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->p2pClientIpInfo:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;

    .line 297
    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 299
    .line 300
    .line 301
    move-result v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 302
    sub-int/2addr v0, v1

    .line 303
    if-lt v0, v2, :cond_17

    .line 304
    .line 305
    sub-int/2addr v5, v2

    .line 306
    if-gt v1, v5, :cond_16

    .line 307
    .line 308
    goto/16 :goto_0

    .line 309
    .line 310
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 311
    .line 312
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 313
    .line 314
    .line 315
    throw p0

    .line 316
    :cond_17
    :try_start_c
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 317
    .line 318
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    move-result-object v0

    .line 322
    check-cast v0, [Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    .line 323
    .line 324
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 325
    .line 326
    sub-int/2addr v5, v2

    .line 327
    if-gt v1, v5, :cond_18

    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_18
    new-instance p0, Landroid/os/BadParcelableException;

    .line 332
    .line 333
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw p0

    .line 337
    :catchall_0
    move-exception p0

    .line 338
    goto :goto_1

    .line 339
    :cond_19
    :try_start_d
    new-instance p0, Landroid/os/BadParcelableException;

    .line 340
    .line 341
    const-string v0, "Parcelable too small"

    .line 342
    .line 343
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 347
    :goto_1
    sub-int/2addr v5, v2

    .line 348
    if-le v1, v5, :cond_1a

    .line 349
    .line 350
    new-instance p0, Landroid/os/BadParcelableException;

    .line 351
    .line 352
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 353
    .line 354
    .line 355
    throw p0

    .line 356
    :cond_1a
    add-int/2addr v1, v2

    .line 357
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 358
    .line 359
    .line 360
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
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->groupInterfaceName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->isGroupOwner:Z

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->ssid:[B

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->frequencyMHz:I

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->psk:[B

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->passphrase:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->isPersistent:Z

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->goDeviceAddress:[B

    .line 45
    .line 46
    const/4 v2, 0x6

    .line 47
    filled-new-array {v2}, [I

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {p1, v1, p2, v3}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->goInterfaceAddress:[B

    .line 55
    .line 56
    filled-new-array {v2}, [I

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 61
    .line 62
    .line 63
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->isP2pClientEapolIpAddressInfoPresent:Z

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->p2pClientIpInfo:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pClientEapolIpAddressInfo;

    .line 69
    .line 70
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 71
    .line 72
    .line 73
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pGroupStartedEventParams;->vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    .line 74
    .line 75
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-static {p1, v0, p0, v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombination$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;IIII)V

    .line 83
    .line 84
    .line 85
    return-void
.end method
