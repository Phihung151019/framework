.class public Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public clientDeviceAddress:[B

.field public clientInterfaceAddress:[B

.field public clientIpAddress:I

.field public groupInterfaceName:Ljava/lang/String;

.field public vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->clientIpAddress:I

    .line 6
    .line 7
    return-void
.end method

.method private describeContents(Ljava/lang/Object;)I
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    instance-of v1, p1, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 3
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v3, p1, v0

    .line 4
    invoke-direct {p0, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->describeContents(Ljava/lang/Object;)I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v2

    .line 5
    :cond_2
    instance-of p0, p1, Landroid/os/Parcelable;

    if-eqz p0, :cond_3

    .line 6
    check-cast p1, Landroid/os/Parcelable;

    invoke-interface {p1}, Landroid/os/Parcelable;->describeContents()I

    move-result p0

    return p0

    :cond_3
    return v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->describeContents(Ljava/lang/Object;)I

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
    :try_start_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    iput-object v3, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->groupInterfaceName:Ljava/lang/String;

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
    move-result-object v6

    .line 68
    invoke-virtual {p1, v0, v6}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, [B

    .line 73
    .line 74
    iput-object v6, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->clientInterfaceAddress:[B

    .line 75
    .line 76
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 77
    .line 78
    .line 79
    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 80
    sub-int/2addr v6, v1

    .line 81
    if-lt v6, v2, :cond_5

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
    filled-new-array {v3}, [I

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, [B

    .line 102
    .line 103
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->clientDeviceAddress:[B

    .line 104
    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 106
    .line 107
    .line 108
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 109
    sub-int/2addr v0, v1

    .line 110
    if-lt v0, v2, :cond_7

    .line 111
    .line 112
    sub-int/2addr v5, v2

    .line 113
    if-gt v1, v5, :cond_6

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 117
    .line 118
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    throw p0

    .line 122
    :cond_7
    :try_start_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->clientIpAddress:I

    .line 127
    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 129
    .line 130
    .line 131
    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 132
    sub-int/2addr v0, v1

    .line 133
    if-lt v0, v2, :cond_9

    .line 134
    .line 135
    sub-int/2addr v5, v2

    .line 136
    if-gt v1, v5, :cond_8

    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 140
    .line 141
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    throw p0

    .line 145
    :cond_9
    :try_start_5
    sget-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    check-cast v0, [Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    .line 152
    .line 153
    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 154
    .line 155
    sub-int/2addr v5, v2

    .line 156
    if-gt v1, v5, :cond_a

    .line 157
    .line 158
    goto/16 :goto_0

    .line 159
    .line 160
    :cond_a
    new-instance p0, Landroid/os/BadParcelableException;

    .line 161
    .line 162
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    throw p0

    .line 166
    :catchall_0
    move-exception p0

    .line 167
    goto :goto_1

    .line 168
    :cond_b
    :try_start_6
    new-instance p0, Landroid/os/BadParcelableException;

    .line 169
    .line 170
    const-string v0, "Parcelable too small"

    .line 171
    .line 172
    invoke-direct {p0, v0}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 176
    :goto_1
    sub-int/2addr v5, v2

    .line 177
    if-le v1, v5, :cond_c

    .line 178
    .line 179
    new-instance p0, Landroid/os/BadParcelableException;

    .line 180
    .line 181
    invoke-direct {p0, v4}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    throw p0

    .line 185
    :cond_c
    add-int/2addr v1, v2

    .line 186
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 187
    .line 188
    .line 189
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
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->groupInterfaceName:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->clientInterfaceAddress:[B

    .line 15
    .line 16
    const/4 v2, 0x6

    .line 17
    filled-new-array {v2}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {p1, v1, p2, v3}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->clientDeviceAddress:[B

    .line 25
    .line 26
    filled-new-array {v2}, [I

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1, v1, p2, v2}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    .line 31
    .line 32
    .line 33
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->clientIpAddress:I

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pPeerClientJoinedEventParams;->vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    .line 39
    .line 40
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-static {p1, v0, p0, v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombination$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;IIII)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
