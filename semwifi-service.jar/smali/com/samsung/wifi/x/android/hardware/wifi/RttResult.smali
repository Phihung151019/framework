.class public Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public addr:[B

.field public burstDurationInMs:I

.field public burstNum:I

.field public channelFreqMHz:I

.field public distanceInMm:I

.field public distanceSdInMm:I

.field public distanceSpreadInMm:I

.field public lci:Lcom/samsung/wifi/x/android/hardware/wifi/WifiInformationElement;

.field public lcr:Lcom/samsung/wifi/x/android/hardware/wifi/WifiInformationElement;

.field public measurementNumber:I

.field public negotiatedBurstNum:I

.field public numberPerBurstPeer:B

.field public packetBw:I

.field public retryAfterDuration:B

.field public rssi:I

.field public rssiSpread:I

.field public rtt:J

.field public rttSd:J

.field public rttSpread:J

.field public rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;

.field public status:I

.field public successNumber:I

.field public timeStampInUs:J

.field public txRate:Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;

.field public type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->burstNum:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->measurementNumber:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->successNumber:I

    .line 10
    .line 11
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->numberPerBurstPeer:B

    .line 12
    .line 13
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->retryAfterDuration:B

    .line 14
    .line 15
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rssi:I

    .line 16
    .line 17
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rssiSpread:I

    .line 18
    .line 19
    const-wide/16 v1, 0x0

    .line 20
    .line 21
    iput-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rtt:J

    .line 22
    .line 23
    iput-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rttSd:J

    .line 24
    .line 25
    iput-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rttSpread:J

    .line 26
    .line 27
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->distanceInMm:I

    .line 28
    .line 29
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->distanceSdInMm:I

    .line 30
    .line 31
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->distanceSpreadInMm:I

    .line 32
    .line 33
    iput-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->timeStampInUs:J

    .line 34
    .line 35
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->burstDurationInMs:I

    .line 36
    .line 37
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->negotiatedBurstNum:I

    .line 38
    .line 39
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->channelFreqMHz:I

    .line 40
    .line 41
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 5
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 6
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
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/WifiInformationElement;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/WifiInformationElement;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->describeContents(Ljava/lang/Object;)I

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
    if-lt v1, v2, :cond_33

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
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->addr:[B

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
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->burstNum:I

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
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->measurementNumber:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->successNumber:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 140
    .line 141
    .line 142
    move-result v2

    .line 143
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->numberPerBurstPeer:B

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 164
    .line 165
    .line 166
    move-result v2

    .line 167
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->status:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->retryAfterDuration:B

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->type:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 236
    .line 237
    .line 238
    move-result v2

    .line 239
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rssi:I

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
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rssiSpread:I

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
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 284
    .line 285
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    check-cast v5, Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;

    .line 290
    .line 291
    iput-object v5, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;

    .line 292
    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 294
    .line 295
    .line 296
    move-result v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 297
    sub-int/2addr v5, v0

    .line 298
    if-lt v5, v1, :cond_17

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
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v2

    .line 315
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;

    .line 316
    .line 317
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;

    .line 318
    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 320
    .line 321
    .line 322
    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 323
    sub-int/2addr v2, v0

    .line 324
    if-lt v2, v1, :cond_19

    .line 325
    .line 326
    sub-int/2addr v4, v1

    .line 327
    if-gt v0, v4, :cond_18

    .line 328
    .line 329
    goto/16 :goto_0

    .line 330
    .line 331
    :cond_18
    new-instance p0, Landroid/os/BadParcelableException;

    .line 332
    .line 333
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw p0

    .line 337
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 338
    .line 339
    .line 340
    move-result-wide v5

    .line 341
    iput-wide v5, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rtt:J

    .line 342
    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 344
    .line 345
    .line 346
    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 347
    sub-int/2addr v2, v0

    .line 348
    if-lt v2, v1, :cond_1b

    .line 349
    .line 350
    sub-int/2addr v4, v1

    .line 351
    if-gt v0, v4, :cond_1a

    .line 352
    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :cond_1a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 356
    .line 357
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 358
    .line 359
    .line 360
    throw p0

    .line 361
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 362
    .line 363
    .line 364
    move-result-wide v5

    .line 365
    iput-wide v5, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rttSd:J

    .line 366
    .line 367
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 368
    .line 369
    .line 370
    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 371
    sub-int/2addr v2, v0

    .line 372
    if-lt v2, v1, :cond_1d

    .line 373
    .line 374
    sub-int/2addr v4, v1

    .line 375
    if-gt v0, v4, :cond_1c

    .line 376
    .line 377
    goto/16 :goto_0

    .line 378
    .line 379
    :cond_1c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 380
    .line 381
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 382
    .line 383
    .line 384
    throw p0

    .line 385
    :cond_1d
    :try_start_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 386
    .line 387
    .line 388
    move-result-wide v5

    .line 389
    iput-wide v5, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rttSpread:J

    .line 390
    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 392
    .line 393
    .line 394
    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 395
    sub-int/2addr v2, v0

    .line 396
    if-lt v2, v1, :cond_1f

    .line 397
    .line 398
    sub-int/2addr v4, v1

    .line 399
    if-gt v0, v4, :cond_1e

    .line 400
    .line 401
    goto/16 :goto_0

    .line 402
    .line 403
    :cond_1e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 404
    .line 405
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 406
    .line 407
    .line 408
    throw p0

    .line 409
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 410
    .line 411
    .line 412
    move-result v2

    .line 413
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->distanceInMm:I

    .line 414
    .line 415
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 416
    .line 417
    .line 418
    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 419
    sub-int/2addr v2, v0

    .line 420
    if-lt v2, v1, :cond_21

    .line 421
    .line 422
    sub-int/2addr v4, v1

    .line 423
    if-gt v0, v4, :cond_20

    .line 424
    .line 425
    goto/16 :goto_0

    .line 426
    .line 427
    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    .line 428
    .line 429
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 430
    .line 431
    .line 432
    throw p0

    .line 433
    :cond_21
    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 434
    .line 435
    .line 436
    move-result v2

    .line 437
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->distanceSdInMm:I

    .line 438
    .line 439
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 440
    .line 441
    .line 442
    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 443
    sub-int/2addr v2, v0

    .line 444
    if-lt v2, v1, :cond_23

    .line 445
    .line 446
    sub-int/2addr v4, v1

    .line 447
    if-gt v0, v4, :cond_22

    .line 448
    .line 449
    goto/16 :goto_0

    .line 450
    .line 451
    :cond_22
    new-instance p0, Landroid/os/BadParcelableException;

    .line 452
    .line 453
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 454
    .line 455
    .line 456
    throw p0

    .line 457
    :cond_23
    :try_start_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->distanceSpreadInMm:I

    .line 462
    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 464
    .line 465
    .line 466
    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 467
    sub-int/2addr v2, v0

    .line 468
    if-lt v2, v1, :cond_25

    .line 469
    .line 470
    sub-int/2addr v4, v1

    .line 471
    if-gt v0, v4, :cond_24

    .line 472
    .line 473
    goto/16 :goto_0

    .line 474
    .line 475
    :cond_24
    new-instance p0, Landroid/os/BadParcelableException;

    .line 476
    .line 477
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    throw p0

    .line 481
    :cond_25
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    .line 482
    .line 483
    .line 484
    move-result-wide v5

    .line 485
    iput-wide v5, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->timeStampInUs:J

    .line 486
    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 488
    .line 489
    .line 490
    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 491
    sub-int/2addr v2, v0

    .line 492
    if-lt v2, v1, :cond_27

    .line 493
    .line 494
    sub-int/2addr v4, v1

    .line 495
    if-gt v0, v4, :cond_26

    .line 496
    .line 497
    goto/16 :goto_0

    .line 498
    .line 499
    :cond_26
    new-instance p0, Landroid/os/BadParcelableException;

    .line 500
    .line 501
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    throw p0

    .line 505
    :cond_27
    :try_start_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 506
    .line 507
    .line 508
    move-result v2

    .line 509
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->burstDurationInMs:I

    .line 510
    .line 511
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 512
    .line 513
    .line 514
    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 515
    sub-int/2addr v2, v0

    .line 516
    if-lt v2, v1, :cond_29

    .line 517
    .line 518
    sub-int/2addr v4, v1

    .line 519
    if-gt v0, v4, :cond_28

    .line 520
    .line 521
    goto/16 :goto_0

    .line 522
    .line 523
    :cond_28
    new-instance p0, Landroid/os/BadParcelableException;

    .line 524
    .line 525
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 526
    .line 527
    .line 528
    throw p0

    .line 529
    :cond_29
    :try_start_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 530
    .line 531
    .line 532
    move-result v2

    .line 533
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->negotiatedBurstNum:I

    .line 534
    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 536
    .line 537
    .line 538
    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 539
    sub-int/2addr v2, v0

    .line 540
    if-lt v2, v1, :cond_2b

    .line 541
    .line 542
    sub-int/2addr v4, v1

    .line 543
    if-gt v0, v4, :cond_2a

    .line 544
    .line 545
    goto/16 :goto_0

    .line 546
    .line 547
    :cond_2a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 548
    .line 549
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 550
    .line 551
    .line 552
    throw p0

    .line 553
    :cond_2b
    :try_start_16
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiInformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 554
    .line 555
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    check-cast v5, Lcom/samsung/wifi/x/android/hardware/wifi/WifiInformationElement;

    .line 560
    .line 561
    iput-object v5, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/WifiInformationElement;

    .line 562
    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 564
    .line 565
    .line 566
    move-result v5
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 567
    sub-int/2addr v5, v0

    .line 568
    if-lt v5, v1, :cond_2d

    .line 569
    .line 570
    sub-int/2addr v4, v1

    .line 571
    if-gt v0, v4, :cond_2c

    .line 572
    .line 573
    goto/16 :goto_0

    .line 574
    .line 575
    :cond_2c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 576
    .line 577
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 578
    .line 579
    .line 580
    throw p0

    .line 581
    :cond_2d
    :try_start_17
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 582
    .line 583
    .line 584
    move-result-object v2

    .line 585
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiInformationElement;

    .line 586
    .line 587
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/WifiInformationElement;

    .line 588
    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 590
    .line 591
    .line 592
    move-result v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    .line 593
    sub-int/2addr v2, v0

    .line 594
    if-lt v2, v1, :cond_2f

    .line 595
    .line 596
    sub-int/2addr v4, v1

    .line 597
    if-gt v0, v4, :cond_2e

    .line 598
    .line 599
    goto/16 :goto_0

    .line 600
    .line 601
    :cond_2e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 602
    .line 603
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    throw p0

    .line 607
    :cond_2f
    :try_start_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 608
    .line 609
    .line 610
    move-result v2

    .line 611
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->channelFreqMHz:I

    .line 612
    .line 613
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 614
    .line 615
    .line 616
    move-result v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 617
    sub-int/2addr v2, v0

    .line 618
    if-lt v2, v1, :cond_31

    .line 619
    .line 620
    sub-int/2addr v4, v1

    .line 621
    if-gt v0, v4, :cond_30

    .line 622
    .line 623
    goto/16 :goto_0

    .line 624
    .line 625
    :cond_30
    new-instance p0, Landroid/os/BadParcelableException;

    .line 626
    .line 627
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 628
    .line 629
    .line 630
    throw p0

    .line 631
    :cond_31
    :try_start_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 632
    .line 633
    .line 634
    move-result v2

    .line 635
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->packetBw:I
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    .line 636
    .line 637
    sub-int/2addr v4, v1

    .line 638
    if-gt v0, v4, :cond_32

    .line 639
    .line 640
    goto/16 :goto_0

    .line 641
    .line 642
    :cond_32
    new-instance p0, Landroid/os/BadParcelableException;

    .line 643
    .line 644
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 645
    .line 646
    .line 647
    throw p0

    .line 648
    :catchall_0
    move-exception p0

    .line 649
    goto :goto_1

    .line 650
    :cond_33
    :try_start_1a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 651
    .line 652
    const-string v2, "Parcelable too small"

    .line 653
    .line 654
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 655
    .line 656
    .line 657
    throw p0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 658
    :goto_1
    sub-int/2addr v4, v1

    .line 659
    if-le v0, v4, :cond_34

    .line 660
    .line 661
    new-instance p0, Landroid/os/BadParcelableException;

    .line 662
    .line 663
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 664
    .line 665
    .line 666
    throw p0

    .line 667
    :cond_34
    add-int/2addr v0, v1

    .line 668
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 669
    .line 670
    .line 671
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
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->addr:[B

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
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->burstNum:I

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->measurementNumber:I

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->successNumber:I

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->numberPerBurstPeer:B

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->status:I

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    .line 43
    .line 44
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->retryAfterDuration:B

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 47
    .line 48
    .line 49
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->type:I

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    .line 53
    .line 54
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rssi:I

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    .line 58
    .line 59
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rssiSpread:I

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->txRate:Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;

    .line 65
    .line 66
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rxRate:Lcom/samsung/wifi/x/android/hardware/wifi/WifiRateInfo;

    .line 70
    .line 71
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 72
    .line 73
    .line 74
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rtt:J

    .line 75
    .line 76
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    .line 78
    .line 79
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rttSd:J

    .line 80
    .line 81
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 82
    .line 83
    .line 84
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->rttSpread:J

    .line 85
    .line 86
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 87
    .line 88
    .line 89
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->distanceInMm:I

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    .line 93
    .line 94
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->distanceSdInMm:I

    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->distanceSpreadInMm:I

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    .line 103
    .line 104
    iget-wide v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->timeStampInUs:J

    .line 105
    .line 106
    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 107
    .line 108
    .line 109
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->burstDurationInMs:I

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    .line 113
    .line 114
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->negotiatedBurstNum:I

    .line 115
    .line 116
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->lci:Lcom/samsung/wifi/x/android/hardware/wifi/WifiInformationElement;

    .line 120
    .line 121
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 122
    .line 123
    .line 124
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->lcr:Lcom/samsung/wifi/x/android/hardware/wifi/WifiInformationElement;

    .line 125
    .line 126
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 127
    .line 128
    .line 129
    iget p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->channelFreqMHz:I

    .line 130
    .line 131
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    .line 133
    .line 134
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/RttResult;->packetBw:I

    .line 135
    .line 136
    invoke-static {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/AvailableAfcChannelInfo$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 137
    .line 138
    .line 139
    move-result p0

    .line 140
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 141
    .line 142
    .line 143
    return-void
.end method
