.class public Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;

.field public disableDiscoveryAddressChangeIndication:Z

.field public disableJoinedClusterIndication:Z

.field public disableStartedClusterIndication:Z

.field public includePublishServiceIdsInBeacon:Z

.field public includeSubscribeServiceIdsInBeacon:Z

.field public macAddressRandomizationIntervalSec:I

.field public masterPref:B

.field public numberOfPublishServiceIdsInBeacon:B

.field public numberOfSubscribeServiceIdsInBeacon:B

.field public rssiWindowSize:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->masterPref:B

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->disableStartedClusterIndication:Z

    .line 10
    .line 11
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->disableJoinedClusterIndication:Z

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    .line 14
    .line 15
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    .line 18
    .line 19
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    .line 20
    .line 21
    iput-char v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->rssiWindowSize:C

    .line 22
    .line 23
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    .line 24
    .line 25
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
    invoke-direct {p0, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->describeContents(Ljava/lang/Object;)I

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
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->describeContents(Ljava/lang/Object;)I

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
    if-lt v1, v2, :cond_17

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
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->masterPref:B

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->disableStartedClusterIndication:Z

    .line 89
    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 91
    .line 92
    .line 93
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 94
    sub-int/2addr v2, v0

    .line 95
    if-lt v2, v1, :cond_7

    .line 96
    .line 97
    sub-int/2addr v4, v1

    .line 98
    if-gt v0, v4, :cond_6

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 102
    .line 103
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p0

    .line 107
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->disableJoinedClusterIndication:Z

    .line 112
    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 114
    .line 115
    .line 116
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 117
    sub-int/2addr v2, v0

    .line 118
    if-lt v2, v1, :cond_9

    .line 119
    .line 120
    sub-int/2addr v4, v1

    .line 121
    if-gt v0, v4, :cond_8

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 125
    .line 126
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    throw p0

    .line 130
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    .line 135
    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 137
    .line 138
    .line 139
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 140
    sub-int/2addr v2, v0

    .line 141
    if-lt v2, v1, :cond_b

    .line 142
    .line 143
    sub-int/2addr v4, v1

    .line 144
    if-gt v0, v4, :cond_a

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 148
    .line 149
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    throw p0

    .line 153
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    .line 158
    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 160
    .line 161
    .line 162
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 163
    sub-int/2addr v2, v0

    .line 164
    if-lt v2, v1, :cond_d

    .line 165
    .line 166
    sub-int/2addr v4, v1

    .line 167
    if-gt v0, v4, :cond_c

    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 172
    .line 173
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    throw p0

    .line 177
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 184
    .line 185
    .line 186
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 187
    sub-int/2addr v2, v0

    .line 188
    if-lt v2, v1, :cond_f

    .line 189
    .line 190
    sub-int/2addr v4, v1

    .line 191
    if-gt v0, v4, :cond_e

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 196
    .line 197
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    throw p0

    .line 201
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 202
    .line 203
    .line 204
    move-result v2

    .line 205
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    .line 206
    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 208
    .line 209
    .line 210
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 211
    sub-int/2addr v2, v0

    .line 212
    if-lt v2, v1, :cond_11

    .line 213
    .line 214
    sub-int/2addr v4, v1

    .line 215
    if-gt v0, v4, :cond_10

    .line 216
    .line 217
    goto/16 :goto_0

    .line 218
    .line 219
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 220
    .line 221
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p0

    .line 225
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    int-to-char v2, v2

    .line 230
    iput-char v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->rssiWindowSize:C

    .line 231
    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 233
    .line 234
    .line 235
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 236
    sub-int/2addr v2, v0

    .line 237
    if-lt v2, v1, :cond_13

    .line 238
    .line 239
    sub-int/2addr v4, v1

    .line 240
    if-gt v0, v4, :cond_12

    .line 241
    .line 242
    goto/16 :goto_0

    .line 243
    .line 244
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 245
    .line 246
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    throw p0

    .line 250
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 251
    .line 252
    .line 253
    move-result v2

    .line 254
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    .line 255
    .line 256
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 257
    .line 258
    .line 259
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 260
    sub-int/2addr v2, v0

    .line 261
    if-lt v2, v1, :cond_15

    .line 262
    .line 263
    sub-int/2addr v4, v1

    .line 264
    if-gt v0, v4, :cond_14

    .line 265
    .line 266
    goto/16 :goto_0

    .line 267
    .line 268
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 269
    .line 270
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p0

    .line 274
    :cond_15
    :try_start_b
    const-class v2, [Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;

    .line 275
    .line 276
    sget-object v5, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 277
    .line 278
    const/4 v6, 0x3

    .line 279
    filled-new-array {v6}, [I

    .line 280
    .line 281
    .line 282
    move-result-object v6

    .line 283
    invoke-virtual {p1, v2, v5, v6}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;Landroid/os/Parcelable$Creator;[I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v2

    .line 287
    check-cast v2, [Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;

    .line 288
    .line 289
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 290
    .line 291
    sub-int/2addr v4, v1

    .line 292
    if-gt v0, v4, :cond_16

    .line 293
    .line 294
    goto/16 :goto_0

    .line 295
    .line 296
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 297
    .line 298
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 299
    .line 300
    .line 301
    throw p0

    .line 302
    :catchall_0
    move-exception p0

    .line 303
    goto :goto_1

    .line 304
    :cond_17
    :try_start_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 305
    .line 306
    const-string v2, "Parcelable too small"

    .line 307
    .line 308
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 309
    .line 310
    .line 311
    throw p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 312
    :goto_1
    sub-int/2addr v4, v1

    .line 313
    if-le v0, v4, :cond_18

    .line 314
    .line 315
    new-instance p0, Landroid/os/BadParcelableException;

    .line 316
    .line 317
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 318
    .line 319
    .line 320
    throw p0

    .line 321
    :cond_18
    add-int/2addr v0, v1

    .line 322
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 323
    .line 324
    .line 325
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

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
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->masterPref:B

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    .line 13
    .line 14
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->disableDiscoveryAddressChangeIndication:Z

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 17
    .line 18
    .line 19
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->disableStartedClusterIndication:Z

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->disableJoinedClusterIndication:Z

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->includePublishServiceIdsInBeacon:Z

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 32
    .line 33
    .line 34
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->numberOfPublishServiceIdsInBeacon:B

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    .line 38
    .line 39
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->includeSubscribeServiceIdsInBeacon:Z

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 42
    .line 43
    .line 44
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->numberOfSubscribeServiceIdsInBeacon:B

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    .line 48
    .line 49
    iget-char v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->rssiWindowSize:C

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->macAddressRandomizationIntervalSec:I

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    .line 58
    .line 59
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanConfigRequest;->bandSpecificConfig:[Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;

    .line 60
    .line 61
    const/4 v1, 0x3

    .line 62
    filled-new-array {v1}, [I

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {p1, p0, p2, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-static {p1, v0, p0, v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombination$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;IIII)V

    .line 74
    .line 75
    .line 76
    return-void
.end method
