.class public Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public discoveryWindowIntervalVal:B

.field public dwellTimeMs:C

.field public rssiClose:B

.field public rssiCloseProximity:B

.field public rssiMiddle:B

.field public scanPeriodSec:C

.field public validDiscoveryWindowIntervalVal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->rssiClose:B

    .line 6
    .line 7
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->rssiMiddle:B

    .line 8
    .line 9
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->rssiCloseProximity:B

    .line 10
    .line 11
    iput-char v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->dwellTimeMs:C

    .line 12
    .line 13
    iput-char v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->scanPeriodSec:C

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    .line 16
    .line 17
    iput-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
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
    if-lt v1, v2, :cond_f

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
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->rssiClose:B

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 62
    .line 63
    .line 64
    move-result v2

    .line 65
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->rssiMiddle:B

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->rssiCloseProximity:B

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
    int-to-char v2, v2

    .line 112
    iput-char v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->dwellTimeMs:C

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 115
    .line 116
    .line 117
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 118
    sub-int/2addr v2, v0

    .line 119
    if-lt v2, v1, :cond_9

    .line 120
    .line 121
    sub-int/2addr v4, v1

    .line 122
    if-gt v0, v4, :cond_8

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 126
    .line 127
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 132
    .line 133
    .line 134
    move-result v2

    .line 135
    int-to-char v2, v2

    .line 136
    iput-char v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->scanPeriodSec:C

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->discoveryWindowIntervalVal:B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 184
    .line 185
    sub-int/2addr v4, v1

    .line 186
    if-gt v0, v4, :cond_e

    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 191
    .line 192
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    throw p0

    .line 196
    :catchall_0
    move-exception p0

    .line 197
    goto :goto_1

    .line 198
    :cond_f
    :try_start_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 199
    .line 200
    const-string v2, "Parcelable too small"

    .line 201
    .line 202
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 203
    .line 204
    .line 205
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 206
    :goto_1
    sub-int/2addr v4, v1

    .line 207
    if-le v0, v4, :cond_10

    .line 208
    .line 209
    new-instance p0, Landroid/os/BadParcelableException;

    .line 210
    .line 211
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw p0

    .line 215
    :cond_10
    add-int/2addr v0, v1

    .line 216
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 217
    .line 218
    .line 219
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 7
    .line 8
    .line 9
    iget-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->rssiClose:B

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    .line 13
    .line 14
    iget-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->rssiMiddle:B

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    .line 18
    .line 19
    iget-byte v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->rssiCloseProximity:B

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 22
    .line 23
    .line 24
    iget-char v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->dwellTimeMs:C

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-char v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->scanPeriodSec:C

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->validDiscoveryWindowIntervalVal:Z

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 37
    .line 38
    .line 39
    iget-byte p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanBandSpecificConfig;->discoveryWindowIntervalVal:B

    .line 40
    .line 41
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 45
    .line 46
    .line 47
    move-result p0

    .line 48
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {p0, p2, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
