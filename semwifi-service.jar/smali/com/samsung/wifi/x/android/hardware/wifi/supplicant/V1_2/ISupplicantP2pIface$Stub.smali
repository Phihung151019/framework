.class public abstract Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;
.super Landroid/os/HwBinder;
.source "qb/104190634 3f0c61d6e0e110a32c521efcc24f383ff81c48febc65f067ab9ac6b5ba8742fd"

# interfaces
.implements Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .locals 0

    .line 1
    return-object p0
.end method

.method public debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/NativeHandle;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public final getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;
    .locals 2

    .line 1
    new-instance p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->pid:I

    .line 11
    .line 12
    const-wide/16 v0, 0x0

    .line 13
    .line 14
    iput-wide v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->ptr:J

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->arch:I

    .line 18
    .line 19
    return-object p0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const/16 v0, 0x20

    .line 4
    .line 5
    new-array v1, v0, [B

    .line 6
    .line 7
    fill-array-data v1, :array_0

    .line 8
    .line 9
    .line 10
    new-array v2, v0, [B

    .line 11
    .line 12
    fill-array-data v2, :array_1

    .line 13
    .line 14
    .line 15
    new-array v3, v0, [B

    .line 16
    .line 17
    fill-array-data v3, :array_2

    .line 18
    .line 19
    .line 20
    new-array v0, v0, [B

    .line 21
    .line 22
    fill-array-data v0, :array_3

    .line 23
    .line 24
    .line 25
    filled-new-array {v1, v2, v3, v0}, [[B

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    .line 35
    .line 36
    return-object p0

    .line 37
    :array_0
    .array-data 1
        0x12t
        0x2t
        0x11t
        0x37t
        0x1ft
        -0x23t
        0x29t
        -0x5t
        0x13t
        0x48t
        0x37t
        0x7t
        0x1dt
        0x43t
        0x2at
        0x30t
        0x2dt
        0x7bt
        0x60t
        -0x17t
        -0x47t
        0x5at
        -0xat
        0x11t
        -0x23t
        -0x73t
        -0x22t
        -0x7at
        -0x43t
        0x1ft
        0x77t
        -0x12t
    .end array-data

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    .line 52
    .line 53
    .line 54
    .line 55
    .line 56
    .line 57
    :array_1
    .array-data 1
        0x49t
        0x7t
        0x41t
        0x3t
        0x38t
        -0x3bt
        -0x18t
        -0x25t
        -0x12t
        -0x3ct
        -0x4bt
        -0x13t
        -0x3et
        0x60t
        -0x72t
        -0x5dt
        0x23t
        -0xbt
        0x56t
        0x19t
        0x45t
        -0x8t
        -0x7ft
        0xat
        -0x8t
        0x18t
        0x10t
        -0x3ct
        0x7bt
        0x1t
        -0x6ft
        -0x7ct
    .end array-data

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    :array_2
    .array-data 1
        0x35t
        -0x46t
        0x7bt
        -0x33t
        -0xft
        -0x71t
        0x24t
        -0x58t
        0x66t
        -0x59t
        -0x1bt
        0x42t
        -0x6bt
        0x48t
        -0x10t
        0x67t
        0x68t
        -0x45t
        0x20t
        -0x5et
        0x57t
        -0x9t
        0x5bt
        0x10t
        -0x5dt
        -0x69t
        -0x3ct
        -0x28t
        0x25t
        -0x11t
        -0x7ct
        0x38t
    .end array-data

    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_3
    .array-data 1
        -0x14t
        0x7ft
        -0x29t
        -0x62t
        -0x30t
        0x2dt
        -0x6t
        -0x7bt
        -0x44t
        0x49t
        -0x6ct
        0x26t
        -0x53t
        -0x52t
        0x3et
        -0x42t
        0x23t
        -0x11t
        0x5t
        0x24t
        -0xdt
        -0x33t
        0x69t
        0x57t
        0x13t
        -0x6dt
        0x24t
        -0x48t
        0x3bt
        0x18t
        -0x36t
        0x4ct
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    const-string v0, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 4
    .line 5
    const-string v1, "android.hidl.base@1.0::IBase"

    .line 6
    .line 7
    const-string v2, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    .line 8
    .line 9
    const-string v3, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 10
    .line 11
    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 20
    .line 21
    .line 22
    return-object p0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    .line 2
    .line 3
    return-object p0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final notifySyspropsChanged()V
    .locals 0

    .line 1
    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p3

    .line 2
    .line 3
    const-string v2, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    .line 4
    .line 5
    const-wide/16 v3, 0x8

    .line 6
    .line 7
    const-string v5, "android.hardware.wifi.supplicant@1.0::ISupplicantIface"

    .line 8
    .line 9
    const-wide/16 v6, 0x6

    .line 10
    .line 11
    const-wide/16 v8, 0x0

    .line 12
    .line 13
    const/4 v10, 0x6

    .line 14
    const-string v11, "android.hardware.wifi.supplicant@1.0::ISupplicantP2pIface"

    .line 15
    .line 16
    const/4 v12, 0x0

    .line 17
    packed-switch p1, :pswitch_data_0

    .line 18
    .line 19
    .line 20
    const-string v2, "android.hidl.base@1.0::IBase"

    .line 21
    .line 22
    sparse-switch p1, :sswitch_data_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :sswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->notifySyspropsChanged()V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :sswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->getDebugInfo()Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :sswitch_2
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->ping()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :sswitch_3
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->setHALInstrumentation()V

    .line 67
    .line 68
    .line 69
    return-void

    .line 70
    :sswitch_4
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->getHashChain()Ljava/util/ArrayList;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Landroid/os/HwBlob;

    .line 81
    .line 82
    const/16 v0, 0x10

    .line 83
    .line 84
    invoke-direct {p1, v0}, Landroid/os/HwBlob;-><init>(I)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    invoke-virtual {p1, v3, v4, v0}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 92
    .line 93
    .line 94
    const-wide/16 v2, 0xc

    .line 95
    .line 96
    invoke-virtual {p1, v2, v3, v12}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 97
    .line 98
    .line 99
    new-instance v2, Landroid/os/HwBlob;

    .line 100
    .line 101
    mul-int/lit8 v3, v0, 0x20

    .line 102
    .line 103
    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 104
    .line 105
    .line 106
    :goto_0
    if-ge v12, v0, :cond_1

    .line 107
    .line 108
    mul-int/lit8 v3, v12, 0x20

    .line 109
    .line 110
    int-to-long v3, v3

    .line 111
    invoke-virtual {p0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    check-cast v5, [B

    .line 116
    .line 117
    if-eqz v5, :cond_0

    .line 118
    .line 119
    array-length v6, v5

    .line 120
    const/16 v7, 0x20

    .line 121
    .line 122
    if-ne v6, v7, :cond_0

    .line 123
    .line 124
    invoke-virtual {v2, v3, v4, v5}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 v12, v12, 0x1

    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 131
    .line 132
    const-string p1, "Array element is not of the expected length"

    .line 133
    .line 134
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    throw p0

    .line 138
    :cond_1
    invoke-virtual {p1, v8, v9, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v1, p1}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :sswitch_5
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p0

    .line 155
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v1, p0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :sswitch_6
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2}, Landroid/os/HwParcel;->readNativeHandle()Landroid/os/NativeHandle;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStringVector()Ljava/util/ArrayList;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-virtual {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    :sswitch_7
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->interfaceChain()Ljava/util/ArrayList;

    .line 190
    .line 191
    .line 192
    move-result-object p0

    .line 193
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, p0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 200
    .line 201
    .line 202
    return-void

    .line 203
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 207
    .line 208
    .line 209
    move-result p1

    .line 210
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;->setMacRandomization(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 211
    .line 212
    .line 213
    move-result-object p0

    .line 214
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 221
    .line 222
    .line 223
    return-void

    .line 224
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 228
    .line 229
    .line 230
    move-result-object v3

    .line 231
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 232
    .line 233
    .line 234
    move-result-object v4

    .line 235
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    new-array v2, v10, [B

    .line 244
    .line 245
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-virtual {v6, v8, v9, v2, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 253
    .line 254
    .line 255
    move-result v8

    .line 256
    move v6, p1

    .line 257
    move-object v7, v2

    .line 258
    move-object v2, p0

    .line 259
    invoke-interface/range {v2 .. v8}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface;->addGroup_1_2(Ljava/util/ArrayList;Ljava/lang/String;ZI[BZ)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-static {v1, v12, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 264
    .line 265
    .line 266
    return-void

    .line 267
    :pswitch_2
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->saveConfig()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 271
    .line 272
    .line 273
    move-result-object p0

    .line 274
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :pswitch_3
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverInitiation(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 292
    .line 293
    .line 294
    move-result-object p0

    .line 295
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 302
    .line 303
    .line 304
    return-void

    .line 305
    :pswitch_4
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reportNfcHandoverResponse(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 313
    .line 314
    .line 315
    move-result-object p0

    .line 316
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 323
    .line 324
    .line 325
    return-void

    .line 326
    :pswitch_5
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$13;

    .line 330
    .line 331
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$13;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 332
    .line 333
    .line 334
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverSelectMessage(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverSelectMessageCallback;)V

    .line 335
    .line 336
    .line 337
    return-void

    .line 338
    :pswitch_6
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    .line 340
    .line 341
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$12;

    .line 342
    .line 343
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$12;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 344
    .line 345
    .line 346
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->createNfcHandoverRequestMessage(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$createNfcHandoverRequestMessageCallback;)V

    .line 347
    .line 348
    .line 349
    return-void

    .line 350
    :pswitch_7
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    new-array p1, v10, [B

    .line 354
    .line 355
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0, v8, v9, p1, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 360
    .line 361
    .line 362
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setWfdDeviceInfo([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 363
    .line 364
    .line 365
    move-result-object p0

    .line 366
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 367
    .line 368
    .line 369
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    :pswitch_8
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 380
    .line 381
    .line 382
    move-result p1

    .line 383
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->enableWfd(Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 384
    .line 385
    .line 386
    move-result-object p0

    .line 387
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 394
    .line 395
    .line 396
    return-void

    .line 397
    :pswitch_9
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object p1

    .line 404
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelWps(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 405
    .line 406
    .line 407
    move-result-object p0

    .line 408
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 412
    .line 413
    .line 414
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 415
    .line 416
    .line 417
    return-void

    .line 418
    :pswitch_a
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    .line 420
    .line 421
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 422
    .line 423
    .line 424
    move-result-object p1

    .line 425
    new-array v3, v10, [B

    .line 426
    .line 427
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 428
    .line 429
    .line 430
    move-result-object v0

    .line 431
    invoke-virtual {v0, v8, v9, v3, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 432
    .line 433
    .line 434
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$11;

    .line 435
    .line 436
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$11;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 437
    .line 438
    .line 439
    invoke-interface {p0, p1, v3, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinDisplay(Ljava/lang/String;[BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$startWpsPinDisplayCallback;)V

    .line 440
    .line 441
    .line 442
    return-void

    .line 443
    :pswitch_b
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p1

    .line 450
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPinKeypad(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 455
    .line 456
    .line 457
    move-result-object p0

    .line 458
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 465
    .line 466
    .line 467
    return-void

    .line 468
    :pswitch_c
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 469
    .line 470
    .line 471
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 472
    .line 473
    .line 474
    move-result-object p1

    .line 475
    new-array v3, v10, [B

    .line 476
    .line 477
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    invoke-virtual {v0, v8, v9, v3, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 482
    .line 483
    .line 484
    invoke-interface {p0, p1, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->startWpsPbc(Ljava/lang/String;[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 485
    .line 486
    .line 487
    move-result-object p0

    .line 488
    invoke-static {v1, v12, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 489
    .line 490
    .line 491
    return-void

    .line 492
    :pswitch_d
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8()B

    .line 496
    .line 497
    .line 498
    move-result p1

    .line 499
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setMiracastMode(B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 500
    .line 501
    .line 502
    move-result-object p0

    .line 503
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 504
    .line 505
    .line 506
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 507
    .line 508
    .line 509
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 510
    .line 511
    .line 512
    return-void

    .line 513
    :pswitch_e
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    .line 517
    .line 518
    .line 519
    move-result-wide v3

    .line 520
    invoke-interface {p0, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelServiceDiscovery(J)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 521
    .line 522
    .line 523
    move-result-object p0

    .line 524
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 525
    .line 526
    .line 527
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 528
    .line 529
    .line 530
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 531
    .line 532
    .line 533
    return-void

    .line 534
    :pswitch_f
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    new-array p1, v10, [B

    .line 538
    .line 539
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 540
    .line 541
    .line 542
    move-result-object v3

    .line 543
    invoke-virtual {v3, v8, v9, p1, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 547
    .line 548
    .line 549
    move-result-object v0

    .line 550
    new-instance v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$10;

    .line 551
    .line 552
    invoke-direct {v3, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$10;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 553
    .line 554
    .line 555
    invoke-interface {p0, p1, v0, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->requestServiceDiscovery([BLjava/util/ArrayList;Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$requestServiceDiscoveryCallback;)V

    .line 556
    .line 557
    .line 558
    return-void

    .line 559
    :pswitch_10
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 560
    .line 561
    .line 562
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flushServices()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 563
    .line 564
    .line 565
    move-result-object p0

    .line 566
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 567
    .line 568
    .line 569
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 573
    .line 574
    .line 575
    return-void

    .line 576
    :pswitch_11
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 580
    .line 581
    .line 582
    move-result p1

    .line 583
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 584
    .line 585
    .line 586
    move-result-object v0

    .line 587
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeUpnpService(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 588
    .line 589
    .line 590
    move-result-object p0

    .line 591
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 595
    .line 596
    .line 597
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 598
    .line 599
    .line 600
    return-void

    .line 601
    :pswitch_12
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 605
    .line 606
    .line 607
    move-result p1

    .line 608
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 609
    .line 610
    .line 611
    move-result-object v0

    .line 612
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addUpnpService(ILjava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 613
    .line 614
    .line 615
    move-result-object p0

    .line 616
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 617
    .line 618
    .line 619
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 623
    .line 624
    .line 625
    return-void

    .line 626
    :pswitch_13
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 630
    .line 631
    .line 632
    move-result-object p1

    .line 633
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeBonjourService(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 634
    .line 635
    .line 636
    move-result-object p0

    .line 637
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 641
    .line 642
    .line 643
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 644
    .line 645
    .line 646
    return-void

    .line 647
    :pswitch_14
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 648
    .line 649
    .line 650
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 651
    .line 652
    .line 653
    move-result-object p1

    .line 654
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 655
    .line 656
    .line 657
    move-result-object v0

    .line 658
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addBonjourService(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 659
    .line 660
    .line 661
    move-result-object p0

    .line 662
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 663
    .line 664
    .line 665
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 669
    .line 670
    .line 671
    return-void

    .line 672
    :pswitch_15
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    .line 674
    .line 675
    new-array p1, v10, [B

    .line 676
    .line 677
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 678
    .line 679
    .line 680
    move-result-object v0

    .line 681
    invoke-virtual {v0, v8, v9, p1, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 682
    .line 683
    .line 684
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$9;

    .line 685
    .line 686
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$9;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 687
    .line 688
    .line 689
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getGroupCapability([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getGroupCapabilityCallback;)V

    .line 690
    .line 691
    .line 692
    return-void

    .line 693
    :pswitch_16
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    .line 695
    .line 696
    new-array p1, v10, [B

    .line 697
    .line 698
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 699
    .line 700
    .line 701
    move-result-object v0

    .line 702
    invoke-virtual {v0, v8, v9, p1, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 703
    .line 704
    .line 705
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$8;

    .line 706
    .line 707
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$8;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 708
    .line 709
    .line 710
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getSsid([BLcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getSsidCallback;)V

    .line 711
    .line 712
    .line 713
    return-void

    .line 714
    :pswitch_17
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    invoke-static {p2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    .line 718
    .line 719
    .line 720
    move-result-object p1

    .line 721
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setDisallowedFrequencies(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 722
    .line 723
    .line 724
    move-result-object p0

    .line 725
    invoke-static {v1, v12, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 726
    .line 727
    .line 728
    return-void

    .line 729
    :pswitch_18
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 730
    .line 731
    .line 732
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 733
    .line 734
    .line 735
    move-result p1

    .line 736
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 737
    .line 738
    .line 739
    move-result v0

    .line 740
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setListenChannel(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 741
    .line 742
    .line 743
    move-result-object p0

    .line 744
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 745
    .line 746
    .line 747
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 748
    .line 749
    .line 750
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 751
    .line 752
    .line 753
    return-void

    .line 754
    :pswitch_19
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    .line 756
    .line 757
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 758
    .line 759
    .line 760
    move-result p1

    .line 761
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 762
    .line 763
    .line 764
    move-result v0

    .line 765
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->configureExtListen(II)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 766
    .line 767
    .line 768
    move-result-object p0

    .line 769
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 770
    .line 771
    .line 772
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 773
    .line 774
    .line 775
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 776
    .line 777
    .line 778
    return-void

    .line 779
    :pswitch_1a
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 783
    .line 784
    .line 785
    move-result p1

    .line 786
    new-array v3, v10, [B

    .line 787
    .line 788
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 789
    .line 790
    .line 791
    move-result-object v0

    .line 792
    invoke-virtual {v0, v8, v9, v3, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 793
    .line 794
    .line 795
    invoke-interface {p0, p1, v3}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reinvoke(I[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 796
    .line 797
    .line 798
    move-result-object p0

    .line 799
    invoke-static {v1, v12, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 800
    .line 801
    .line 802
    return-void

    .line 803
    :pswitch_1b
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 804
    .line 805
    .line 806
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object p1

    .line 810
    new-array v3, v10, [B

    .line 811
    .line 812
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 813
    .line 814
    .line 815
    move-result-object v4

    .line 816
    invoke-virtual {v4, v8, v9, v3, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 817
    .line 818
    .line 819
    new-array v4, v10, [B

    .line 820
    .line 821
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 822
    .line 823
    .line 824
    move-result-object v0

    .line 825
    invoke-virtual {v0, v8, v9, v4, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 826
    .line 827
    .line 828
    invoke-interface {p0, p1, v3, v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->invite(Ljava/lang/String;[B[B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 829
    .line 830
    .line 831
    move-result-object p0

    .line 832
    invoke-static {v1, v12, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicant$Stub$$ExternalSyntheticOutline0;->m(Landroid/os/HwParcel;ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;Landroid/os/HwParcel;)V

    .line 833
    .line 834
    .line 835
    return-void

    .line 836
    :pswitch_1c
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    new-array p1, v10, [B

    .line 840
    .line 841
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 842
    .line 843
    .line 844
    move-result-object v0

    .line 845
    invoke-virtual {v0, v8, v9, p1, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 846
    .line 847
    .line 848
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->reject([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 849
    .line 850
    .line 851
    move-result-object p0

    .line 852
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 853
    .line 854
    .line 855
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 856
    .line 857
    .line 858
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 859
    .line 860
    .line 861
    return-void

    .line 862
    :pswitch_1d
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 863
    .line 864
    .line 865
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 866
    .line 867
    .line 868
    move-result-object p1

    .line 869
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->removeGroup(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 870
    .line 871
    .line 872
    move-result-object p0

    .line 873
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 880
    .line 881
    .line 882
    return-void

    .line 883
    :pswitch_1e
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 884
    .line 885
    .line 886
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 887
    .line 888
    .line 889
    move-result p1

    .line 890
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 891
    .line 892
    .line 893
    move-result v0

    .line 894
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->addGroup(ZI)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 895
    .line 896
    .line 897
    move-result-object p0

    .line 898
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 899
    .line 900
    .line 901
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 905
    .line 906
    .line 907
    return-void

    .line 908
    :pswitch_1f
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 909
    .line 910
    .line 911
    new-array p1, v10, [B

    .line 912
    .line 913
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 914
    .line 915
    .line 916
    move-result-object v3

    .line 917
    invoke-virtual {v3, v8, v9, p1, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 918
    .line 919
    .line 920
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 921
    .line 922
    .line 923
    move-result v0

    .line 924
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->provisionDiscovery([BI)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 925
    .line 926
    .line 927
    move-result-object p0

    .line 928
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 929
    .line 930
    .line 931
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 932
    .line 933
    .line 934
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 935
    .line 936
    .line 937
    return-void

    .line 938
    :pswitch_20
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 939
    .line 940
    .line 941
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->cancelConnect()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 942
    .line 943
    .line 944
    move-result-object p0

    .line 945
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 946
    .line 947
    .line 948
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 949
    .line 950
    .line 951
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 952
    .line 953
    .line 954
    return-void

    .line 955
    :pswitch_21
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 956
    .line 957
    .line 958
    new-array p1, v10, [B

    .line 959
    .line 960
    invoke-virtual {p2, v6, v7}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 961
    .line 962
    .line 963
    move-result-object v3

    .line 964
    invoke-virtual {v3, v8, v9, p1, v10}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 965
    .line 966
    .line 967
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 968
    .line 969
    .line 970
    move-result v3

    .line 971
    move v4, v3

    .line 972
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 973
    .line 974
    .line 975
    move-result-object v3

    .line 976
    move v5, v4

    .line 977
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 978
    .line 979
    .line 980
    move-result v4

    .line 981
    move v6, v5

    .line 982
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 983
    .line 984
    .line 985
    move-result v5

    .line 986
    move v7, v6

    .line 987
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 988
    .line 989
    .line 990
    move-result v6

    .line 991
    move v0, v7

    .line 992
    new-instance v7, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$7;

    .line 993
    .line 994
    invoke-direct {v7, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$7;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 995
    .line 996
    .line 997
    move-object v1, p1

    .line 998
    move v2, v0

    .line 999
    move-object v0, p0

    .line 1000
    invoke-interface/range {v0 .. v7}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->connect([BILjava/lang/String;ZZILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$connectCallback;)V

    .line 1001
    .line 1002
    .line 1003
    return-void

    .line 1004
    :pswitch_22
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1005
    .line 1006
    .line 1007
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->flush()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1008
    .line 1009
    .line 1010
    move-result-object p0

    .line 1011
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1012
    .line 1013
    .line 1014
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1015
    .line 1016
    .line 1017
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1018
    .line 1019
    .line 1020
    return-void

    .line 1021
    :pswitch_23
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1022
    .line 1023
    .line 1024
    invoke-interface {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->stopFind()Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1025
    .line 1026
    .line 1027
    move-result-object p0

    .line 1028
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1029
    .line 1030
    .line 1031
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1032
    .line 1033
    .line 1034
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1035
    .line 1036
    .line 1037
    return-void

    .line 1038
    :pswitch_24
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1039
    .line 1040
    .line 1041
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 1042
    .line 1043
    .line 1044
    move-result p1

    .line 1045
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->find(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1046
    .line 1047
    .line 1048
    move-result-object p0

    .line 1049
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1050
    .line 1051
    .line 1052
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1053
    .line 1054
    .line 1055
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1056
    .line 1057
    .line 1058
    return-void

    .line 1059
    :pswitch_25
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1060
    .line 1061
    .line 1062
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1063
    .line 1064
    .line 1065
    move-result-object p1

    .line 1066
    invoke-virtual {p2}, Landroid/os/HwParcel;->readBool()Z

    .line 1067
    .line 1068
    .line 1069
    move-result v0

    .line 1070
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setPowerSave(Ljava/lang/String;Z)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1071
    .line 1072
    .line 1073
    move-result-object p0

    .line 1074
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1078
    .line 1079
    .line 1080
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1081
    .line 1082
    .line 1083
    return-void

    .line 1084
    :pswitch_26
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1085
    .line 1086
    .line 1087
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1088
    .line 1089
    .line 1090
    move-result-object p1

    .line 1091
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 1092
    .line 1093
    .line 1094
    move-result v0

    .line 1095
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setGroupIdle(Ljava/lang/String;I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1096
    .line 1097
    .line 1098
    move-result-object p0

    .line 1099
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1100
    .line 1101
    .line 1102
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1103
    .line 1104
    .line 1105
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1106
    .line 1107
    .line 1108
    return-void

    .line 1109
    :pswitch_27
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1110
    .line 1111
    .line 1112
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt8Vector()Ljava/util/ArrayList;

    .line 1113
    .line 1114
    .line 1115
    move-result-object p1

    .line 1116
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->setSsidPostfix(Ljava/util/ArrayList;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1117
    .line 1118
    .line 1119
    move-result-object p0

    .line 1120
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1121
    .line 1122
    .line 1123
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1124
    .line 1125
    .line 1126
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1127
    .line 1128
    .line 1129
    return-void

    .line 1130
    :pswitch_28
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1131
    .line 1132
    .line 1133
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$6;

    .line 1134
    .line 1135
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$6;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1136
    .line 1137
    .line 1138
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->getDeviceAddress(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$getDeviceAddressCallback;)V

    .line 1139
    .line 1140
    .line 1141
    return-void

    .line 1142
    :pswitch_29
    invoke-virtual {p2, v11}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1143
    .line 1144
    .line 1145
    invoke-virtual {p2}, Landroid/os/HwParcel;->readStrongBinder()Landroid/os/IHwBinder;

    .line 1146
    .line 1147
    .line 1148
    move-result-object p1

    .line 1149
    invoke-static {p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;->asInterface(Landroid/os/IHwBinder;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;

    .line 1150
    .line 1151
    .line 1152
    move-result-object p1

    .line 1153
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;->registerCallback(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIfaceCallback;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1154
    .line 1155
    .line 1156
    move-result-object p0

    .line 1157
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1158
    .line 1159
    .line 1160
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1161
    .line 1162
    .line 1163
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1164
    .line 1165
    .line 1166
    return-void

    .line 1167
    :pswitch_2a
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1168
    .line 1169
    .line 1170
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt16()S

    .line 1171
    .line 1172
    .line 1173
    move-result p1

    .line 1174
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsConfigMethods(S)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1175
    .line 1176
    .line 1177
    move-result-object p0

    .line 1178
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1179
    .line 1180
    .line 1181
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1182
    .line 1183
    .line 1184
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1185
    .line 1186
    .line 1187
    return-void

    .line 1188
    :pswitch_2b
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1189
    .line 1190
    .line 1191
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1192
    .line 1193
    .line 1194
    move-result-object p1

    .line 1195
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsSerialNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1196
    .line 1197
    .line 1198
    move-result-object p0

    .line 1199
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1200
    .line 1201
    .line 1202
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1203
    .line 1204
    .line 1205
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1206
    .line 1207
    .line 1208
    return-void

    .line 1209
    :pswitch_2c
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1210
    .line 1211
    .line 1212
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1213
    .line 1214
    .line 1215
    move-result-object p1

    .line 1216
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelNumber(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1217
    .line 1218
    .line 1219
    move-result-object p0

    .line 1220
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1221
    .line 1222
    .line 1223
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1224
    .line 1225
    .line 1226
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1227
    .line 1228
    .line 1229
    return-void

    .line 1230
    :pswitch_2d
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1231
    .line 1232
    .line 1233
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1234
    .line 1235
    .line 1236
    move-result-object p1

    .line 1237
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsModelName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1238
    .line 1239
    .line 1240
    move-result-object p0

    .line 1241
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1242
    .line 1243
    .line 1244
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1245
    .line 1246
    .line 1247
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1248
    .line 1249
    .line 1250
    return-void

    .line 1251
    :pswitch_2e
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1252
    .line 1253
    .line 1254
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1255
    .line 1256
    .line 1257
    move-result-object p1

    .line 1258
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsManufacturer(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1259
    .line 1260
    .line 1261
    move-result-object p0

    .line 1262
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1263
    .line 1264
    .line 1265
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1266
    .line 1267
    .line 1268
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1269
    .line 1270
    .line 1271
    return-void

    .line 1272
    :pswitch_2f
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1273
    .line 1274
    .line 1275
    const/16 p1, 0x8

    .line 1276
    .line 1277
    new-array v5, p1, [B

    .line 1278
    .line 1279
    invoke-virtual {p2, v3, v4}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    .line 1280
    .line 1281
    .line 1282
    move-result-object v0

    .line 1283
    invoke-virtual {v0, v8, v9, v5, p1}, Landroid/os/HwBlob;->copyToInt8Array(J[BI)V

    .line 1284
    .line 1285
    .line 1286
    invoke-interface {p0, v5}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceType([B)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1287
    .line 1288
    .line 1289
    move-result-object p0

    .line 1290
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1291
    .line 1292
    .line 1293
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1294
    .line 1295
    .line 1296
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1297
    .line 1298
    .line 1299
    return-void

    .line 1300
    :pswitch_30
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1301
    .line 1302
    .line 1303
    invoke-virtual {p2}, Landroid/os/HwParcel;->readString()Ljava/lang/String;

    .line 1304
    .line 1305
    .line 1306
    move-result-object p1

    .line 1307
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->setWpsDeviceName(Ljava/lang/String;)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1308
    .line 1309
    .line 1310
    move-result-object p0

    .line 1311
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1312
    .line 1313
    .line 1314
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1315
    .line 1316
    .line 1317
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1318
    .line 1319
    .line 1320
    return-void

    .line 1321
    :pswitch_31
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1322
    .line 1323
    .line 1324
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$5;

    .line 1325
    .line 1326
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$5;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1327
    .line 1328
    .line 1329
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->listNetworks(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$listNetworksCallback;)V

    .line 1330
    .line 1331
    .line 1332
    return-void

    .line 1333
    :pswitch_32
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1334
    .line 1335
    .line 1336
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 1337
    .line 1338
    .line 1339
    move-result p1

    .line 1340
    new-instance v0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$4;

    .line 1341
    .line 1342
    invoke-direct {v0, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$4;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1343
    .line 1344
    .line 1345
    invoke-interface {p0, p1, v0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getNetwork(ILcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNetworkCallback;)V

    .line 1346
    .line 1347
    .line 1348
    return-void

    .line 1349
    :pswitch_33
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1350
    .line 1351
    .line 1352
    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    .line 1353
    .line 1354
    .line 1355
    move-result p1

    .line 1356
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->removeNetwork(I)Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;

    .line 1357
    .line 1358
    .line 1359
    move-result-object p0

    .line 1360
    invoke-virtual {v1, v12}, Landroid/os/HwParcel;->writeStatus(I)V

    .line 1361
    .line 1362
    .line 1363
    invoke-virtual {p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/SupplicantStatus;->writeToParcel(Landroid/os/HwParcel;)V

    .line 1364
    .line 1365
    .line 1366
    invoke-virtual {v1}, Landroid/os/HwParcel;->send()V

    .line 1367
    .line 1368
    .line 1369
    return-void

    .line 1370
    :pswitch_34
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1371
    .line 1372
    .line 1373
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$3;

    .line 1374
    .line 1375
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$3;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1376
    .line 1377
    .line 1378
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->addNetwork(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$addNetworkCallback;)V

    .line 1379
    .line 1380
    .line 1381
    return-void

    .line 1382
    :pswitch_35
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1383
    .line 1384
    .line 1385
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$2;

    .line 1386
    .line 1387
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$2;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1388
    .line 1389
    .line 1390
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getType(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getTypeCallback;)V

    .line 1391
    .line 1392
    .line 1393
    return-void

    .line 1394
    :pswitch_36
    invoke-virtual {p2, v5}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    .line 1395
    .line 1396
    .line 1397
    new-instance p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$1;

    .line 1398
    .line 1399
    invoke-direct {p1, p0, v1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub$1;-><init>(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;Landroid/os/HwParcel;)V

    .line 1400
    .line 1401
    .line 1402
    invoke-interface {p0, p1}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface;->getName(Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantIface$getNameCallback;)V

    .line 1403
    .line 1404
    .line 1405
    return-void

    .line 1406
    nop

    .line 1407
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 1408
    .line 1409
    .line 1410
    .line 1411
    .line 1412
    .line 1413
    .line 1414
    .line 1415
    .line 1416
    .line 1417
    .line 1418
    .line 1419
    .line 1420
    .line 1421
    .line 1422
    .line 1423
    .line 1424
    .line 1425
    .line 1426
    .line 1427
    .line 1428
    .line 1429
    .line 1430
    .line 1431
    .line 1432
    .line 1433
    .line 1434
    .line 1435
    .line 1436
    .line 1437
    .line 1438
    .line 1439
    .line 1440
    .line 1441
    .line 1442
    .line 1443
    .line 1444
    .line 1445
    .line 1446
    .line 1447
    .line 1448
    .line 1449
    .line 1450
    .line 1451
    .line 1452
    .line 1453
    .line 1454
    .line 1455
    .line 1456
    .line 1457
    .line 1458
    .line 1459
    .line 1460
    .line 1461
    .line 1462
    .line 1463
    .line 1464
    .line 1465
    .line 1466
    .line 1467
    .line 1468
    .line 1469
    .line 1470
    .line 1471
    .line 1472
    .line 1473
    .line 1474
    .line 1475
    .line 1476
    .line 1477
    .line 1478
    .line 1479
    .line 1480
    .line 1481
    .line 1482
    .line 1483
    .line 1484
    .line 1485
    .line 1486
    .line 1487
    .line 1488
    .line 1489
    .line 1490
    .line 1491
    .line 1492
    .line 1493
    .line 1494
    .line 1495
    .line 1496
    .line 1497
    .line 1498
    .line 1499
    .line 1500
    .line 1501
    .line 1502
    .line 1503
    .line 1504
    .line 1505
    .line 1506
    .line 1507
    .line 1508
    .line 1509
    .line 1510
    .line 1511
    .line 1512
    .line 1513
    .line 1514
    .line 1515
    .line 1516
    .line 1517
    .line 1518
    .line 1519
    .line 1520
    .line 1521
    :sswitch_data_0
    .sparse-switch
        0xf43484e -> :sswitch_7
        0xf444247 -> :sswitch_6
        0xf445343 -> :sswitch_5
        0xf485348 -> :sswitch_4
        0xf494e54 -> :sswitch_3
        0xf504e47 -> :sswitch_2
        0xf524546 -> :sswitch_1
        0xf535953 -> :sswitch_0
    .end sparse-switch
.end method

.method public final ping()V
    .locals 0

    .line 1
    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .locals 1

    .line 1
    const-string v0, "android.hardware.wifi.supplicant@1.2::ISupplicantP2pIface"

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return-object p0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/HwBinder;->registerService(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final setHALInstrumentation()V
    .locals 0

    .line 1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_2/ISupplicantP2pIface$Stub;->interfaceDescriptor()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p0, "@Stub"

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
