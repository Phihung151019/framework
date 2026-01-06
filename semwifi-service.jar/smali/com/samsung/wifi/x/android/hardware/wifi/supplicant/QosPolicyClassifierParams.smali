.class public Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public classifierParamMask:I

.field public domainName:Ljava/lang/String;

.field public dscp:B

.field public dstIp:[B

.field public dstPortRange:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;

.field public flowLabelIpv6:[B

.field public ipVersion:B

.field public protocolNextHdr:B

.field public srcIp:[B

.field public srcPort:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->srcPort:I

    .line 6
    .line 7
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dscp:B

    .line 8
    .line 9
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
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dstPortRange:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->describeContents(Ljava/lang/Object;)I

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
    if-lt v1, v2, :cond_15

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
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->ipVersion:B

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
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->classifierParamMask:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->srcIp:[B

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dstIp:[B

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->srcPort:I

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
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;

    .line 160
    .line 161
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dstPortRange:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->protocolNextHdr:B

    .line 186
    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 188
    .line 189
    .line 190
    move-result v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 191
    sub-int/2addr v2, v0

    .line 192
    if-lt v2, v1, :cond_f

    .line 193
    .line 194
    sub-int/2addr v4, v1

    .line 195
    if-gt v0, v4, :cond_e

    .line 196
    .line 197
    goto/16 :goto_0

    .line 198
    .line 199
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 200
    .line 201
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p0

    .line 205
    :cond_f
    :try_start_8
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 206
    .line 207
    .line 208
    move-result-object v2

    .line 209
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->flowLabelIpv6:[B

    .line 210
    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 212
    .line 213
    .line 214
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 215
    sub-int/2addr v2, v0

    .line 216
    if-lt v2, v1, :cond_11

    .line 217
    .line 218
    sub-int/2addr v4, v1

    .line 219
    if-gt v0, v4, :cond_10

    .line 220
    .line 221
    goto/16 :goto_0

    .line 222
    .line 223
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 224
    .line 225
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    throw p0

    .line 229
    :cond_11
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->domainName:Ljava/lang/String;

    .line 234
    .line 235
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 236
    .line 237
    .line 238
    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 239
    sub-int/2addr v2, v0

    .line 240
    if-lt v2, v1, :cond_13

    .line 241
    .line 242
    sub-int/2addr v4, v1

    .line 243
    if-gt v0, v4, :cond_12

    .line 244
    .line 245
    goto/16 :goto_0

    .line 246
    .line 247
    :cond_12
    new-instance p0, Landroid/os/BadParcelableException;

    .line 248
    .line 249
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    throw p0

    .line 253
    :cond_13
    :try_start_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 254
    .line 255
    .line 256
    move-result v2

    .line 257
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dscp:B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 258
    .line 259
    sub-int/2addr v4, v1

    .line 260
    if-gt v0, v4, :cond_14

    .line 261
    .line 262
    goto/16 :goto_0

    .line 263
    .line 264
    :cond_14
    new-instance p0, Landroid/os/BadParcelableException;

    .line 265
    .line 266
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    throw p0

    .line 270
    :catchall_0
    move-exception p0

    .line 271
    goto :goto_1

    .line 272
    :cond_15
    :try_start_b
    new-instance p0, Landroid/os/BadParcelableException;

    .line 273
    .line 274
    const-string v2, "Parcelable too small"

    .line 275
    .line 276
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 277
    .line 278
    .line 279
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 280
    :goto_1
    sub-int/2addr v4, v1

    .line 281
    if-le v0, v4, :cond_16

    .line 282
    .line 283
    new-instance p0, Landroid/os/BadParcelableException;

    .line 284
    .line 285
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    throw p0

    .line 289
    :cond_16
    add-int/2addr v0, v1

    .line 290
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 291
    .line 292
    .line 293
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
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->ipVersion:B

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->classifierParamMask:I

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->srcIp:[B

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dstIp:[B

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->srcPort:I

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dstPortRange:Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/PortRange;

    .line 35
    .line 36
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    .line 38
    .line 39
    iget-byte p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->protocolNextHdr:B

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 42
    .line 43
    .line 44
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->flowLabelIpv6:[B

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 47
    .line 48
    .line 49
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->domainName:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-byte p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/QosPolicyClassifierParams;->dscp:B

    .line 55
    .line 56
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 64
    .line 65
    .line 66
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
