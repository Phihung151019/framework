.class public Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public cmdEventWakeCntPerType:[I

.field public driverFwLocalWakeCntPerType:[I

.field public rxIcmpPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxIcmpPacketDetails;

.field public rxMulticastPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxMulticastPacketDetails;

.field public rxPktWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxPacketDetails;

.field public totalCmdEventWakeCnt:I

.field public totalDriverFwLocalWakeCnt:I

.field public totalRxPacketWakeCnt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    .line 8
    .line 9
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    .line 10
    .line 11
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 5
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
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxPacketDetails;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->describeContents(Ljava/lang/Object;)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->describeContents(Ljava/lang/Object;)I

    move-result v1

    or-int/2addr v0, v1

    .line 3
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    invoke-direct {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->describeContents(Ljava/lang/Object;)I

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
    if-lt v1, v2, :cond_11

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
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:[I

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
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:[I

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
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

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
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxPacketDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 154
    .line 155
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxPacketDetails;

    .line 160
    .line 161
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxPacketDetails;

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
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxMulticastPacketDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 182
    .line 183
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    .line 188
    .line 189
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxMulticastPacketDetails;

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
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxIcmpPacketDetails;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 210
    .line 211
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    check-cast v2, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    .line 216
    .line 217
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxIcmpPacketDetails;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 218
    .line 219
    sub-int/2addr v4, v1

    .line 220
    if-gt v0, v4, :cond_10

    .line 221
    .line 222
    goto/16 :goto_0

    .line 223
    .line 224
    :cond_10
    new-instance p0, Landroid/os/BadParcelableException;

    .line 225
    .line 226
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 227
    .line 228
    .line 229
    throw p0

    .line 230
    :catchall_0
    move-exception p0

    .line 231
    goto :goto_1

    .line 232
    :cond_11
    :try_start_9
    new-instance p0, Landroid/os/BadParcelableException;

    .line 233
    .line 234
    const-string v2, "Parcelable too small"

    .line 235
    .line 236
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 237
    .line 238
    .line 239
    throw p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 240
    :goto_1
    sub-int/2addr v4, v1

    .line 241
    if-le v0, v4, :cond_12

    .line 242
    .line 243
    new-instance p0, Landroid/os/BadParcelableException;

    .line 244
    .line 245
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    throw p0

    .line 249
    :cond_12
    add-int/2addr v0, v1

    .line 250
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 251
    .line 252
    .line 253
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
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->totalCmdEventWakeCnt:I

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->cmdEventWakeCntPerType:[I

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->totalDriverFwLocalWakeCnt:I

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->driverFwLocalWakeCntPerType:[I

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->totalRxPacketWakeCnt:I

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->rxPktWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxPacketDetails;

    .line 35
    .line 36
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->rxMulticastPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxMulticastPacketDetails;

    .line 40
    .line 41
    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonStats;->rxIcmpPkWakeDetails:Lcom/samsung/wifi/x/android/hardware/wifi/WifiDebugHostWakeReasonRxIcmpPacketDetails;

    .line 45
    .line 46
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 54
    .line 55
    .line 56
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
