.class public Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public akm:I

.field public cipherType:I

.field public localNanIdentityKey:[B

.field public npk:[B

.field public peerNanIdentityKey:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .locals 7

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
    if-lt v2, v3, :cond_b

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
    const/16 v3, 0x10

    .line 41
    .line 42
    :try_start_1
    filled-new-array {v3}, [I

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    invoke-virtual {p1, v0, v6}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, [B

    .line 51
    .line 52
    iput-object v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;->peerNanIdentityKey:[B

    .line 53
    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 55
    .line 56
    .line 57
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    sub-int/2addr v6, v1

    .line 59
    if-lt v6, v2, :cond_3

    .line 60
    .line 61
    sub-int/2addr v5, v2

    .line 62
    if-gt v1, v5, :cond_2

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    new-instance p0, Landroid/os/BadParcelableException;

    .line 66
    .line 67
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_3
    :try_start_2
    filled-new-array {v3}, [I

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    check-cast v3, [B

    .line 80
    .line 81
    iput-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;->localNanIdentityKey:[B

    .line 82
    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 84
    .line 85
    .line 86
    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    sub-int/2addr v3, v1

    .line 88
    if-lt v3, v2, :cond_5

    .line 89
    .line 90
    sub-int/2addr v5, v2

    .line 91
    if-gt v1, v5, :cond_4

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_4
    new-instance p0, Landroid/os/BadParcelableException;

    .line 95
    .line 96
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_5
    const/16 v3, 0x20

    .line 101
    .line 102
    :try_start_3
    filled-new-array {v3}, [I

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    check-cast v0, [B

    .line 111
    .line 112
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;->npk:[B

    .line 113
    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 115
    .line 116
    .line 117
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 118
    sub-int/2addr v0, v1

    .line 119
    if-lt v0, v2, :cond_7

    .line 120
    .line 121
    sub-int/2addr v5, v2

    .line 122
    if-gt v1, v5, :cond_6

    .line 123
    .line 124
    goto :goto_0

    .line 125
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 126
    .line 127
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    throw p0

    .line 131
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;->akm:I

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 138
    .line 139
    .line 140
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 141
    sub-int/2addr v0, v1

    .line 142
    if-lt v0, v2, :cond_9

    .line 143
    .line 144
    sub-int/2addr v5, v2

    .line 145
    if-gt v1, v5, :cond_8

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 149
    .line 150
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    throw p0

    .line 154
    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;->cipherType:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

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
    :catchall_0
    move-exception p0

    .line 172
    goto :goto_1

    .line 173
    :cond_b
    :try_start_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 174
    .line 175
    const-string v0, "Parcelable too small"

    .line 176
    .line 177
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 181
    :goto_1
    sub-int/2addr v5, v2

    .line 182
    if-le v1, v5, :cond_c

    .line 183
    .line 184
    new-instance p0, Landroid/os/BadParcelableException;

    .line 185
    .line 186
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    throw p0

    .line 190
    :cond_c
    add-int/2addr v1, v2

    .line 191
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 192
    .line 193
    .line 194
    throw p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

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
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;->peerNanIdentityKey:[B

    .line 10
    .line 11
    const/16 v2, 0x10

    .line 12
    .line 13
    filled-new-array {v2}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {p1, v1, p2, v3}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;->localNanIdentityKey:[B

    .line 21
    .line 22
    filled-new-array {v2}, [I

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;->npk:[B

    .line 30
    .line 31
    const/16 v2, 0x20

    .line 32
    .line 33
    filled-new-array {v2}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 38
    .line 39
    .line 40
    iget p2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;->akm:I

    .line 41
    .line 42
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    .line 44
    .line 45
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/NpkSecurityAssociation;->cipherType:I

    .line 46
    .line 47
    invoke-static {p1, p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/AvailableAfcChannelInfo$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    invoke-static {p0, v0, p1, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/AfcChannelAllowance$$ExternalSyntheticOutline0;->m(IILandroid/os/Parcel;I)V

    .line 52
    .line 53
    .line 54
    return-void
.end method
