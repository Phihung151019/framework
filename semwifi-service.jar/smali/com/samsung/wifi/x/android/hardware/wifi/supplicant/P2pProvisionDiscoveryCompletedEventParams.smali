.class public Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;
.super Ljava/lang/Object;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public configMethods:I

.field public generatedPin:Ljava/lang/String;

.field public groupInterfaceName:Ljava/lang/String;

.field public isRequest:Z

.field public p2pDeviceAddress:[B

.field public status:B

.field public vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput-boolean v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->isRequest:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->configMethods:I

    .line 8
    .line 9
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
    invoke-direct {p0, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->describeContents(Ljava/lang/Object;)I

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
    iget-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    invoke-direct {p0, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->describeContents(Ljava/lang/Object;)I

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
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->p2pDeviceAddress:[B

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    iput-boolean v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->isRequest:Z

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    iput-byte v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->status:B

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
    iput v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->configMethods:I

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->generatedPin:Ljava/lang/String;

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
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->groupInterfaceName:Ljava/lang/String;

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
    sget-object v2, Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 188
    .line 189
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object v2

    .line 193
    check-cast v2, [Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    .line 194
    .line 195
    iput-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 196
    .line 197
    sub-int/2addr v4, v1

    .line 198
    if-gt v0, v4, :cond_e

    .line 199
    .line 200
    goto/16 :goto_0

    .line 201
    .line 202
    :cond_e
    new-instance p0, Landroid/os/BadParcelableException;

    .line 203
    .line 204
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    throw p0

    .line 208
    :catchall_0
    move-exception p0

    .line 209
    goto :goto_1

    .line 210
    :cond_f
    :try_start_8
    new-instance p0, Landroid/os/BadParcelableException;

    .line 211
    .line 212
    const-string v2, "Parcelable too small"

    .line 213
    .line 214
    invoke-direct {p0, v2}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 218
    :goto_1
    sub-int/2addr v4, v1

    .line 219
    if-le v0, v4, :cond_10

    .line 220
    .line 221
    new-instance p0, Landroid/os/BadParcelableException;

    .line 222
    .line 223
    invoke-direct {p0, v3}, Landroid/os/BadParcelableException;-><init>(Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    throw p0

    .line 227
    :cond_10
    add-int/2addr v0, v1

    .line 228
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 229
    .line 230
    .line 231
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
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->p2pDeviceAddress:[B

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
    iget-boolean v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->isRequest:Z

    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 22
    .line 23
    .line 24
    iget-byte v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->status:B

    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->configMethods:I

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->generatedPin:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->groupInterfaceName:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/P2pProvisionDiscoveryCompletedEventParams;->vendorData:[Lcom/samsung/wifi/x/android/hardware/wifi/common/OuiKeyedData;

    .line 45
    .line 46
    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    invoke-static {p1, v0, p0, v0, p0}, Lcom/samsung/wifi/x/android/hardware/wifi/IWifiChip$ChipConcurrencyCombination$$ExternalSyntheticOutline0;->m(Landroid/os/Parcel;IIII)V

    .line 54
    .line 55
    .line 56
    return-void
.end method
