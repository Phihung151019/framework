.class public Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public configRangingIndications:I

.field public disableDiscoveryTerminationIndication:Z

.field public disableFollowupReceivedIndication:Z

.field public disableMatchExpirationIndication:Z

.field public discoveryCount:B

.field public discoveryMatchIndicator:I

.field public discoveryWindowPeriod:C

.field public distanceEgressCm:C

.field public distanceIngressCm:C

.field public enableSessionSuspendability:Z

.field public extendedServiceSpecificInfo:[B

.field public rangingIntervalMs:I

.field public rangingRequired:Z

.field public rxMatchFilter:[B

.field public securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathSecurityConfig;

.field public serviceName:[B

.field public serviceSpecificInfo:[B

.field public sessionId:B

.field public ttlSec:C

.field public txMatchFilter:[B

.field public useRssiThreshold:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->sessionId:B

    .line 6
    .line 7
    iput-char v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->ttlSec:C

    .line 8
    .line 9
    iput-char v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->discoveryWindowPeriod:C

    .line 10
    .line 11
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 22
    .line 23
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->rangingIntervalMs:I

    .line 24
    .line 25
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 26
    .line 27
    iput-char v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->distanceIngressCm:C

    .line 28
    .line 29
    iput-char v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->distanceEgressCm:C

    .line 30
    .line 31
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->enableSessionSuspendability:Z

    .line 32
    .line 33
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
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathSecurityConfig;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->describeContents(Ljava/lang/Object;)I

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
    .locals 5

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
    if-lt v1, v2, :cond_2b

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
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->sessionId:B

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
    int-to-char v2, v2

    .line 66
    iput-char v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->ttlSec:C

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 69
    .line 70
    .line 71
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 72
    sub-int/2addr v2, v0

    .line 73
    if-lt v2, v1, :cond_5

    .line 74
    .line 75
    sub-int/2addr v4, v1

    .line 76
    if-gt v0, v4, :cond_4

    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 80
    .line 81
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    throw p0

    .line 85
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    int-to-char v2, v2

    .line 90
    iput-char v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->discoveryWindowPeriod:C

    .line 91
    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 93
    .line 94
    .line 95
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 96
    sub-int/2addr v2, v0

    .line 97
    if-lt v2, v1, :cond_7

    .line 98
    .line 99
    sub-int/2addr v4, v1

    .line 100
    if-gt v0, v4, :cond_6

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 104
    .line 105
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0

    .line 109
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 116
    .line 117
    .line 118
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 119
    sub-int/2addr v2, v0

    .line 120
    if-lt v2, v1, :cond_9

    .line 121
    .line 122
    sub-int/2addr v4, v1

    .line 123
    if-gt v0, v4, :cond_8

    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 127
    .line 128
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

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
    move-result-object v2

    .line 136
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->serviceName:[B

    .line 137
    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 139
    .line 140
    .line 141
    move-result v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 142
    sub-int/2addr v2, v0

    .line 143
    if-lt v2, v1, :cond_b

    .line 144
    .line 145
    sub-int/2addr v4, v1

    .line 146
    if-gt v0, v4, :cond_a

    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 150
    .line 151
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    throw p0

    .line 155
    :cond_b
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 160
    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 162
    .line 163
    .line 164
    move-result v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 165
    sub-int/2addr v2, v0

    .line 166
    if-lt v2, v1, :cond_d

    .line 167
    .line 168
    sub-int/2addr v4, v1

    .line 169
    if-gt v0, v4, :cond_c

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 174
    .line 175
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    throw p0

    .line 179
    :cond_d
    :try_start_7
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 180
    .line 181
    .line 182
    move-result-object v2

    .line 183
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->serviceSpecificInfo:[B

    .line 184
    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 186
    .line 187
    .line 188
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 189
    sub-int/2addr v2, v0

    .line 190
    if-lt v2, v1, :cond_f

    .line 191
    .line 192
    sub-int/2addr v4, v1

    .line 193
    if-gt v0, v4, :cond_e

    .line 194
    .line 195
    goto/16 :goto_0

    .line 196
    .line 197
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 198
    .line 199
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    throw p0

    .line 203
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:[B

    .line 208
    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 210
    .line 211
    .line 212
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 213
    sub-int/2addr v2, v0

    .line 214
    if-lt v2, v1, :cond_11

    .line 215
    .line 216
    sub-int/2addr v4, v1

    .line 217
    if-gt v0, v4, :cond_10

    .line 218
    .line 219
    goto/16 :goto_0

    .line 220
    .line 221
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 222
    .line 223
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p0

    .line 227
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->rxMatchFilter:[B

    .line 232
    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 234
    .line 235
    .line 236
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 237
    sub-int/2addr v2, v0

    .line 238
    if-lt v2, v1, :cond_13

    .line 239
    .line 240
    sub-int/2addr v4, v1

    .line 241
    if-gt v0, v4, :cond_12

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 246
    .line 247
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw p0

    .line 251
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->txMatchFilter:[B

    .line 256
    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 258
    .line 259
    .line 260
    move-result v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 261
    sub-int/2addr v2, v0

    .line 262
    if-lt v2, v1, :cond_15

    .line 263
    .line 264
    sub-int/2addr v4, v1

    .line 265
    if-gt v0, v4, :cond_14

    .line 266
    .line 267
    goto/16 :goto_0

    .line 268
    .line 269
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 270
    .line 271
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 272
    .line 273
    .line 274
    throw p0

    .line 275
    :cond_15
    :try_start_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 276
    .line 277
    .line 278
    move-result v2

    .line 279
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 280
    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 282
    .line 283
    .line 284
    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 285
    sub-int/2addr v2, v0

    .line 286
    if-lt v2, v1, :cond_17

    .line 287
    .line 288
    sub-int/2addr v4, v1

    .line 289
    if-gt v0, v4, :cond_16

    .line 290
    .line 291
    goto/16 :goto_0

    .line 292
    .line 293
    :cond_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 294
    .line 295
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 296
    .line 297
    .line 298
    throw p0

    .line 299
    :cond_17
    :try_start_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 300
    .line 301
    .line 302
    move-result v2

    .line 303
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 304
    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 306
    .line 307
    .line 308
    move-result v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 309
    sub-int/2addr v2, v0

    .line 310
    if-lt v2, v1, :cond_19

    .line 311
    .line 312
    sub-int/2addr v4, v1

    .line 313
    if-gt v0, v4, :cond_18

    .line 314
    .line 315
    goto/16 :goto_0

    .line 316
    .line 317
    :cond_18
    new-instance p0, Landroid/os/BadParcelableException;

    .line 318
    .line 319
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    throw p0

    .line 323
    :cond_19
    :try_start_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 324
    .line 325
    .line 326
    move-result v2

    .line 327
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 328
    .line 329
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 330
    .line 331
    .line 332
    move-result v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 333
    sub-int/2addr v2, v0

    .line 334
    if-lt v2, v1, :cond_1b

    .line 335
    .line 336
    sub-int/2addr v4, v1

    .line 337
    if-gt v0, v4, :cond_1a

    .line 338
    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :cond_1a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 342
    .line 343
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 344
    .line 345
    .line 346
    throw p0

    .line 347
    :cond_1b
    :try_start_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 348
    .line 349
    .line 350
    move-result v2

    .line 351
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 352
    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 354
    .line 355
    .line 356
    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 357
    sub-int/2addr v2, v0

    .line 358
    if-lt v2, v1, :cond_1d

    .line 359
    .line 360
    sub-int/2addr v4, v1

    .line 361
    if-gt v0, v4, :cond_1c

    .line 362
    .line 363
    goto/16 :goto_0

    .line 364
    .line 365
    :cond_1c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 366
    .line 367
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw p0

    .line 371
    :cond_1d
    :try_start_f
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathSecurityConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 372
    .line 373
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathSecurityConfig;

    .line 378
    .line 379
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathSecurityConfig;

    .line 380
    .line 381
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 382
    .line 383
    .line 384
    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 385
    sub-int/2addr v2, v0

    .line 386
    if-lt v2, v1, :cond_1f

    .line 387
    .line 388
    sub-int/2addr v4, v1

    .line 389
    if-gt v0, v4, :cond_1e

    .line 390
    .line 391
    goto/16 :goto_0

    .line 392
    .line 393
    :cond_1e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 394
    .line 395
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    throw p0

    .line 399
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 400
    .line 401
    .line 402
    move-result v2

    .line 403
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 404
    .line 405
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 406
    .line 407
    .line 408
    move-result v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 409
    sub-int/2addr v2, v0

    .line 410
    if-lt v2, v1, :cond_21

    .line 411
    .line 412
    sub-int/2addr v4, v1

    .line 413
    if-gt v0, v4, :cond_20

    .line 414
    .line 415
    goto/16 :goto_0

    .line 416
    .line 417
    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    .line 418
    .line 419
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw p0

    .line 423
    :cond_21
    :try_start_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 424
    .line 425
    .line 426
    move-result v2

    .line 427
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->rangingIntervalMs:I

    .line 428
    .line 429
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 430
    .line 431
    .line 432
    move-result v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 433
    sub-int/2addr v2, v0

    .line 434
    if-lt v2, v1, :cond_23

    .line 435
    .line 436
    sub-int/2addr v4, v1

    .line 437
    if-gt v0, v4, :cond_22

    .line 438
    .line 439
    goto/16 :goto_0

    .line 440
    .line 441
    :cond_22
    new-instance p0, Landroid/os/BadParcelableException;

    .line 442
    .line 443
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    throw p0

    .line 447
    :cond_23
    :try_start_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 448
    .line 449
    .line 450
    move-result v2

    .line 451
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 452
    .line 453
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 454
    .line 455
    .line 456
    move-result v2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    .line 457
    sub-int/2addr v2, v0

    .line 458
    if-lt v2, v1, :cond_25

    .line 459
    .line 460
    sub-int/2addr v4, v1

    .line 461
    if-gt v0, v4, :cond_24

    .line 462
    .line 463
    goto/16 :goto_0

    .line 464
    .line 465
    :cond_24
    new-instance p0, Landroid/os/BadParcelableException;

    .line 466
    .line 467
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    throw p0

    .line 471
    :cond_25
    :try_start_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 472
    .line 473
    .line 474
    move-result v2

    .line 475
    int-to-char v2, v2

    .line 476
    iput-char v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->distanceIngressCm:C

    .line 477
    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 479
    .line 480
    .line 481
    move-result v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    .line 482
    sub-int/2addr v2, v0

    .line 483
    if-lt v2, v1, :cond_27

    .line 484
    .line 485
    sub-int/2addr v4, v1

    .line 486
    if-gt v0, v4, :cond_26

    .line 487
    .line 488
    goto/16 :goto_0

    .line 489
    .line 490
    :cond_26
    new-instance p0, Landroid/os/BadParcelableException;

    .line 491
    .line 492
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    throw p0

    .line 496
    :cond_27
    :try_start_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 497
    .line 498
    .line 499
    move-result v2

    .line 500
    int-to-char v2, v2

    .line 501
    iput-char v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->distanceEgressCm:C

    .line 502
    .line 503
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 504
    .line 505
    .line 506
    move-result v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 507
    sub-int/2addr v2, v0

    .line 508
    if-lt v2, v1, :cond_29

    .line 509
    .line 510
    sub-int/2addr v4, v1

    .line 511
    if-gt v0, v4, :cond_28

    .line 512
    .line 513
    goto/16 :goto_0

    .line 514
    .line 515
    :cond_28
    new-instance p0, Landroid/os/BadParcelableException;

    .line 516
    .line 517
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    throw p0

    .line 521
    :cond_29
    :try_start_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 522
    .line 523
    .line 524
    move-result v2

    .line 525
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->enableSessionSuspendability:Z
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    .line 526
    .line 527
    sub-int/2addr v4, v1

    .line 528
    if-gt v0, v4, :cond_2a

    .line 529
    .line 530
    goto/16 :goto_0

    .line 531
    .line 532
    :cond_2a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 533
    .line 534
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    throw p0

    .line 538
    :catchall_0
    move-exception p0

    .line 539
    goto :goto_1

    .line 540
    :cond_2b
    :try_start_16
    new-instance p0, Landroid/os/BadParcelableException;

    .line 541
    .line 542
    const-string v2, "Parcelable too small"

    .line 543
    .line 544
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    throw p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    .line 548
    :goto_1
    sub-int/2addr v4, v1

    .line 549
    if-le v0, v4, :cond_2c

    .line 550
    .line 551
    new-instance p0, Landroid/os/BadParcelableException;

    .line 552
    .line 553
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 554
    .line 555
    .line 556
    throw p0

    .line 557
    :cond_2c
    add-int/2addr v0, v1

    .line 558
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 559
    .line 560
    .line 561
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
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->sessionId:B

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    .line 13
    .line 14
    iget-char v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->ttlSec:C

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-char v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->discoveryWindowPeriod:C

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->discoveryCount:B

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->serviceName:[B

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 32
    .line 33
    .line 34
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->discoveryMatchIndicator:I

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->serviceSpecificInfo:[B

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->extendedServiceSpecificInfo:[B

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->rxMatchFilter:[B

    .line 50
    .line 51
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->txMatchFilter:[B

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 57
    .line 58
    .line 59
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->useRssiThreshold:Z

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 62
    .line 63
    .line 64
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->disableDiscoveryTerminationIndication:Z

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 67
    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->disableMatchExpirationIndication:Z

    .line 70
    .line 71
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 72
    .line 73
    .line 74
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->disableFollowupReceivedIndication:Z

    .line 75
    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanDataPathSecurityConfig;

    .line 80
    .line 81
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 82
    .line 83
    .line 84
    iget-boolean p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->rangingRequired:Z

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 87
    .line 88
    .line 89
    iget p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->rangingIntervalMs:I

    .line 90
    .line 91
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    .line 93
    .line 94
    iget p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->configRangingIndications:I

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    .line 98
    .line 99
    iget-char p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->distanceIngressCm:C

    .line 100
    .line 101
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    .line 103
    .line 104
    iget-char p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->distanceEgressCm:C

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    .line 108
    .line 109
    iget-boolean p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanDiscoveryCommonConfig;->enableSessionSuspendability:Z

    .line 110
    .line 111
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 115
    .line 116
    .line 117
    move-result p0

    .line 118
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 119
    .line 120
    .line 121
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 122
    .line 123
    .line 124
    return-void
.end method
