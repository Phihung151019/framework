.class public Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public akm:I

.field public cipherType:I

.field public passphrase:[B

.field public pmk:[B

.field public securityType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
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
    if-lt v1, v2, :cond_b

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
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;->securityType:I

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
    const-class v2, [B

    .line 62
    .line 63
    const/16 v5, 0x20

    .line 64
    .line 65
    filled-new-array {v5}, [I

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    invoke-virtual {p1, v2, v5}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, [B

    .line 74
    .line 75
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;->pmk:[B

    .line 76
    .line 77
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 78
    .line 79
    .line 80
    move-result v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 81
    sub-int/2addr v2, v0

    .line 82
    if-lt v2, v1, :cond_5

    .line 83
    .line 84
    sub-int/2addr v4, v1

    .line 85
    if-gt v0, v4, :cond_4

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 89
    .line 90
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p0

    .line 94
    :cond_5
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;->passphrase:[B

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 101
    .line 102
    .line 103
    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    sub-int/2addr v2, v0

    .line 105
    if-lt v2, v1, :cond_7

    .line 106
    .line 107
    sub-int/2addr v4, v1

    .line 108
    if-gt v0, v4, :cond_6

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 112
    .line 113
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    throw p0

    .line 117
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 118
    .line 119
    .line 120
    move-result v2

    .line 121
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;->akm:I

    .line 122
    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 124
    .line 125
    .line 126
    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 127
    sub-int/2addr v2, v0

    .line 128
    if-lt v2, v1, :cond_9

    .line 129
    .line 130
    sub-int/2addr v4, v1

    .line 131
    if-gt v0, v4, :cond_8

    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 135
    .line 136
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;->cipherType:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 145
    .line 146
    sub-int/2addr v4, v1

    .line 147
    if-gt v0, v4, :cond_a

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 151
    .line 152
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p0

    .line 156
    :catchall_0
    move-exception p0

    .line 157
    goto :goto_1

    .line 158
    :cond_b
    :try_start_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 159
    .line 160
    const-string v2, "Parcelable too small"

    .line 161
    .line 162
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 166
    :goto_1
    sub-int/2addr v4, v1

    .line 167
    if-le v0, v4, :cond_c

    .line 168
    .line 169
    new-instance p0, Landroid/os/BadParcelableException;

    .line 170
    .line 171
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    throw p0

    .line 175
    :cond_c
    add-int/2addr v0, v1

    .line 176
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 177
    .line 178
    .line 179
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
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;->securityType:I

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;->pmk:[B

    .line 15
    .line 16
    const/16 v2, 0x20

    .line 17
    .line 18
    filled-new-array {v2}, [I

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;->passphrase:[B

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 28
    .line 29
    .line 30
    iget p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;->akm:I

    .line 31
    .line 32
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 33
    .line 34
    .line 35
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;->cipherType:I

    .line 36
    .line 37
    invoke-static {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/AvailableAfcChannelInfo$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
