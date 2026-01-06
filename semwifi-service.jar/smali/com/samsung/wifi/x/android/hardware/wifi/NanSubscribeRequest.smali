.class public Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;

.field public identityKey:[B

.field public intfAddr:[Lcom/samsung/wifi/x/android/hardware/wifi/MacAddress;

.field public isSsiRequiredForMatch:Z

.field public pairingConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfig;

.field public shouldUseSrf:Z

.field public srfRespondIfInAddressSet:Z

.field public srfType:I

.field public subscribeType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->shouldUseSrf:Z

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    .line 10
    .line 11
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 4
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 5
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 6
    invoke-direct {p0, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 7
    :cond_2
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_3

    .line 8
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
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->intfAddr:[Lcom/samsung/wifi/x/android/hardware/wifi/MacAddress;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->pairingConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfig;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->describeContents(Ljava/lang/Object;)I

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
    if-lt v1, v2, :cond_13

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
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 39
    .line 40
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;

    .line 45
    .line 46
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 49
    .line 50
    .line 51
    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 52
    sub-int/2addr v2, v0

    .line 53
    if-lt v2, v1, :cond_3

    .line 54
    .line 55
    sub-int/2addr v4, v1

    .line 56
    if-gt v0, v4, :cond_2

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 60
    .line 61
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p0

    .line 65
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->subscribeType:I

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 72
    .line 73
    .line 74
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 75
    sub-int/2addr v2, v0

    .line 76
    if-lt v2, v1, :cond_5

    .line 77
    .line 78
    sub-int/2addr v4, v1

    .line 79
    if-gt v0, v4, :cond_4

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 83
    .line 84
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->srfType:I

    .line 93
    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 95
    .line 96
    .line 97
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 98
    sub-int/2addr v2, v0

    .line 99
    if-lt v2, v1, :cond_7

    .line 100
    .line 101
    sub-int/2addr v4, v1

    .line 102
    if-gt v0, v4, :cond_6

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 106
    .line 107
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

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
    move-result v2

    .line 115
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    .line 116
    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 118
    .line 119
    .line 120
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 121
    sub-int/2addr v2, v0

    .line 122
    if-lt v2, v1, :cond_9

    .line 123
    .line 124
    sub-int/2addr v4, v1

    .line 125
    if-gt v0, v4, :cond_8

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 129
    .line 130
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw p0

    .line 134
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 135
    .line 136
    .line 137
    move-result v2

    .line 138
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->shouldUseSrf:Z

    .line 139
    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 141
    .line 142
    .line 143
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 144
    sub-int/2addr v2, v0

    .line 145
    if-lt v2, v1, :cond_b

    .line 146
    .line 147
    sub-int/2addr v4, v1

    .line 148
    if-gt v0, v4, :cond_a

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 152
    .line 153
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    throw p0

    .line 157
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 164
    .line 165
    .line 166
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 167
    sub-int/2addr v2, v0

    .line 168
    if-lt v2, v1, :cond_d

    .line 169
    .line 170
    sub-int/2addr v4, v1

    .line 171
    if-gt v0, v4, :cond_c

    .line 172
    .line 173
    goto/16 :goto_0

    .line 174
    .line 175
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 176
    .line 177
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0

    .line 181
    :cond_d
    :try_start_7
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/MacAddress;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 182
    .line 183
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, [Lcom/samsung/wifi/x/android/hardware/wifi/MacAddress;

    .line 188
    .line 189
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->intfAddr:[Lcom/samsung/wifi/x/android/hardware/wifi/MacAddress;

    .line 190
    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 192
    .line 193
    .line 194
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 195
    sub-int/2addr v2, v0

    .line 196
    if-lt v2, v1, :cond_f

    .line 197
    .line 198
    sub-int/2addr v4, v1

    .line 199
    if-gt v0, v4, :cond_e

    .line 200
    .line 201
    goto/16 :goto_0

    .line 202
    .line 203
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 204
    .line 205
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    throw p0

    .line 209
    :cond_f
    :try_start_8
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 210
    .line 211
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfig;

    .line 216
    .line 217
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->pairingConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfig;

    .line 218
    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 220
    .line 221
    .line 222
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 223
    sub-int/2addr v2, v0

    .line 224
    if-lt v2, v1, :cond_11

    .line 225
    .line 226
    sub-int/2addr v4, v1

    .line 227
    if-gt v0, v4, :cond_10

    .line 228
    .line 229
    goto/16 :goto_0

    .line 230
    .line 231
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 232
    .line 233
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    throw p0

    .line 237
    :cond_11
    :try_start_9
    const-class v2, [B

    .line 238
    .line 239
    const/16 v5, 0x10

    .line 240
    .line 241
    filled-new-array {v5}, [I

    .line 242
    .line 243
    .line 244
    move-result-object v5

    .line 245
    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, [B

    .line 250
    .line 251
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->identityKey:[B
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 252
    .line 253
    sub-int/2addr v4, v1

    .line 254
    if-gt v0, v4, :cond_12

    .line 255
    .line 256
    goto/16 :goto_0

    .line 257
    .line 258
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 259
    .line 260
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 261
    .line 262
    .line 263
    throw p0

    .line 264
    :catchall_0
    move-exception p0

    .line 265
    goto :goto_1

    .line 266
    :cond_13
    :try_start_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 267
    .line 268
    const-string v2, "Parcelable too small"

    .line 269
    .line 270
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 271
    .line 272
    .line 273
    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 274
    :goto_1
    sub-int/2addr v4, v1

    .line 275
    if-le v0, v4, :cond_14

    .line 276
    .line 277
    new-instance p0, Landroid/os/BadParcelableException;

    .line 278
    .line 279
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    throw p0

    .line 283
    :cond_14
    add-int/2addr v0, v1

    .line 284
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 285
    .line 286
    .line 287
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
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->baseConfigs:Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;

    .line 10
    .line 11
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->subscribeType:I

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->srfType:I

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->srfRespondIfInAddressSet:Z

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->shouldUseSrf:Z

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 32
    .line 33
    .line 34
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->isSsiRequiredForMatch:Z

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->intfAddr:[Lcom/samsung/wifi/x/android/hardware/wifi/MacAddress;

    .line 40
    .line 41
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->pairingConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingConfig;

    .line 45
    .line 46
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 47
    .line 48
    .line 49
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanSubscribeRequest;->identityKey:[B

    .line 50
    .line 51
    const/16 v1, 0x10

    .line 52
    .line 53
    filled-new-array {v1}, [I

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p1, p0, p2, v1}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 65
    .line 66
    .line 67
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
