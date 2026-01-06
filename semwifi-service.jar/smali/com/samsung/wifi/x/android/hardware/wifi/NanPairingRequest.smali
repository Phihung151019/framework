.class public Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public enablePairingCache:Z

.field public pairingIdentityKey:[B

.field public peerDiscMacAddr:[B

.field public peerId:I

.field public requestType:I

.field public securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->peerId:I

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->enablePairingCache:Z

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
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->describeContents(Ljava/lang/Object;)I

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
    .locals 6

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
    if-lt v2, v3, :cond_d

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    iput v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->peerId:I

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
    const/4 v3, 0x6

    .line 64
    :try_start_2
    filled-new-array {v3}, [I

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    check-cast v3, [B

    .line 73
    .line 74
    iput-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->peerDiscMacAddr:[B

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 77
    .line 78
    .line 79
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    sub-int/2addr v3, v1

    .line 81
    if-lt v3, v2, :cond_5

    .line 82
    .line 83
    sub-int/2addr v5, v2

    .line 84
    if-gt v1, v5, :cond_4

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 88
    .line 89
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

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
    move-result v3

    .line 97
    iput v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->requestType:I

    .line 98
    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 100
    .line 101
    .line 102
    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 103
    sub-int/2addr v3, v1

    .line 104
    if-lt v3, v2, :cond_7

    .line 105
    .line 106
    sub-int/2addr v5, v2

    .line 107
    if-gt v1, v5, :cond_6

    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 111
    .line 112
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    throw p0

    .line 116
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    iput-boolean v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->enablePairingCache:Z

    .line 121
    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 123
    .line 124
    .line 125
    move-result v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 126
    sub-int/2addr v3, v1

    .line 127
    if-lt v3, v2, :cond_9

    .line 128
    .line 129
    sub-int/2addr v5, v2

    .line 130
    if-gt v1, v5, :cond_8

    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 134
    .line 135
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    throw p0

    .line 139
    :cond_9
    const/16 v3, 0x10

    .line 140
    .line 141
    :try_start_5
    filled-new-array {v3}, [I

    .line 142
    .line 143
    .line 144
    move-result-object v3

    .line 145
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    check-cast v0, [B

    .line 150
    .line 151
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->pairingIdentityKey:[B

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 154
    .line 155
    .line 156
    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    sub-int/2addr v0, v1

    .line 158
    if-lt v0, v2, :cond_b

    .line 159
    .line 160
    sub-int/2addr v5, v2

    .line 161
    if-gt v1, v5, :cond_a

    .line 162
    .line 163
    goto/16 :goto_0

    .line 164
    .line 165
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 166
    .line 167
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    throw p0

    .line 171
    :cond_b
    :try_start_6
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 172
    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    check-cast v0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;

    .line 178
    .line 179
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 180
    .line 181
    sub-int/2addr v5, v2

    .line 182
    if-gt v1, v5, :cond_c

    .line 183
    .line 184
    goto/16 :goto_0

    .line 185
    .line 186
    :cond_c
    new-instance p0, Landroid/os/BadParcelableException;

    .line 187
    .line 188
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p0

    .line 192
    :catchall_0
    move-exception p0

    .line 193
    goto :goto_1

    .line 194
    :cond_d
    :try_start_7
    new-instance p0, Landroid/os/BadParcelableException;

    .line 195
    .line 196
    const-string v0, "Parcelable too small"

    .line 197
    .line 198
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 202
    :goto_1
    sub-int/2addr v5, v2

    .line 203
    if-le v1, v5, :cond_e

    .line 204
    .line 205
    new-instance p0, Landroid/os/BadParcelableException;

    .line 206
    .line 207
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    throw p0

    .line 211
    :cond_e
    add-int/2addr v1, v2

    .line 212
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 213
    .line 214
    .line 215
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
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->peerId:I

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->peerDiscMacAddr:[B

    .line 15
    .line 16
    const/4 v2, 0x6

    .line 17
    filled-new-array {v2}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 22
    .line 23
    .line 24
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->requestType:I

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    .line 28
    .line 29
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->enablePairingCache:Z

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->pairingIdentityKey:[B

    .line 35
    .line 36
    const/16 v2, 0x10

    .line 37
    .line 38
    filled-new-array {v2}, [I

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingRequest;->securityConfig:Lcom/samsung/wifi/x/android/hardware/wifi/NanPairingSecurityConfig;

    .line 46
    .line 47
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 55
    .line 56
    .line 57
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method
