.class public Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats$StaLinkState;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public avgRssiMgmt:I

.field public beaconRx:I

.field public frequencyMhz:I

.field public linkId:I

.field public peers:[Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;

.field public radioId:I

.field public state:I

.field public timeSliceDutyCycleInPercent:B

.field public wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

.field public wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

.field public wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

.field public wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

.field public wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

.field public wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

.field public wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

.field public wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->linkId:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->radioId:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->frequencyMhz:I

    .line 10
    .line 11
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->beaconRx:I

    .line 12
    .line 13
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->avgRssiMgmt:I

    .line 14
    .line 15
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->timeSliceDutyCycleInPercent:B

    .line 16
    .line 17
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 10
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 11
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 12
    invoke-direct {p0, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 13
    :cond_2
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_3

    .line 14
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
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 5
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 6
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 8
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 9
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->peers:[Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->describeContents(Ljava/lang/Object;)I

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
    if-lt v1, v2, :cond_21

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->linkId:I

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
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->radioId:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->frequencyMhz:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 108
    .line 109
    .line 110
    move-result v2

    .line 111
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->beaconRx:I

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
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->avgRssiMgmt:I

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
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v5

    .line 159
    check-cast v5, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 160
    .line 161
    iput-object v5, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 162
    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 164
    .line 165
    .line 166
    move-result v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 167
    sub-int/2addr v5, v0

    .line 168
    if-lt v5, v1, :cond_d

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
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    check-cast v5, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 186
    .line 187
    iput-object v5, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 190
    .line 191
    .line 192
    move-result v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 193
    sub-int/2addr v5, v0

    .line 194
    if-lt v5, v1, :cond_f

    .line 195
    .line 196
    sub-int/2addr v4, v1

    .line 197
    if-gt v0, v4, :cond_e

    .line 198
    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 202
    .line 203
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    throw p0

    .line 207
    :cond_f
    :try_start_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    check-cast v5, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 212
    .line 213
    iput-object v5, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 214
    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 216
    .line 217
    .line 218
    move-result v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 219
    sub-int/2addr v5, v0

    .line 220
    if-lt v5, v1, :cond_11

    .line 221
    .line 222
    sub-int/2addr v4, v1

    .line 223
    if-gt v0, v4, :cond_10

    .line 224
    .line 225
    goto/16 :goto_0

    .line 226
    .line 227
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 228
    .line 229
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    throw p0

    .line 233
    :cond_11
    :try_start_9
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    move-result-object v2

    .line 237
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 238
    .line 239
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 260
    .line 261
    .line 262
    move-result v2

    .line 263
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->timeSliceDutyCycleInPercent:B

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
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 284
    .line 285
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 286
    .line 287
    .line 288
    move-result-object v5

    .line 289
    check-cast v5, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 290
    .line 291
    iput-object v5, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

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
    move-result-object v5

    .line 315
    check-cast v5, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 316
    .line 317
    iput-object v5, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 318
    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 320
    .line 321
    .line 322
    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 323
    sub-int/2addr v5, v0

    .line 324
    if-lt v5, v1, :cond_19

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
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    move-result-object v5

    .line 341
    check-cast v5, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 342
    .line 343
    iput-object v5, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 344
    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 346
    .line 347
    .line 348
    move-result v5
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 349
    sub-int/2addr v5, v0

    .line 350
    if-lt v5, v1, :cond_1b

    .line 351
    .line 352
    sub-int/2addr v4, v1

    .line 353
    if-gt v0, v4, :cond_1a

    .line 354
    .line 355
    goto/16 :goto_0

    .line 356
    .line 357
    :cond_1a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 358
    .line 359
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    throw p0

    .line 363
    :cond_1b
    :try_start_e
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 368
    .line 369
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 370
    .line 371
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 372
    .line 373
    .line 374
    move-result v2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 375
    sub-int/2addr v2, v0

    .line 376
    if-lt v2, v1, :cond_1d

    .line 377
    .line 378
    sub-int/2addr v4, v1

    .line 379
    if-gt v0, v4, :cond_1c

    .line 380
    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_1c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 384
    .line 385
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 386
    .line 387
    .line 388
    throw p0

    .line 389
    :cond_1d
    :try_start_f
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 390
    .line 391
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    check-cast v2, [Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;

    .line 396
    .line 397
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->peers:[Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;

    .line 398
    .line 399
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 400
    .line 401
    .line 402
    move-result v2
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 403
    sub-int/2addr v2, v0

    .line 404
    if-lt v2, v1, :cond_1f

    .line 405
    .line 406
    sub-int/2addr v4, v1

    .line 407
    if-gt v0, v4, :cond_1e

    .line 408
    .line 409
    goto/16 :goto_0

    .line 410
    .line 411
    :cond_1e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 412
    .line 413
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 414
    .line 415
    .line 416
    throw p0

    .line 417
    :cond_1f
    :try_start_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->state:I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 422
    .line 423
    sub-int/2addr v4, v1

    .line 424
    if-gt v0, v4, :cond_20

    .line 425
    .line 426
    goto/16 :goto_0

    .line 427
    .line 428
    :cond_20
    new-instance p0, Landroid/os/BadParcelableException;

    .line 429
    .line 430
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 431
    .line 432
    .line 433
    throw p0

    .line 434
    :catchall_0
    move-exception p0

    .line 435
    goto :goto_1

    .line 436
    :cond_21
    :try_start_11
    new-instance p0, Landroid/os/BadParcelableException;

    .line 437
    .line 438
    const-string v2, "Parcelable too small"

    .line 439
    .line 440
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 441
    .line 442
    .line 443
    throw p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    .line 444
    :goto_1
    sub-int/2addr v4, v1

    .line 445
    if-le v0, v4, :cond_22

    .line 446
    .line 447
    new-instance p0, Landroid/os/BadParcelableException;

    .line 448
    .line 449
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    throw p0

    .line 453
    :cond_22
    add-int/2addr v0, v1

    .line 454
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 455
    .line 456
    .line 457
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
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->linkId:I

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->radioId:I

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->frequencyMhz:I

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->beaconRx:I

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->avgRssiMgmt:I

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBePktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 35
    .line 36
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBkPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 40
    .line 41
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 42
    .line 43
    .line 44
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeViPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 45
    .line 46
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeVoPktStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfacePacketStats;

    .line 50
    .line 51
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 52
    .line 53
    .line 54
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->timeSliceDutyCycleInPercent:B

    .line 55
    .line 56
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBeContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 60
    .line 61
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeBkContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 65
    .line 66
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeViContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 70
    .line 71
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->wmeVoContentionTimeStats:Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerIfaceContentionTimeStats;

    .line 75
    .line 76
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 77
    .line 78
    .line 79
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->peers:[Lcom/samsung/wifi/x/android/hardware/wifi/StaPeerInfo;

    .line 80
    .line 81
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 82
    .line 83
    .line 84
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/StaLinkLayerLinkStats;->state:I

    .line 85
    .line 86
    invoke-static {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/AvailableAfcChannelInfo$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 87
    .line 88
    .line 89
    move-result p0

    .line 90
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 91
    .line 92
    .line 93
    return-void
.end method
